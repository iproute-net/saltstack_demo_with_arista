hostname: leaf1

vlans: 
   - 100
   - 200
   - 300
   
proxy:
  proxytype: napalm
  driver: eos
  host: 10.73.1.105
  username: ansible
  password: ansible

pyeapi:
  username: ansible
  password: ansible
  transport: https
  host: 10.73.1.105
