kill `cd /usr/local/var/run/openvswitch && cat ovsdb-server.pid ovs-vswitchd.pid`
aptitude remove openvswitch-common openvswitch-datapath-dkms openvswitch-controller openvswitch-pki openvswitch-switch -y

rm -r /usr/local/etc/openvswitch
rm -r /usr/local/share/openvswitch
rm -r /usr/local/include/openvswitch
rm -r /usr/local/share/openvswitch
rm -r /usr/local/var/run/openvswitch
rm -r /var/lib/openvswitch
rm -r /usr/local/var/lib/openvswitch
rm -r /usr/src/linux-headers-4.4.0-128-generic/include/config/openvswitchrm -r /usr/src/linux-headers-4.4.0-128/net/openvswitch

/sbin/rmmod openvswitch
modprobe -f openvswitch

