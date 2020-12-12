global Data
# closes garage door
cmd = 'sudo python /usr/local/bin/state.py'
Data = {"Garage Door": os.system(cmd)}
