#!/bin/bash -v
[ -f /etc/init.d/functions ] && . /etc/init.d/functions

###修改网卡配置文件名称
function net () {
b0=-1
cat /proc/net/dev |grep ':' | grep -v 'lo' | cut -d: -f1 | sort >> /tmp/net_name.txt
while read line
do
c0=$line
b0=`expr $b0 + 1`
mv /etc/sysconfig/network-scripts/ifcfg-$c0 /etc/sysconfig/network-scripts/ifcfg-eth$b0
##修改网卡模式为static
sed -i 's/dhcp/static/g' /etc/sysconfig/network-scripts/ifcfg-eth$b0
##删除包含IPV6的行
sed -i '/IPV6/d' /etc/sysconfig/network-scripts/ifcfg-eth$b0
##修改网卡DEVICE为eth.
sed -i 's/'$c0'/eth'$b0'/g' /etc/sysconfig/network-scripts/ifcfg-eth$b0
done < /tmp/net_name.txt
}

###重新配置grub配置并更新内核
function grub () {
sed -i 's/crashkernel=auto rhgb quiet/crashkernel=auto net.ifnames=0 biosdevname=0 rhgb quiet/g' /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
}

###修改网卡创建命名规则
function rules () {
b0=-1;
 lshw -c network| egrep "logical name" |awk -F " " '{print $3}' |while read line
do
  a0=$line
  b0=`expr $b0 + 1`
  c0=`lshw -c network | egrep -C 2 $a0|egrep serial | awk -F " " '{print $2}'`
  d0=`lshw -c network |egrep -C 2 $a0|egrep "bus info" | awk -F "@" '{print $2}'`
  echo 'ACTION=="add", SUBSYSTEM=="net", BUS=="pci", ATTR{address}=="'$c0'", ID=="'$d0'", NAME="eth'$b0'"' >>/etc/udev/rules.d/70-persistent-net.rules
  sed -i '$a HWADDR='$c0'' /etc/sysconfig/network-scripts/ifcfg-eth$b0
done
}

yum install wget net-tools lshw -y
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
version=$(awk '{print $(NF-1)}' /etc/centos-release)

#更换内核
cores=$(cat /proc/cpuinfo | grep 'model name'| wc -l)
cname=$( cat /proc/cpuinfo | grep 'model name' | uniq | awk -F : '{print $2}')
tram=$( free -m | awk '/Mem/ {print $2}' )
swap=$( free -m | awk '/Swap/ {print $2}' )

#如果没有/etc/redhat-release，则退出
if [ ! -e '/etc/redhat-release' ]; then
echo "Only Support CentOS6 CentOS7 RHEL6 RHEL7"
exit
fi

#检测版本6还是7
if  [ -n "$(grep ' 7\.' /etc/redhat-release)" ] ;then
CentOS_RHEL_version=7
elif
[ -n "$(grep ' 6\.' /etc/redhat-release)" ]; then
CentOS_RHEL_version=6
fi

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

#清屏
clear

next
echo "Total amount of Mem  : $tram MB"
echo "Total amount of Swap : $swap MB"
echo "CPU model            : $cname"
echo "Number of cores      : $cores"
next

if [ "$CentOS_RHEL_version" -eq 6 ];then
rpm -ivh http://file.asuhu.com/kernel/kernel-firmware-2.6.32-504.3.3.el6.noarch.rpm
rpm -ivh http://file.asuhu.com/kernel/kernel-2.6.32-504.3.3.el6.x86_64.rpm --force
number=$(cat /boot/grub/grub.conf | awk '$1=="title" {print i++ " : " $NF}'|grep '2.6.32-504'|awk '{print $1}')
sed -i "s/^default=.*/default=$number/g" /boot/grub/grub.conf
echo -e "\033[41;36m  5s later will reboot your server  \033[0m";
sleep 5
reboot
else
rpm -ivh http://file.asuhu.com/kernel/kernel-3.10.0-229.1.2.el7.x86_64.rpm --force
grub2-set-default `awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg | grep '(3.10.0-229.1.2.el7.x86_64) 7 (Core)'|awk '{print $1}'`
echo -e "\033[41;36m  5s later will reboot your server  \033[0m";
sleep 5
reboot
fi