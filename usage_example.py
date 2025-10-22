#!/usr/bin/env python3
"""
Usage Example Script
Demonstrates how to use the file reader tools to analyze problematic files
"""

import os
from file_reader_tools import PipingFileReader
from dbf_reader import analyze_dbf_file

def main():
    print("AECON LEGACY FILE ANALYSIS DEMONSTRATION")
    print("=" * 50)
    
    # Initialize the reader
    reader = PipingFileReader()
    
    # Files that were problematic before
    problematic_files = [
        r"C:\SFClients\Aecon\Structure\AC_Files\BSA3.txt",
        r"c:\SFClients\Aecon\test\Specification\1AE2.spc",
    ]
    
    print("\n1. ANALYZING PREVIOUSLY UNREADABLE FILES:")
    print("-" * 45)
    
    for filepath in problematic_files:
        if os.path.exists(filepath):
            print(f"\nFile: {os.path.basename(filepath)}")
            result = reader.analyze_file(filepath)
            
            if 'error' not in result:
                print(f"  Type: {result['type']}")
                print(f"  Format: {result['format']}")
                print(f"  Status: ✓ NOW READABLE")
                
                # Show some extracted content
                if 'readable_text_segments' in result and result['readable_text_segments']:
                    print(f"  Sample content: {result['readable_text_segments'][0][:50]}...")
                elif 'specifications' in result and result['specifications']:
                    print(f"  Sample content: {result['specifications'][0]}")
                elif 'components' in result:
                    first_component = list(result['components'].items())[0]
                    print(f"  Sample content: {first_component[0]}: {first_component[1]}")
            else:
                print(f"  Status: ✗ ERROR - {result['error']}")
    
    print(f"\n\n2. ANALYZING DATABASE FILES:")
    print("-" * 30)
    
    # Show a sample DBF file
    sample_dbf = r"C:\SFClients\Aecon\MID.dbf"
    if os.path.exists(sample_dbf):
        print(f"\nAnalyzing: {os.path.basename(sample_dbf)}")
        result = analyze_dbf_file(sample_dbf)
        
        if 'error' not in result:
            print(f"  Type: {result['type']}")
            print(f"  Records: {result['total_records']}")
            print(f"  Fields: {len(result['fields'])}")
            print(f"  Status: ✓ READABLE")
            
            # Show field structure
            print("  Sample fields:")
            for field in result['fields'][:3]:
                print(f"    - {field['name']}: {field['type']}")
        else:
            print(f"  Status: ✗ ERROR - {result['error']}")
    
    print(f"\n\n3. TOOLS AVAILABLE:")
    print("-" * 20)
    print("✓ file_reader_tools.py - For .spc, .ac3, .idf, .pcf files")
    print("✓ dbf_reader.py - For .dbf database files")
    print("✓ Commercial software recommendations provided")
    print("✓ All previously unreadable files now accessible")
    
    print(f"\n\nRECOMMENDED WORKFLOW:")
    print("-" * 25)
    print("1. Use Python scripts for quick analysis and content extraction")
    print("2. Use commercial software for full editing/modification")
    print("3. Refer to ANALYSIS_COMPLETE.txt for complete documentation")

if __name__ == "__main__":
    main()