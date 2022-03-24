module my_cloud_run_service {
  source = "./modules/google_cloud_run"
  version = "~> 2"

  # Required parametes
  name                  =   var.name
  image                 =   var.image
  location              =   var.location
  
  
  # Optional parameters
  allow_public_access   =   true
  args                  =   []
  cloudsql_connections  =   []
  concurrency           =   80
  cpu_throttling        =   true
#   execution_environment = "gen2"
  cpus                  =   1
  entrypoint            =   []
  env                   =   [{ key = "ENV_VAR_KEY", value = "ENV_VAR_VALUE" }]
  execution_environment =   "gen1"
  ingress               =   "all"
  labels                =   {}
  map_domains           =   []
  max_instances         =   1000
  memory                =   256
  min_instances         =   0
  port                  =   8080
  project               =   null
  revision              =   null
  service_account_email =   null
  timeout               =   60
  volumes               =   [{ path = "/mnt", secret = "my-secret", filenames = { "latest" = "latest" }}]
  vpc_access            =   { connector = null, egress = null }
}