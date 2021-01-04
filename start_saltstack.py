# This scrip starts the salt-master service and the salt-minion service
# For  each device it starts a salt-proxy daemon

import os
import yaml

print ('starting salt master')
os.system('docker exec -it salt service salt-master restart')

print ('starting salt minion')
os.system('docker exec -it salt service salt-minion restart')

f=open('pillar/top.sls', 'r')
vars = yaml.load(f.read())

for item in vars['base']:
    if item != '*':
        print ('starting salt proxy for device ' +  item)
        shell_cmd = 'docker exec -it salt salt-proxy -d --proxyid=' + item
        os.system(shell_cmd)