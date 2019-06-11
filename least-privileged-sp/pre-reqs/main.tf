module "vnet" {
    source = "vnet"

    resource_group_name="ion-vnet"
    resource_group_location="eastus"
    network_name="ion-network"
}

module "acr" {
    source = "acr"

    resource_group_name="ion-acr"
    resource_group_location="eastus"
    acr_name="ionacr"
}

module "ips" {
  source = "public-ips"
  
    resource_group_name="ion-ip"
    resource_group_location="eastus"
    public_ip_name="ion-ip"
}
