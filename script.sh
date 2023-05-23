read -p "Grafana server url: " grafana_server_url
read -p "Grafana Token: " grafana_api_token

./grafana-sync push-folders --apikey=${grafana_api_token} --directory="folders" --url ${grafana_server_url}
./grafana-sync push-dashboards --apikey=${grafana_api_token} --directory="kubernetes_by_kube-prometheus-stack" --url ${grafana_server_url} --folderName="Kubernetes"
./grafana-sync push-dashboards --apikey=${grafana_api_token} --directory="kubernetes" --url ${grafana_server_url} --folderName="Kubernetes_v2"
