def version():
    res = __salt__['napalm.pyeapi_run_commands']('show version')
    return res[0]['version']

def model():
    res = __salt__['napalm.pyeapi_run_commands']('show version')
    return res[0]['modelName']