global Data
# presses remoote on garage door opener. If closed it will open. If open it will close
cmd = 'sudo python /usr/local/bin/toggle.py'
os.system(cmd)
Data = {}
