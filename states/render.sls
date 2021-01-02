{% set hostname = pillar['hostname'] %}
render the output:
  file.managed:
    - name: /srv/salt/eos/{{ hostname }}.cfg
    - source: salt://vlans.j2
    - template: jinja
