#!/bin/bash
KD_SA_NAME="kdashboard-admin"
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kube-system get secret | grep ${KD_SA_NAME} | awk '{print $1}')
