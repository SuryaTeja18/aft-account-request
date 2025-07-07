module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sakalak+afttest3@amazon.com"
    AccountName               = "AFT03"
    ManagedOrganizationalUnit = "Sandbox (ou-jl8v-kolgi4le)" 
    SSOUserEmail              = "sakalak+afttest3@amazon.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "003"
  }

  account_tags = {
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "12345"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }
}
