# Configure the OpenStack Provider
provider "openstack" {
#  The openstack configuration can be provided inside of the .tf file or using env variables.
#  WARNING, early versions of terraform, store the unencrypted credentials in terraform state file.
#    user_name = "OS_USERNAME"
#    tenant_name = "OS_TENANT_NAME"
#    auth_url = "OS_AUTH_URL"
#    password = "OS_PASSWORD"
}


resource "openstack_blockstorage_volume_v1" "volume_1" {
  name = "ac-test-volume"
  description = "second test volume"
  size = 3
}
