# System authorization information
auth --enableshadow --passalgo=sha512

# Use network installation
url --url="http://mirror.datacenter.by/pub/CentOS/7/os/x86_64" --proxy http://192.168.0.1:3142
# Run the Setup Agent on first boot
firstboot --enable
#ignoredisk --only-use=sda
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8

# Network information
#network  --bootproto=dhcp --device=eno16777736 --ipv6=auto --activate
#network  --hostname=localhost.localdomain
# Root password
rootpw toor
# System services
#services --enabled="chronyd"
# System timezone
timezone Europe/Minsk --isUtc
# System bootloader configuration
#bootloader --location=mbr --boot-drive=sda
# Partition clearing information
#clearpart --none --initlabel
# Disk partitioning information
#part pv.20 --fstype="lvmpv" --ondisk=sda --size=19979
#part /boot --fstype="xfs" --ondisk=sda --size=500
#volgroup centos --pesize=4096 pv.20
#logvol /  --fstype="xfs" --grow --maxsize=51200 --size=1024 --name=root --vgname=centos
#logvol swap  --fstype="swap" --size=2048 --name=swap01 --vgname=centos

%packages
@core
mc
git
subversion
telnet
wget
net-tools
yum-utils
%end

#bootloader --append="crashkernel=auto rhgb quiet"

#repo --name="CentOS" --baseurl=http://mirror.example.com/repos/centos/7/os/x86_64 --cost=100

#%packages

#%post
#echo "Setting Yum Repositores"
#cd /etc/yum.repos.d
#perl -npe '/mirrorlist=.*repo=os/ && s/^/#/' -i CentOS-Base.repo
#perl -npe '/mirrorlist=.*repo=updates/ && s/^/#/' -i CentOS-Base.repo
#perl -npe '/mirrorlist=.*repo=extras/ && s/^/#/' -i CentOS-Base.repo
#perl -npe '/mirrorlist=.*repo=centosplus/ && s/^/#/' -i CentOS-Base.repo
#perl -npe '/mirrorlist=.*repo=contrib/ && s/^/#/' -i CentOS-Base.repo
#perl -npe '/#baseurl=.*\/os\// && s/^#//' -i CentOS-Base.repo
#perl -npe '/#baseurl=.*\/updates\// && s/^#//' -i CentOS-Base.repo
#perl -npe '/#baseurl=.*\/extras\// && s/^#//' -i CentOS-Base.repo
#perl -npe '/#baseurl=.*\/centosplus\// && s/^#//' -i CentOS-Base.repo
#perl -npe '/#baseurl=.*\/contrib\// && s/^#//' -i CentOS-Base.repo
#perl -npe '/^baseurl=/ && s/mirror.centos.org/mirror.example.com/' -i CentOS-Base.repo
#perl -npe '/gpgcheck=/ && s/1/0/' -i CentOS-Base.repo
#perl -npe '/enabled=/ && s/0/1/' -i CentOS-Base.repo

#echo "Setting Remote Connection"
#wget -N -P /root/.ssh http://mirror.example/keys/authorized_keys
#restorecon -Rv /root/.ssh
