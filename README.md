This creates an ISO for a simple DHCP/DNS server that can be run in
VMWare Player. The requirements are minimal on the VM. Just make
sure that the network is bridged and that it boots off the generated
ISO. This image doesn't require hardly any memory and doesn't use
a disk image.

The purpose of this image is to provide a DHCP server for a non-Internet
connected LAN that also provides DNS. The WiFi routers that I have all
forward their DNS requests. This one does not. It will automatically
resolve any host that has their name set and runs DHCP.

The WiFi router is expected to be at 192.168.0.1.
This ISO hard codes its IP address as 192.168.0.2.

To build:

    make dhcpserver_defconfig
    make

Useful commands when running:

    dhcpleases
    cat /etc/dnsd.conf

