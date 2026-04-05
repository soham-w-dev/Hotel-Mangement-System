import database
import os

base = 'static/examples/'
files = {
    'cust': 'Customer.csv',
    'job': 'Job.csv',
    'room_type': 'Room_Type.csv',
    'room': 'Room.csv',
    'emp': 'Employee.csv',
    'res': 'Reservation.csv',
    'tnx': 'Transaction.csv',
}

for name, filename in files.items():
    print(f"Importing {name} from {filename}...")
    try:
        database.import_from_csv(name, os.path.join(base, filename))
    except Exception as e:
        print(f"Error importing {name}: {e}")
