hostname: spine1

proxy:
  proxytype: napalm
  driver: eos
  host: 10.73.1.101
  username: ansible
  password: ansible

#proxy:
#  proxytype: netmiko
#  device_type: arista_eos
#  host: spine1
#  ip: 10.73.1.101
#  username: ansible
#  password: ansible

pyeapi:
  username: ansible
  password: ansible
  transport: https
  host: 10.73.1.101
