#!jinja|yaml

{% from "network-debian/defaults.yaml" import rawmap with context %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('network-debian:lookup')) %}

{{ datamap.config.interfaces_file.path }}:
  file:
    - managed
    - source: {{ datamap.config.interfaces_file.template_path|default('salt://network-debian/files/interfaces') }}
    - template: {{ datamap.config.interfaces_file.template_renderer|default('jinja') }}
    - mode: {{ datamap.config.interfaces_file.mode|default('644') }}
    - user: {{ datamap.config.interfaces_file.user|default('root') }}
    - group: {{ datamap.config.interfaces_file.group|default('root') }}

