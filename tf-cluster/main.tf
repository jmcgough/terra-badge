resource "ibm_container_cluster" "jbmtest_cluster" {
  name            = "jbmtest"
  datacenter      = "dal10"
  machine_type    = "free"
  hardware        = "shared"
  public_vlan_id  = "vlan"
  private_vlan_id = "vlan"

  default_pool_size = 1

  labels = {
    "test" = "test-pool"
  }
}
