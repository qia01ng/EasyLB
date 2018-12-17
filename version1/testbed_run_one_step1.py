#-*- coding: utf-8 -*-
import paramiko
import os
import time
import math

def ssh(ip,username,passwd):
    try:
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        ssh.connect(ip,22,username,passwd,timeout=5)
        return ssh
    except :
        print '%s\tError\n'%(ip)


def run_one_step(timeout,run_time=600):
    host1_ip = '192.168.1.185'
    host2_ip = '192.168.1.186'
    username = 'gzq'
    passwd = 'tanklab'


    host1 = ssh(host1_ip,username,passwd)
    host2 = ssh(host2_ip,username,passwd)
    print 'ssh host1 and host2 success'


    #启动iperf
    print 'start iperf server'
    host1.exec_command('sh /home/gzq/iperf3_stop.sh &')
    time.sleep(1)
    host1.exec_command('sh /home/gzq/iperf3_server.sh &')
    print 'start iperf server success'

    print 'start iperf client'
    host2.exec_command('sh /home/gzq/iperf3_stop.sh &')
    time.sleep(1)
    host2.exec_command('sh /home/gzq/iperf3_client.sh &')
    print 'start iperf client success'

    #流表查询结果写入日志
    os.system('ps -ef| grep flowEntry_statistics_record1 |grep -v grep|cut -c 9-15|xargs kill -9')
    print 'start flowEntry_statistics_record1.py'
    os.system('python flowEntry_statistics_record1.py &')
    print 'start flowEntry_statistics_record1.py success'


if __name__ == '__main__':
    #timeout_values = [9000,15000]
    #timeout_values = [50000,100000,1000000]
    #timeout_values = [50,100,200,500,1000,2000,5000,10000,20000,50000,100000,200000,500000,1000000]
    #timeout_values = [128,256,4096,65536,262144,524288]
    #timeout_values = [128]
    timeout_values = [65535]
    system_run_time = 120 
    for index in range(len(timeout_values)):
        timeout_value = timeout_values[index]
    #for i in range(6,21):
	#timeout_value = int(math.pow(2,i))
        print 'set timeout to {}'.format(timeout_value)
        timeout_replace = 'sed -i \'1,150s/^uint64_t timeout =.*/uint64_t timeout = {0};/\' openvswitch-2.7.0/ofproto/ofproto-dpif-xlate.c'
        timeout_replace = timeout_replace.format(timeout_value)
        print timeout_replace
        print 'replace timeout in ofproto-dpif-xlate.c'
        os.system(timeout_replace)
        print 'replace timeout in ofproto-dpif-xlate.c success'

        run_one_step(timeout_value,system_run_time)

