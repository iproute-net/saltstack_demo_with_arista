{% set hostname = pillar['hostname'] %}
pyeapi.config:
  module.run:
    - config_file: salt://{{hostname}}.cfg
