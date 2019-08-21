if [ $HOSTNAME = "master" ]; then
kubeadm init --token=102952.1a7dd4cc8d1f4cc5 --kubernetes-version $(kubeadm version -o short)

sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

kubectl apply -f /opt/weave-kube
kubectl get pod -n kube-systemA
else
while true do
  sleep 10
  curl -v -k https://172.17.0.53:6443
  if [ $? -eq 0 ]; then
    kubeadm join --discovery-token-unsafe-skip-ca-verification --token=102952.1a7dd4cc8d1f4cc5 172.17.0.53:6443
    break
  fi
  done
fi

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
