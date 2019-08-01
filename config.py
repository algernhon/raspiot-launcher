# InfluxDB config
database = {
    'host': 'YOUR-IP',
    'port': 8086,
    'database': 'YOUR-DB-NAME',
    'measurement': 'YOUR-MEASUREMENT',
    'user': 'USER',
    'password': 'PASSWD'
}

# Your device's information
device = {
    'id': '001',
    'location': 'living-room',
    'loop-delay': 30
}

# BME680 config
BME680 = {
    'i2c-address': 0x77,
    'temperature-offset': 0,
    'humidity-offset': 0,
    'heater-temperature': 320,
    'heater-duration': 150,
    'heater-profile': 0
}

# CCS811 config
CCS811 = {
    'i2c-address': 0x5A,
    'drive-mode': 0x02
}

# TSL2561 config
TSL2561 = {
    'i2c-address': 0x39,
    'integration-time': 0x02,
    'gain': 0x00
}

# FAN CONTROL
fan = {
        'enabled': False,
        'pin': 5
}