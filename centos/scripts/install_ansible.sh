yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#sed -i -e "s/^enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
yum -y --enablerepo=epel install ansible pyOpenSSL
yum install -y psacct glusterfs-fuse docker-1.12.6 git bind-utils bridge-utils bash-completion kexec-tools sos
cd /home/vagrant/

date > /etc/vagrant_provisioned_at
git clone https://github.com/openshift/openshift-ansible.git /home/vagrant/openshift-ansible
chown vagrant /home/vagrant/openshift-ansible
sudo mv /etc/ansible/hosts /etc/ansible/hosts.bak
sudo cp /vagrant/ansible-hosts.cfg /etc/ansible/hosts
