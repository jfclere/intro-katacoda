
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

apt upgrade kubeadm

if [ $HOSTNAME = "master" ]; then
kubeadm init --token=102952.1a7dd4cc8d1f4cc5 --kubernetes-version $(kubeadm version -o short)

sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

kubectl apply -f /opt/weave-kube
kubectl get pod -n kube-system

apt install kbtin

MASTERIPPORT=`kubectl cluster-info | grep master | awk ' { print $6 } ' | sed 's.https://..' | ansi2txt`
ssh -o "StrictHostKeyChecking no" node01 kubeadm join --discovery-token-unsafe-skip-ca-verification --token=102952.1a7dd4cc8d1f4cc5 $MASTERIPPORT
fi
