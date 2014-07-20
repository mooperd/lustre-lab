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
    {% if grains['nodename'] == 'mds01.cm.cluster' %}
    - ipaddr: 10.141.100.101
    {% elif grains['nodename'] == 'mds02.cm.cluster' %}
    - ipaddr: 10.141.100.102
    {% endif %}
    - netmask: 255.255.0.0
    - dns:
      - 10.141.255.254
eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    {% if grains['nodename'] == 'mds01.cm.cluster' %}
    - ipaddr: 192.168.100.101
    {% elif grains['nodename'] == 'mds02.cm.cluster' %}
    - ipaddr: 192.168.100.102
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
