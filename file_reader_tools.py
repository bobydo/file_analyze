#!/usr/bin/env python3
"""
Legacy Piping System File Reader
Comprehensive tool for reading various engineering file formats found in Aecon project.

Supported formats:
- .spc files (Specification files - binary format)
- .ac3/.txt files (AutoCAD dimension tables - binary format) 
- .idf files (Isometric Data Files - structured data)
- .pcf files (Piping Component Files - text format)
- .dbf files (dBase database files)
"""

import struct
import os
import sys
from pathlib import Path
import re

class PipingFileReader:
    def __init__(self):
        self.supported_formats = {
            '.spc': 'Specification files (binary format)',
            '.ac3': 'AutoCAD dimension tables (binary format)',
            '.idf': 'Isometric Data Files (structured numeric data)',
            '.pcf': 'Piping Component Files (text format)',
            '.dbf': 'dBase database files',
            '.txt': 'Various text-based formats'
        }

    def detect_file_type(self, filepath):
        """Detect the type of file based on content and extension"""
        path = Path(filepath)
        extension = path.suffix.lower()
        
        # Read first 200 bytes to analyze content
        try:
            with open(filepath, 'rb') as f:
                header = f.read(200)
                
            # Check for binary vs text content
            null_bytes = header.count(b'\x00')
            non_printable = sum(1 for b in header if b < 32 and b not in [9, 10, 13])
            
            is_binary = null_bytes > 5 or non_printable > len(header) * 0.3
            
            return {
                'extension': extension,
                'is_binary': is_binary,
                'size': path.stat().st_size,
                'description': self.supported_formats.get(extension, 'Unknown format')
            }
        except Exception as e:
            return {'error': str(e)}

    def read_spc_file(self, filepath):
        """Read .spc specification files (binary format)"""
        try:
            with open(filepath, 'rb') as f:
                data = f.read()
                
            # SPC files appear to be binary specification data
            # Extract readable text portions
            readable_parts = []
            text_pattern = re.compile(b'[\x20-\x7E]{4,}')  # Printable ASCII sequences
            
            matches = text_pattern.findall(data)
            for match in matches:
                text = match.decode('ascii', errors='ignore').strip()
                if len(text) > 3:
                    readable_parts.append(text)
            
            return {
                'type': 'SPC Specification File',
                'format': 'Binary with embedded text',
                'size': len(data),
                'readable_text_segments': readable_parts[:20],  # First 20 segments
                'recommended_tools': [
                    'Specialized piping software (CAESAR II, AutoPIPE)',
                    'Hex editor for binary analysis',
                    'This Python script for text extraction'
                ]
            }
        except Exception as e:
            return {'error': str(e)}

    def read_ac3_file(self, filepath):
        """Read .ac3/.txt AutoCAD dimension files"""
        try:
            with open(filepath, 'rb') as f:
                data = f.read()
            
            # These appear to be binary AutoCAD dimension tables
            # Look for structured data patterns
            readable_text = []
            
            # Find text patterns that look like dimensions/specifications
            text_pattern = re.compile(b'[\x20-\x7E]{3,}')
            matches = text_pattern.findall(data)
            
            dimensions = []
            specs = []
            
            for match in matches:
                text = match.decode('ascii', errors='ignore').strip()
                if any(unit in text.lower() for unit in ['inch', 'mm', 'dim']):
                    specs.append(text)
                elif re.match(r'[\d\-/]+', text):
                    dimensions.append(text)
                elif len(text) > 3:
                    readable_text.append(text)
            
            return {
                'type': 'AutoCAD Dimension Table',
                'format': 'Binary dimension data',
                'size': len(data),
                'specifications': specs[:10],
                'dimensions': dimensions[:20],
                'other_text': readable_text[:10],
                'recommended_tools': [
                    'AutoCAD or compatible CAD software',
                    'Specialized piping dimension software',
                    'This Python script for data extraction'
                ]
            }
        except Exception as e:
            return {'error': str(e)}

    def read_idf_file(self, filepath):
        """Read .idf Isometric Data Files"""
        try:
            with open(filepath, 'r') as f:
                lines = f.readlines()
            
            # IDF files contain structured numeric data for isometric drawings
            numeric_data = []
            file_references = []
            
            for line in lines:
                line = line.strip()
                if line.startswith('/') or line.endswith('.lib') or '.i*' in line:
                    file_references.append(line)
                elif re.match(r'^[\s\d\-]+$', line):
                    # Line with only numbers and spaces
                    numbers = [int(x) for x in line.split() if x.isdigit() or (x.startswith('-') and x[1:].isdigit())]
                    if numbers:
                        numeric_data.append(numbers)
            
            return {
                'type': 'Isometric Data File',
                'format': 'Structured numeric data with file references',
                'lines': len(lines),
                'file_references': file_references,
                'numeric_data_sample': numeric_data[:5],
                'recommended_tools': [
                    'PDMS (Plant Design Management System)',
                    'Intergraph PDS',
                    'AutoCAD Plant 3D',
                    'This Python script for data parsing'
                ]
            }
        except Exception as e:
            return {'error': str(e)}

    def read_pcf_file(self, filepath):
        """Read .pcf Piping Component Files"""
        try:
            with open(filepath, 'r') as f:
                lines = f.readlines()
            
            # PCF files are text-based piping component specifications
            components = {}
            current_section = None
            
            for line in lines:
                line = line.strip()
                if not line:
                    continue
                    
                if line.startswith('ISOGEN-') or line.startswith('UNITS-') or line.startswith('PIPELINE-'):
                    parts = line.split(None, 1)
                    if len(parts) == 2:
                        components[parts[0]] = parts[1]
                elif line.startswith('    '):
                    # Indented attributes
                    parts = line.strip().split(None, 1)
                    if len(parts) == 2:
                        components[parts[0]] = parts[1]
            
            return {
                'type': 'Piping Component File',
                'format': 'Text-based component specifications',
                'lines': len(lines),
                'components': components,
                'recommended_tools': [
                    'Any text editor',
                    'ISOGEN (Isometric Generation software)',
                    'Specialized piping design software',
                    'This Python script for parsing'
                ]
            }
        except Exception as e:
            return {'error': str(e)}

    def analyze_file(self, filepath):
        """Analyze any supported file and return appropriate reader results"""
        file_info = self.detect_file_type(filepath)
        
        if 'error' in file_info:
            return file_info
            
        path = Path(filepath)
        extension = path.suffix.lower()
        
        if extension == '.spc':
            return self.read_spc_file(filepath)
        elif extension == '.pcf':
            return self.read_pcf_file(filepath)
        elif extension in ['.ac3', '.txt'] and 'BSA' in path.name:
            return self.read_ac3_file(filepath)
        elif extension == '.idf' or ('idf' in path.name.lower()):
            return self.read_idf_file(filepath)
        elif 'pcf' in path.name.lower():
            return self.read_pcf_file(filepath)
        else:
            # Try to determine based on content
            if file_info['is_binary']:
                if 'spec' in path.name.lower():
                    return self.read_spc_file(filepath)
                else:
                    return self.read_ac3_file(filepath)
            else:
                if any(keyword in path.name.lower() for keyword in ['pcf', 'piping']):
                    return self.read_pcf_file(filepath)
                elif 'idf' in path.name.lower():
                    return self.read_idf_file(filepath)
                else:
                    return self.read_idf_file(filepath)

def main():
    """Example usage and testing"""
    reader = PipingFileReader()
    
    # Test files
    test_files = [
        r"C:\SFClients\Aecon\Structure\AC_Files\BSA3.txt",
        r"c:\SFClients\Aecon\test\Specification\1AE2.spc",
        r"C:\SFClients\Aecon\Structure\IDF_Files\0741120170171wx140201_sample.txt",
        r"C:\SFClients\Aecon\Structure\PCF_Files\pcf_sample_1.txt"
    ]
    
    for filepath in test_files:
        if os.path.exists(filepath):
            print(f"\n{'='*60}")
            print(f"ANALYZING: {os.path.basename(filepath)}")
            print(f"{'='*60}")
            
            result = reader.analyze_file(filepath)
            
            if 'error' in result:
                print(f"ERROR: {result['error']}")
                continue
                
            print(f"Type: {result['type']}")
            print(f"Format: {result['format']}")
            
            if 'recommended_tools' in result:
                print(f"\nRecommended Tools:")
                for tool in result['recommended_tools']:
                    print(f"  - {tool}")
            
            # Print specific content based on file type
            for key, value in result.items():
                if key not in ['type', 'format', 'recommended_tools', 'error']:
                    if isinstance(value, list) and value:
                        print(f"\n{key.replace('_', ' ').title()}:")
                        for item in value[:5]:  # Show first 5 items
                            print(f"  {item}")
                        if len(value) > 5:
                            print(f"  ... and {len(value) - 5} more")
                    elif not isinstance(value, (list, dict)):
                        print(f"{key.replace('_', ' ').title()}: {value}")

if __name__ == "__main__":
    main()