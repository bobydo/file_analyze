#!/usr/bin/env python3
"""
DBF Database File Reader
Specialized tool for reading dBase database files (.dbf) commonly used in legacy systems.
"""

import struct
import datetime
from pathlib import Path

class DBFReader:
    def __init__(self):
        self.field_types = {
            b'C': 'Character',
            b'N': 'Numeric', 
            b'D': 'Date',
            b'L': 'Logical',
            b'M': 'Memo',
            b'F': 'Float',
            b'B': 'Binary',
            b'G': 'General',
            b'P': 'Picture',
            b'Y': 'Currency',
            b'T': 'DateTime',
            b'I': 'Integer',
            b'V': 'VariField',
            b'X': 'Variant'
        }

    def read_dbf_header(self, filepath):
        """Read DBF file header to extract metadata"""
        try:
            with open(filepath, 'rb') as f:
                # Read DBF header (32 bytes)
                header = f.read(32)
                
                if len(header) < 32:
                    return {'error': 'File too small to be a valid DBF file'}
                
                # Parse header
                version = header[0]
                year = header[1] + 1900 if header[1] > 0 else None
                month = header[2] if header[2] > 0 else None  
                day = header[3] if header[3] > 0 else None
                
                last_update = None
                if year and month and day:
                    try:
                        last_update = datetime.date(year, month, day)
                    except ValueError:
                        last_update = f"{year}-{month}-{day} (invalid date)"
                
                num_records = struct.unpack('<L', header[4:8])[0]
                header_length = struct.unpack('<H', header[8:10])[0]
                record_length = struct.unpack('<H', header[10:12])[0]
                
                # Read field descriptors
                f.seek(32)
                fields = []
                while True:
                    field_desc = f.read(32)
                    if len(field_desc) < 32 or field_desc[0] == 0x0D:  # End of fields marker
                        break
                        
                    field_name = field_desc[0:11].rstrip(b'\x00').decode('ascii', errors='ignore')
                    field_type = field_desc[11:12]
                    field_length = field_desc[16]
                    field_decimal = field_desc[17]
                    
                    fields.append({
                        'name': field_name,
                        'type': self.field_types.get(field_type, f'Unknown ({field_type})'),
                        'length': field_length,
                        'decimal': field_decimal
                    })
                
                return {
                    'version': version,
                    'last_update': last_update,
                    'num_records': num_records,
                    'header_length': header_length,
                    'record_length': record_length,
                    'fields': fields,
                    'file_size': Path(filepath).stat().st_size
                }
                
        except Exception as e:
            return {'error': str(e)}

    def read_dbf_sample_data(self, filepath, max_records=5):
        """Read a sample of records from the DBF file"""
        header_info = self.read_dbf_header(filepath)
        
        if 'error' in header_info:
            return header_info
            
        try:
            with open(filepath, 'rb') as f:
                # Skip to data section
                f.seek(header_info['header_length'])
                
                records = []
                for i in range(min(max_records, header_info['num_records'])):
                    record_data = f.read(header_info['record_length'])
                    if len(record_data) < header_info['record_length']:
                        break
                        
                    # Skip deleted record marker
                    if record_data[0] == 0x2A:  # '*' deleted marker
                        continue
                        
                    record = {}
                    offset = 1  # Skip deletion flag
                    
                    for field in header_info['fields']:
                        field_data = record_data[offset:offset + field['length']]
                        
                        # Convert based on field type
                        if 'Character' in field['type']:
                            value = field_data.rstrip(b'\x00 ').decode('ascii', errors='ignore')
                        elif 'Numeric' in field['type'] or 'Float' in field['type']:
                            value = field_data.rstrip(b'\x00 ').decode('ascii', errors='ignore')
                            try:
                                value = float(value) if '.' in value else int(value)
                            except ValueError:
                                pass
                        elif 'Date' in field['type']:
                            date_str = field_data.decode('ascii', errors='ignore')
                            if len(date_str) == 8 and date_str.isdigit():
                                try:
                                    value = datetime.date(int(date_str[:4]), int(date_str[4:6]), int(date_str[6:8]))
                                except ValueError:
                                    value = date_str
                            else:
                                value = date_str
                        elif 'Logical' in field['type']:
                            value = field_data[0:1].decode('ascii', errors='ignore')
                            value = value in ['T', 't', 'Y', 'y', '1']
                        else:
                            value = field_data.rstrip(b'\x00 ').decode('ascii', errors='ignore')
                        
                        record[field['name']] = value
                        offset += field['length']
                    
                    records.append(record)
                
                return {
                    'header': header_info,
                    'sample_records': records,
                    'total_records': header_info['num_records']
                }
                
        except Exception as e:
            return {'error': str(e)}

def analyze_dbf_file(filepath):
    """Analyze a DBF file and return comprehensive information"""
    reader = DBFReader()
    result = reader.read_dbf_sample_data(filepath)
    
    if 'error' in result:
        return result
    
    return {
        'type': 'dBase Database File',
        'format': 'Binary database format',
        'version': result['header']['version'],
        'last_update': result['header']['last_update'],
        'total_records': result['total_records'],
        'fields': result['header']['fields'],
        'sample_data': result['sample_records'],
        'file_size': result['header']['file_size'],
        'recommended_tools': [
            'dBase or FoxPro compatible software',
            'Microsoft Access (can import DBF files)',
            'LibreOffice Calc (can open DBF files)',
            'Python with dbfread library',
            'This Python script for analysis'
        ]
    }

def main():
    """Test with sample DBF files"""
    import glob
    
    # Find DBF files in the workspace
    dbf_files = glob.glob(r"C:\SFClients\Aecon\**\*.dbf", recursive=True)
    
    print("DBF FILES FOUND:")
    print("=" * 60)
    for f in dbf_files[:10]:  # Show first 10
        print(f)
    
    if len(dbf_files) > 10:
        print(f"... and {len(dbf_files) - 10} more")
    
    # Analyze a sample file
    if dbf_files:
        print(f"\n\nANALYZING SAMPLE: {dbf_files[0]}")
        print("=" * 60)
        
        result = analyze_dbf_file(dbf_files[0])
        
        if 'error' in result:
            print(f"ERROR: {result['error']}")
        else:
            print(f"Type: {result['type']}")
            print(f"Version: {result['version']}")
            print(f"Last Update: {result['last_update']}")
            print(f"Total Records: {result['total_records']}")
            print(f"File Size: {result['file_size']} bytes")
            
            print(f"\nFields ({len(result['fields'])}):")
            for field in result['fields']:
                print(f"  {field['name']}: {field['type']} ({field['length']})")
            
            if result['sample_data']:
                print(f"\nSample Data:")
                for i, record in enumerate(result['sample_data'][:3]):
                    print(f"  Record {i+1}:")
                    for key, value in record.items():
                        print(f"    {key}: {value}")
                    print()

if __name__ == "__main__":
    main()