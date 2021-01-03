def version():
    if __grains__['os'] == 'eos':
        res = __salt__['napalm.pyeapi_run_commands']('show version')
        return res[0]['version']
    else:
        return 'Not supported on this platform'

def model():
    if __grains__['os'] == 'eos':
        res = __salt__['napalm.pyeapi_run_commands']('show version')
        return res[0]['modelName']
    else:
        return 'Not supported on this platform'