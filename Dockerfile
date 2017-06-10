FROM centos:7.2.1511

RUN  yum -y update && yum -y install gdb gdb-gdbserver qemu qemu-kvm qemu-img gcc make cmake openssl-devel && yum clean all

#This port are exposed to be used, with gdbserver and  qemu-kvm with spice
EXPOSE 7777 5900

ENTRYPOINT ["/bin/bash"]
