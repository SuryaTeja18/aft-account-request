module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sakalak+afttest1@amazon.com"
    AccountName               = "AFT01"
    ManagedOrganizationalUnit = "Sandbox (ou-jl8v-kolgi4le)" 
    SSOUserEmail              = "sakalak+afttest1@amazon.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "001"
  }

  account_tags = {
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}

module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sakalak+afttest2@amazon.com"
    AccountName               = "AFT02"
    ManagedOrganizationalUnit = "Sandbox (ou-jl8v-kolgi4le)" 
    SSOUserEmail              = "sakalak+afttest2@amazon.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "002"
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

  account_customizations_name = "SANDBOX"
}
