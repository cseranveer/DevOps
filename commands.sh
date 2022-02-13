=================================PATHS===============================
static pods location
/etc/kubernetes/manifests
=====================================================================
=======================SYSTEMCTL COMMANDS============================
sudo systemctl status docker //docker status
systemctl stop kubelet 
systemctl start kubelet
systemctl status kubelet
systemctl status docker
systemctl status kubelet
=====================================================================
=========================KUBECTL COMMANDS============================
kubectl get namespaces
kubectl get pods --all-namespaces
kubectl config view
=====================================================================
#Copy config
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=$HOME/.kube/config

#install Calico with Kubernetes API datastore, 50 nodes or less (CLI)
curl https://docs.projectcalico.org/manifests/calico.yaml -O
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml -O

#Dashboard deploy
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.4.0/aio/deploy/recommended.yaml
kubectl proxy
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/.

#Create service account
kubectl  serviceaccount ranveer
===========================DOCKER COMMANDS=============================
#delete docker image
docker images
docker rmi tag
#delete container
docker ps -a
docker rm tag