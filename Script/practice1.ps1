<#
.Synopsis
 just an example.
.Description
 practicing creation of resources with scripting.
.example
 ./storage account.ps1
#>

$practice_rg = az group create --name azresourcegroup1 --location eastus 

az storage account create --name navstoragepractice1 --resource-group azresourcegroup1 --location eastus

$practice_sa = az storage account create --name navstoragepractice1 --resource-group $practice_rg.name 

az storage account show --name navstoragepractice1 --resource-group azresourcegroup1

$practice_rg = az group create --name azresourcegroup1 --location eastus | ConvertFrom-Json

$practice_sa = az storage account create --name navstoragepractice1 --resource-group $practice_rg.name | ConvertFrom-Json

# to delete a resource group 
# az group delete --name $test_rg.name