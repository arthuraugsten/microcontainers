#!/bin/sh

# Instalar K3S com kubectl
curl -sfL https://get.k3s.io | sh -

# Habilitar permissão para usuário ubuntu obter configuração de acesso ao K8S
echo K3S_KUBECONFIG_MODE=\"644\" >> /etc/systemd/system/k3s.service.env

# Restart do serviço k3s para carregar nova config
systemctl restart k3s

su ubuntu