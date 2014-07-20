system:
    network.system:
      - enabled: True
      - gateway: 10.141.255.254
      - gatewaydev: eth0
eth0:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    {% if grains['nodename'] == 'oss01.cm.cluster' %}
    - ipaddr: 10.141.100.111
    {% elif grains['nodename'] == 'oss02.cm.cluster' %}
    - ipaddr: 10.141.100.112
    {% elif grains['nodename'] == 'oss03.cm.cluster' %}
    - ipaddr: 10.141.100.113
    {% elif grains['nodename'] == 'oss04.cm.cluster' %}
    - ipaddr: 10.141.100.114
    {% endif %}
    - netmask: 255.255.0.0
    - dns:
      - 10.141.255.254
eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    {% if grains['nodename'] == 'oss01.cm.cluster' %}
    - ipaddr: 192.168.100.111
    {% elif grains['nodename'] == 'oss02.cm.cluster' %}
    - ipaddr: 192.168.100.112
    {% elif grains['nodename'] == 'oss03.cm.cluster' %}
    - ipaddr: 192.168.100.113
    {% elif grains['nodename'] == 'oss04.cm.cluster' %}
    - ipaddr: 192.168.100.114
    {% endif %}
    - netmask: 255.255.0.0

eth2:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none

network:
  service:
    - running
    - reload: True
