{% set device_directory = grains['id'] %}

make sure the device directory is presents:
    file.directory:
        - name: /tmp/{{ device_directory }}

{% for item in pillar['collect_show_commands'] %}
{% set cli_out = salt.pyeapi.run_commands(item.command) %}
/tmp/{{ device_directory }}/{{item.command}}.json:
  file.managed:
    - contents: |
        {{ cli_out[0]|json}}
{% endfor %}