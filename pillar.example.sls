network-debian:
  interfaces:
    - interface: eth0
      settings:
        - "auto eth0"
        - "iface eth0 inet static"
        - "  address 192.168.3.46"
        - "  netmask 255.255.255.0"
        - "  gateway 192.168.3.1"
    - interaces: eth1
      settings:
        - "auto eth1"
        - "iface eth1 inet static"
        - "  address 10.0.0.1"
        - "  netmask 255.255.255.0"

