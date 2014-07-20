/etc/modprobe.d/lustre.conf:
  file:                   # state declaration
    - managed             # function
    - source: salt://lustre/lustre.conf
    - user: root
    - group: root
    - mode: 644

iptables:
  service:
    - dead
    - enable: False

