iptables:
  service:
    - dead
    - enable: False

/root/.ssh:
  file.recurse:
    - source: salt://lustre/.ssh
    - include_empty: True
    - dir_mode: 0700
    - file_mode: 0700
