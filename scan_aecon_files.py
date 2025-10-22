#!/usr/bin/env python3
"""
Aecon File Scanner and Organizer
Scans C:/SFClients/Aecon and imports files into D:/file_analyze/orig with proper organization
"""

import os
import shutil
import json
from pathlib import Path
from datetime import datetime
from collections import defaultdict

class AeconFileOrganizer:
    def __init__(self, source_path="C:/SFClients/Aecon", target_path="d:/file_analyze/orig"):
        self.source_path = Path(source_path)
        self.target_path = Path(target_path)
        
        # Create main orig directory
        self.target_path.mkdir(exist_ok=True)
        
        # File type categories for organization
        self.file_categories = {
            'specifications': ['.spc', '.ap2', '.ap3'],
            'fabrication': ['.apf'],
            'installation': ['.api'],
            'autocad_files': ['.ac2', '.ac3', '.acx'],
            'database_files': ['.dbf', '.cdx'],
            'layout_files': ['.asl'],
            'plot_files': ['.plt'],
            'image_files': ['.jpg', '.jpeg', '.png', '.tif', '.gif'],
            'text_files': ['.txt'],
            'pdf_files': ['.pdf'],
            'job_info': ['.ap0', '.ap1', '.apb'],
            'other': []
        }
        
        # Statistics tracking
        self.stats = {
            'total_files_found': 0,
            'files_copied': 0,
            'directories_created': 0,
            'file_types': defaultdict(int),
            'errors': []
        }

    def categorize_file(self, file_path):
        """Categorize file based on extension"""
        extension = file_path.suffix.lower()
        
        for category, extensions in self.file_categories.items():
            if category == 'other':
                continue
            if extension in extensions:
                return category
        
        # If no category found, put in 'other'
        return 'other'

    def get_target_directory(self, source_file_path, category):
        """Determine target directory structure"""
        # Get relative path from source root
        relative_path = source_file_path.relative_to(self.source_path)
        
        # Create organized structure: orig/category/original_structure
        target_dir = self.target_path / category / relative_path.parent
        
        return target_dir

    def scan_and_organize(self):
        """Scan source directory and organize files"""
        print(f"Scanning source directory: {self.source_path}")
        print(f"Target directory: {self.target_path}")
        
        if not self.source_path.exists():
            raise FileNotFoundError(f"Source directory {self.source_path} does not exist")
        
        # Walk through all files in source directory
        for root, dirs, files in os.walk(self.source_path):
            for file in files:
                self.stats['total_files_found'] += 1
                source_file = Path(root) / file
                
                try:
                    # Categorize the file
                    category = self.categorize_file(source_file)
                    
                    # Determine target directory
                    target_dir = self.get_target_directory(source_file, category)
                    target_file = target_dir / file
                    
                    # Create target directory if it doesn't exist
                    if not target_dir.exists():
                        target_dir.mkdir(parents=True, exist_ok=True)
                        self.stats['directories_created'] += 1
                    
                    # Copy file if it doesn't already exist
                    if not target_file.exists():
                        shutil.copy2(source_file, target_file)
                        self.stats['files_copied'] += 1
                        print(f"Copied: {source_file.name} -> {category}/{source_file.relative_to(self.source_path)}")
                    else:
                        print(f"Skipped (exists): {source_file.name}")
                    
                    # Update file type statistics
                    self.stats['file_types'][source_file.suffix.lower()] += 1
                    
                except Exception as e:
                    error_msg = f"Error processing {source_file}: {str(e)}"
                    self.stats['errors'].append(error_msg)
                    print(f"ERROR: {error_msg}")

    def create_inventory(self):
        """Create inventory files for each category"""
        inventory_dir = self.target_path / "inventory"
        inventory_dir.mkdir(exist_ok=True)
        
        # Overall inventory
        overall_inventory = {
            "scan_timestamp": datetime.now().isoformat(),
            "source_directory": str(self.source_path),
            "target_directory": str(self.target_path),
            "statistics": dict(self.stats),
            "categories": {}
        }
        
        # Create inventory for each category
        for category in self.file_categories.keys():
            category_dir = self.target_path / category
            if category_dir.exists():
                category_files = []
                
                for file_path in category_dir.rglob('*'):
                    if file_path.is_file():
                        category_files.append({
                            "name": file_path.name,
                            "path": str(file_path.relative_to(self.target_path)),
                            "size": file_path.stat().st_size,
                            "modified": datetime.fromtimestamp(file_path.stat().st_mtime).isoformat(),
                            "extension": file_path.suffix.lower()
                        })
                
                overall_inventory["categories"][category] = {
                    "file_count": len(category_files),
                    "files": category_files
                }
                
                # Save category-specific inventory
                category_inventory_file = inventory_dir / f"{category}_inventory.json"
                with open(category_inventory_file, 'w') as f:
                    json.dump({
                        "category": category,
                        "file_count": len(category_files),
                        "files": category_files
                    }, f, indent=2)
        
        # Save overall inventory
        overall_inventory_file = inventory_dir / "overall_inventory.json"
        with open(overall_inventory_file, 'w') as f:
            json.dump(overall_inventory, f, indent=2)
        
        return overall_inventory_file

    def print_summary(self):
        """Print summary of the organization process"""
        print(f"\n{'='*60}")
        print("AECON FILE ORGANIZATION SUMMARY")
        print(f"{'='*60}")
        print(f"Total files found: {self.stats['total_files_found']}")
        print(f"Files copied: {self.stats['files_copied']}")
        print(f"Directories created: {self.stats['directories_created']}")
        print(f"Errors: {len(self.stats['errors'])}")
        
        print(f"\nFile types found:")
        for ext, count in sorted(self.stats['file_types'].items()):
            print(f"  {ext}: {count} files")
        
        print(f"\nOrganized categories:")
        for category in self.file_categories.keys():
            category_dir = self.target_path / category
            if category_dir.exists():
                file_count = len(list(category_dir.rglob('*'))) - len(list(category_dir.rglob('*/')))
                print(f"  {category}: {file_count} files")
        
        if self.stats['errors']:
            print(f"\nErrors encountered:")
            for error in self.stats['errors'][:5]:  # Show first 5 errors
                print(f"  - {error}")
            if len(self.stats['errors']) > 5:
                print(f"  ... and {len(self.stats['errors']) - 5} more errors")

def main():
    """Main execution function"""
    organizer = AeconFileOrganizer()
    
    try:
        # Scan and organize files
        organizer.scan_and_organize()
        
        # Create inventory
        inventory_file = organizer.create_inventory()
        print(f"\nInventory created: {inventory_file}")
        
        # Print summary
        organizer.print_summary()
        
        return organizer.stats
        
    except Exception as e:
        print(f"Fatal error: {e}")
        return None

if __name__ == "__main__":
    main()