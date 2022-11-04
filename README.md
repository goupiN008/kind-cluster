# Kubernetes cluster via Kind

## prerequisite
- kind
- kubectl
  
## how to run cluster
```
./start.sh
```
If you need to run kubernetes cluster on remote server not your localhost, uncomment networking and insert server ip for you can connect kubernetes cluster from your local with server ip
```
networking:
  apiServerAddress: {your_ip_address}
```