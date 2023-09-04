# Terraform AWS IAM MFA Enforcement

This Terraform project enforces multi-factor authentication (MFA) for IAM users in an AWS account.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- AWS CLI with appropriate credentials configured

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/terraform-iam-mfa-enforcement.git
   cd terraform-iam-mfa-enforcement
2. Initialize your Terraform workspace:
    terraform init

3. Review and customize the configuration in main.tf and if needed.
    terraform apply
4. Apply the configuration to enforce MFA for IAM users
    terraform destroy

Configuration

    main.tf: Contains the main Terraform configuration for enforcing MFA.
    provider.tf: Specifies the AWS provider and region.


In this `README.md` file:

- Replace `Terraform AWS IAM MFA Enforcement` with an appropriate title for your project.
- Customize the usage instructions based on your project's needs and the specific steps users should follow.
- Fill in the `Author` section with your name and contact information.
- Update the `License` section as needed to specify the license for your project.

This `README.md` file will provide essential information for users and collaborators on how to use and understand your Terraform project.
