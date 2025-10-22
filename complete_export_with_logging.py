#!/usr/bin/env python3
"""
Complete File Export with Binary/Database Logging
Re-exports all file types from by_extension to output with preserved structure
and creates binary.log listing all binary and database files
"""

import json
import datetime
import logging
from pathlib import Path
from dbfread import DBF
from file_reader_tools import PipingFileReader
import decimal

# Setup logging for binary files
def setup_binary_logging():
    """Setup logging for binary and database files"""
    log_file = Path("d:/file_analyze/output/binary.log")
    
    # Create custom logger
    logger = logging.getLogger('binary_files')
    logger.setLevel(logging.INFO)
    
    # Clear any existing handlers
    logger.handlers.clear()
    
    # Create file handler
    file_handler = logging.FileHandler(log_file, mode='w', encoding='utf-8')
    file_handler.setLevel(logging.INFO)
    
    # Create formatter
    formatter = logging.Formatter('%(asctime)s - %(message)s', datefmt='%Y-%m-%d %H:%M:%S')
    file_handler.setFormatter(formatter)
    
    # Add handler to logger
    logger.addHandler(file_handler)
    
    return logger

class CompleteFileExporter:
    def __init__(self, source_path="d:/file_analyze/by_extension", output_path="d:/file_analyze/output"):
        self.source_path = Path(source_path)
        self.output_path = Path(output_path)
        
        # Initialize readers
        self.piping_reader = PipingFileReader()
        
        # Setup binary logging
        self.binary_logger = setup_binary_logging()
        
        # Define all file types to export
        self.file_types = {
            # Binary and Database files (will be logged)
            '.dbf': {'type': 'database', 'is_binary': True},
            '.cdx': {'type': 'database_index', 'is_binary': True}, 
            '.ac2': {'type': 'autocad_binary', 'is_binary': True},
            '.ac3': {'type': 'autocad_binary', 'is_binary': True},
            '.acx': {'type': 'autocad_extension', 'is_binary': True},
            '.spc': {'type': 'specification_binary', 'is_binary': True},
            '.pcf': {'type': 'piping_component', 'is_binary': True},
            '.idf': {'type': 'isometric_data', 'is_binary': True},
            '.apf': {'type': 'fabrication_binary', 'is_binary': True},
            '.api': {'type': 'installation_binary', 'is_binary': True},
            '.ap0': {'type': 'job_info_binary', 'is_binary': True},
            '.ap1': {'type': 'job_info_binary', 'is_binary': True},
            '.ap2': {'type': 'specification_binary', 'is_binary': True},
            '.ap3': {'type': 'specification_binary', 'is_binary': True},
            '.apb': {'type': 'job_info_binary', 'is_binary': True},
            '.asl': {'type': 'layout_binary', 'is_binary': True},
            '.plt': {'type': 'plot_binary', 'is_binary': True},
            '.pmp': {'type': 'project_management', 'is_binary': True},
            '.pyc': {'type': 'compiled_python', 'is_binary': True},
            '.exe': {'type': 'executable', 'is_binary': True},
            '.db': {'type': 'database_misc', 'is_binary': True},
            
            # Text-based files (not logged as binary)
            '.err': {'type': 'error_log', 'is_binary': False},
            '.txt': {'type': 'text_file', 'is_binary': False},
            '.py': {'type': 'python_script', 'is_binary': False},
            '.md': {'type': 'markdown', 'is_binary': False},
            '.cfg': {'type': 'configuration', 'is_binary': False},
            '.ps1': {'type': 'powershell_script', 'is_binary': False},
            '.bat': {'type': 'batch_script', 'is_binary': False},
            
            # Media files (binary but different category)
            '.jpg': {'type': 'image_jpeg', 'is_binary': True},
            '.jpeg': {'type': 'image_jpeg', 'is_binary': True},
            '.png': {'type': 'image_png', 'is_binary': True},
            '.gif': {'type': 'image_gif', 'is_binary': True},
            '.tif': {'type': 'image_tiff', 'is_binary': True},
            '.pdf': {'type': 'pdf_document', 'is_binary': True},
            
            # Archive and other files
            '.zip': {'type': 'archive', 'is_binary': True},
            '.msg': {'type': 'email_message', 'is_binary': True},
            '.pem': {'type': 'certificate', 'is_binary': False},
            '.typed': {'type': 'type_stub', 'is_binary': False}
        }
        
        # Statistics
        self.stats = {
            'total_files_found': 0,
            'files_exported': 0,
            'folders_created': 0,
            'binary_files_logged': 0,
            'export_errors': [],
            'file_types_processed': {}
        }

    def safe_json_convert(self, obj):
        """Convert problematic objects to JSON-safe formats"""
        if isinstance(obj, (datetime.date, datetime.datetime)):
            return obj.isoformat() if obj else None
        elif isinstance(obj, decimal.Decimal):
            return float(obj)
        elif isinstance(obj, bytes):
            return obj.decode('utf-8', errors='ignore')
        elif obj is None:
            return None
        else:
            return obj

    def log_binary_file(self, file_path, file_type_info):
        """Log binary and database files to binary.log"""
        try:
            file_stats = file_path.stat()
            log_entry = (
                f"BINARY FILE: {file_path.name} | "
                f"Type: {file_type_info['type']} | "
                f"Size: {file_stats.st_size:,} bytes | "
                f"Path: {file_path.relative_to(self.source_path)} | "
                f"Modified: {datetime.datetime.fromtimestamp(file_stats.st_mtime).strftime('%Y-%m-%d %H:%M:%S')}"
            )
            self.binary_logger.info(log_entry)
            self.stats['binary_files_logged'] += 1
        except Exception as e:
            self.binary_logger.error(f"Error logging {file_path}: {e}")

    def create_file_export(self, file_path, file_type_info):
        """Create JSON export for a file"""
        try:
            export_data = {
                "file_metadata": {
                    "original_path": str(file_path),
                    "filename": file_path.name,
                    "size_bytes": file_path.stat().st_size,
                    "extension": file_path.suffix.lower(),
                    "file_type": file_type_info['type'],
                    "is_binary": file_type_info['is_binary'],
                    "last_modified": datetime.datetime.fromtimestamp(file_path.stat().st_mtime).isoformat(),
                    "export_timestamp": datetime.datetime.now().isoformat()
                },
                "analysis": {},
                "content_preview": {},
                "error": None
            }
            
            # Perform specific analysis based on file type
            if file_path.suffix.lower() == '.dbf':
                # DBF files - use dbfread
                try:
                    table = DBF(str(file_path), encoding='utf-8', ignore_missing_memofile=True)
                    
                    # Get sample records
                    sample_records = []
                    for i, record in enumerate(table):
                        if i >= 3:  # Limit to first 3 records
                            break
                        safe_record = {}
                        for key, value in record.items():
                            safe_record[key] = self.safe_json_convert(value)
                        sample_records.append(safe_record)
                    
                    export_data["analysis"] = {
                        "record_count": len(table),
                        "field_count": len(table.fields),
                        "field_names": table.field_names,
                        "sample_records": sample_records
                    }
                except Exception as e:
                    export_data["error"] = f"DBF analysis error: {str(e)}"
            
            elif file_path.suffix.lower() in ['.spc', '.ac3', '.idf', '.pcf']:
                # Engineering files - use piping reader
                try:
                    analysis = self.piping_reader.analyze_file(str(file_path))
                    export_data["analysis"] = analysis
                except Exception as e:
                    export_data["error"] = f"Engineering analysis error: {str(e)}"
            
            elif file_path.suffix.lower() in ['.txt', '.err', '.py', '.md', '.cfg', '.ps1', '.bat']:
                # Text files - read content preview
                try:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content_preview = f.read(1024)  # First 1KB
                    export_data["content_preview"] = {
                        "text_content": content_preview,
                        "preview_length": len(content_preview),
                        "encoding": "utf-8"
                    }
                except Exception as e:
                    export_data["error"] = f"Text preview error: {str(e)}"
            
            # Add binary preview for binary files
            if file_type_info['is_binary'] and file_path.suffix.lower() not in ['.dbf']:
                try:
                    with open(file_path, 'rb') as f:
                        binary_data = f.read(256)  # First 256 bytes
                    
                    hex_preview = []
                    for i in range(0, len(binary_data), 16):
                        chunk = binary_data[i:i+16]
                        hex_part = ' '.join(f'{b:02x}' for b in chunk)
                        ascii_part = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in chunk)
                        hex_preview.append({
                            "offset": f"{i:08x}",
                            "hex": hex_part,
                            "ascii": ascii_part
                        })
                    
                    export_data["content_preview"] = {
                        "binary_preview": hex_preview,
                        "preview_size": len(binary_data)
                    }
                except Exception as e:
                    export_data["error"] = f"Binary preview error: {str(e)}"
            
            return export_data
            
        except Exception as e:
            return {
                "file_metadata": {
                    "original_path": str(file_path),
                    "filename": file_path.name,
                    "export_timestamp": datetime.datetime.now().isoformat()
                },
                "error": f"Export creation error: {str(e)}"
            }

    def export_all_files(self):
        """Export all files from by_extension to output"""
        print(f"=== Complete File Export with Binary Logging ===")
        print(f"Source: {self.source_path}")
        print(f"Output: {self.output_path}")
        print(f"Binary log: {self.output_path}/binary.log")
        print()
        
        # Create output directory
        self.output_path.mkdir(exist_ok=True)
        
        # Log header
        self.binary_logger.info("=== BINARY AND DATABASE FILES LOG ===")
        self.binary_logger.info("Generated by Complete File Export Script")
        self.binary_logger.info("="*60)
        
        # Process each extension folder
        for ext, file_type_info in self.file_types.items():
            folder_name = f"{ext.lstrip('.')}_files"
            source_folder = self.source_path / folder_name
            
            if not source_folder.exists():
                continue
                
            print(f"Processing {folder_name}/ ({file_type_info['type']})...")
            
            # Create corresponding output folder
            output_folder = self.output_path / folder_name
            output_folder.mkdir(exist_ok=True)
            self.stats['folders_created'] += 1
            
            # Find all files with this extension
            files_found = list(source_folder.rglob(f"*{ext}"))
            self.stats['total_files_found'] += len(files_found)
            
            if ext not in self.stats['file_types_processed']:
                self.stats['file_types_processed'][ext] = 0
            
            # Process each file
            for file_path in files_found:
                try:
                    # Log binary and database files
                    if file_type_info['is_binary']:
                        self.log_binary_file(file_path, file_type_info)
                    
                    # Get relative path from source folder
                    rel_path = file_path.relative_to(source_folder)
                    
                    # Create JSON export
                    export_data = self.create_file_export(file_path, file_type_info)
                    
                    # Create output file path
                    json_rel_path = rel_path.with_suffix('.json')
                    json_output_path = output_folder / json_rel_path
                    
                    # Create output directory structure
                    json_output_path.parent.mkdir(parents=True, exist_ok=True)
                    
                    # Save JSON export
                    with open(json_output_path, 'w', encoding='utf-8') as f:
                        json.dump(export_data, f, indent=2, ensure_ascii=False)
                    
                    self.stats['files_exported'] += 1
                    self.stats['file_types_processed'][ext] += 1
                    
                except Exception as e:
                    error_msg = f"Error exporting {file_path}: {str(e)}"
                    self.stats['export_errors'].append(error_msg)
                    print(f"  ERROR: {error_msg}")
            
            exported_count = self.stats['file_types_processed'][ext]
            print(f"  Exported {exported_count} files from {folder_name}/")
        
        # Log footer
        self.binary_logger.info("="*60)
        self.binary_logger.info(f"Total binary/database files logged: {self.stats['binary_files_logged']}")
        self.binary_logger.info(f"Export completed: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        
        # Close logger
        for handler in self.binary_logger.handlers:
            handler.close()
        
        # Create export summary
        self.create_export_summary()
        
        # Print final summary
        self.print_export_summary()

    def create_export_summary(self):
        """Create comprehensive export summary"""
        summary = {
            "export_info": {
                "timestamp": datetime.datetime.now().isoformat(),
                "source_directory": str(self.source_path),
                "output_directory": str(self.output_path),
                "binary_log_file": str(self.output_path / "binary.log"),
                "export_type": "complete_file_export_with_binary_logging"
            },
            "statistics": {
                "total_files_found": self.stats['total_files_found'],
                "files_exported": self.stats['files_exported'],
                "folders_created": self.stats['folders_created'],
                "binary_files_logged": self.stats['binary_files_logged'],
                "export_errors": len(self.stats['export_errors']),
                "file_types_processed": self.stats['file_types_processed']
            },
            "file_type_mapping": {ext: info['type'] for ext, info in self.file_types.items()},
            "binary_file_types": [ext for ext, info in self.file_types.items() if info['is_binary']],
            "errors": self.stats['export_errors'][:10]  # First 10 errors
        }
        
        summary_file = self.output_path / "complete_export_summary.json"
        with open(summary_file, 'w', encoding='utf-8') as f:
            json.dump(summary, f, indent=2, ensure_ascii=False)
        
        return summary_file

    def print_export_summary(self):
        """Print final export summary"""
        print(f"\n{'='*70}")
        print("COMPLETE FILE EXPORT WITH BINARY LOGGING - FINISHED")
        print(f"{'='*70}")
        print(f"Files found: {self.stats['total_files_found']}")
        print(f"Files exported: {self.stats['files_exported']}")
        print(f"Folders created: {self.stats['folders_created']}")
        print(f"Binary files logged: {self.stats['binary_files_logged']}")
        print(f"Errors: {len(self.stats['export_errors'])}")
        
        print(f"\nFile types processed:")
        for ext, count in sorted(self.stats['file_types_processed'].items(), key=lambda x: x[1], reverse=True)[:15]:
            file_type = self.file_types.get(ext, {}).get('type', 'unknown')
            binary_marker = " [BINARY]" if self.file_types.get(ext, {}).get('is_binary', False) else ""
            print(f"  {ext}: {count} files ({file_type}){binary_marker}")
        
        print(f"\nOutput locations:")
        print(f"  JSON exports: {self.output_path}/")
        print(f"  Binary file log: {self.output_path}/binary.log")
        print(f"  Summary: {self.output_path}/complete_export_summary.json")

def main():
    """Main execution function"""
    exporter = CompleteFileExporter()
    exporter.export_all_files()
    return exporter.stats

if __name__ == "__main__":
    main()