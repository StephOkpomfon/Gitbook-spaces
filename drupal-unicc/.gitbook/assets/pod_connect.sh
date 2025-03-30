#!/bin/bash
# A bash script to connect to UNICC pods
PS3="Select environment: "
set -e
environments=("UNHCR.org production" "UNHCR.org dev" "UNHCR.org staging" "UNHCR.org training (Drupalandia)" "UNHCR Handbooks multisite production" "UNHCR handbooks multisite test" "webform production" "CCCM Production" "CCCM Test")
unhcrprod="configs/user-access-unhcr-mvp"
unhcrdev="configs/user-access-unhcr-mvp-dev"
unhcrtest="configs/config-unhcr-mvp-test"
unhcrtraining="configs/user-access-unhcr-mvp-training"
unhcrmsprod="configs/unhcr-access-unhcr-drupalms"
unhcrms="configs/unhcr-access-unhcr-drupalms-test"
webformprod="configs/unhcr-access-unhcr-webforms"
cccmprod="configs/user-access-unhcr-cccm-dp"
cccmtest="configs/user-access-unhcr-cccm-dp-test"

unhcrprodnode="unhcr-mvp"
unhcrdevnode="unhcr-mvp-dev"
webformprodnode="unhcr-webforms"
unhcrtestnode="unhcr-mvp-test"
unhcrmsnode="unhcr-drupalms-test"
unhcrtrainingnode="unhcr-mvp-training"
unhcrmsprodnode="unhcr-drupalms"
cccmprodnode="unhcr-cccm-dp"
cccmtestnode="unhcr-cccm-dp-test"


list_pods() {
  local config="$1"
  local node="$2"
  kubectl --kubeconfig "$config" -n "$node" get pods
}

connect_to_pod(){
  local config="$1"
  local node="$2"
  read -p "Enter web pod to connect to: " pod
  kubectl --kubeconfig "$config" -n "$2" exec --stdin --tty "$pod" -- /bin/bash
}
COLUMNS=12
while true; do
  select env in "${environments[@]}" Quit
  do
      case $REPLY in
          1) list_pods "$unhcrprod" "$unhcrprodnode"
             connect_to_pod "$unhcrprod" "$unhcrprodnode"
             break;;
          2) list_pods "$unhcrdev" "$unhcrdevnode"
             connect_to_pod "$unhcrdev" "$unhcrdevnode"
             break;;
          3) list_pods "$unhcrtest" "$unhcrtestnode"
             connect_to_pod "$unhcrtest" "$unhcrtestnode"
             break;;
          4) list_pods "$unhcrtraining" "$unhcrtrainingnode"
             connect_to_pod "$unhcrtraining" "$unhcrtrainingnode"
             break;; 
          5) list_pods "$unhcrmsprod" "$unhcrmsprodnode"
             connect_to_pod "$unhcrmsprod" "$unhcrmsprodnode"
             break;;
          6) list_pods "$unhcrms" "$unhcrmsnode"
             connect_to_pod "$unhcrms" "$unhcrmsnode"
             break;;
          7) list_pods "$webformprod" "$webformprodnode"
             connect_to_pod "$webformprod" "$webformprodnode"
             break;;
          8) list_pods "$cccmprod" "$cccmprodnode"
             connect_to_pod "$cccmprod" "$cccmprodnode"
             break;;
          9) list_pods "$cccmtest" "$cccmtestnode"
             connect_to_pod "$cccmtest" "$cccmtestnode"
             break;;
          $((${#environments[@]}+1))) echo "Exited."; break 2;;
          *) echo "unknow choice $env";;
      esac
  done
done
