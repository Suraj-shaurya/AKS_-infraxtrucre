module "rg" {
    source = "../modules/rg_aks"
    rg-aks = var.rg-aks
  
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../modules/aks"
    aks_clusters = var.aks_clusters
  
}