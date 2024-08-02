# Create Resource Group
az group create -n tamopstfstates -l westus2
 
# Create Storage Account
az storage account create -n gitops01skopos -g tamopstfstates -l westus2 --sku Standard_LRS
 
# Create Storage Account Container
az storage container create -n tfstatedevops --account-name gitops01skopos

# Create Service Principal 
az ad sp create-for-rbac --name gitops02skopos

