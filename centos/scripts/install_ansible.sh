yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sed -i -e "s/^enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
yum -y --enablerepo=epel install ansible pyOpenSSL
yum install -y psacct glusterfs-fuse docker-1.12.6 git bind-utils bridge-utils bash-completion kexec-tools sos
cd ~
# git clone https://github.com/openshift/openshift-ansible.git
