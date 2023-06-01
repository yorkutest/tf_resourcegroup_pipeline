# Sample Pipeline
This is a template repository for creation of terraform pipelines to deploy resources to Azure. 

## Repository Creation
To create your own repository from this, execute the following steps:
  * Go to Github, navigate to your organization and click on "New Repository"
  * Under "Repository template", select this repository (__TODO__: Figure out the final resting place for this and plug that in here.)
  * Under "Owner", choose your organization.
  * Give your repository a name. The name should be of the form <technology_used>_\<function>_pipeline. eg: <i>tf_resourcegroup_pipeline</i>
  * Add a simple description to help people understand what this repository is about
  * Ensure that the visibility is Private

### Configuration
* __TODO__: Add Variables and Secrets required
* __TODO__: Add Environments
* 

### Templates
__TODO__: Add Explanation of Templates

## Development

### Pre-requisites
* Install [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* Install [tflint](https://github.com/terraform-linters/tflint)
  * Create a file called .tflint.hcl and add the following code to it
  ````yaml
  plugin "azurerm" {
    enabled = true
    version = "0.23.0"
    source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
  }
  ````
  * Run the following command:
  ````bash
  tflint --init
  ````

### Contributing to repository
* Clone the repository on your machine
* Create your own branch e.g: _feature/myfeature_
* Switch to your branch
* Make your changes
* Run the following command in the repository base directory:
  ````bash
    terraform fmt --check
  ````
  * If the results shows files that need to be fixed, run the following command:
    ````bash
    terraform fmt
    ````
* Next, lint locally (to avoid going back and forth) with the following command:
  ````bash
  tflint
  ````
* Once you are happy with the code, commit and push the changes to github. 
* This will trigger a github action called "Terraform Unit Tests" which will run the above tests along with [Checkov](https://www.checkov.io/1.Welcome/What%20is%20Checkov.html)
* Fix or skip errors if any.
* Create the Pull Request to merge into the main branch.
* Once the merge is complete, apply is trigerred automatically in the development environment

## Release Process
* Create and have the PR approved before merging into main branch. Once code is merged into the main branch, it will create a deployment to the development environment.
* To deploy to stage and production, create a release with a sname similar to 'release/v_number_'. eg: release/v0.1
* Once the release has been created, it will trigger an automatic deployment to stage and production based on the approvals identified for each environment.

