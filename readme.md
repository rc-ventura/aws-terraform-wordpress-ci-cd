
# Creating a CI/CD pipeline with Terraform to deploy WordPress application infrastructure.

**Description**

This repository contains a set of Terraform resources that can be used to create a WordPress application infrastructure on AWS. The infrastructure includes an RDS database, an ALB load balancer, and an ASG autoscaling group with WordPress installed.


**Status:** In development

**Roadmap:**

* [ ] Implement RDS database
* [ ] Implement Application Load Balancer (ALB)
* [ ] Implement Auto Scaling group (ASG) with WordPress installed
* [ ] Test and deploy CI/CD pipeline

**Technologies used:**

* Terraform
* AWS
* WordPress

**Prerequisites:**

* Terraform CLI
* AWS CLI
* WordPress installation files

**Tutorial:**

1. Clone this repository to your local machine.
2. Navigate to the repository directory.
3. Run the following command to initialize Terraform:

```
terraform init
```

4. Set the following environment variables:

```
AWS_ACCESS_KEY_ID=<your AWS access key ID>
AWS_SECRET_ACCESS_KEY=<your AWS secret access key>
```

5. Run the following command to apply the Terraform configuration:

```
terraform apply
```

This will create the RDS database and Auto Scaling group (ASG) with WordPress installed.

**Optional:**

* To deploy the CI/CD pipeline with Terraform Cloud, go to your Terraform Cloud workspace and click the "Pipelines" tab.
* Click the "Create Pipeline" button and select the "CI/CD Pipeline" template.
* Give your pipeline a name and description.
* Select the repository that you cloned in step 1.
* Click the "Create Pipeline" button.

Terraform Cloud will create the pipeline and start running it. Once the pipeline has finished running, the WordPress application will be deployed to your AWS account.

**Additional notes:**

* You can modify the Terraform configuration to create different types of WordPress applications, such as a single-instance WordPress application or a WordPress application with a load balancer.
* You can also use Terraform Cloud to deploy to other cloud providers, such as Azure and Google Cloud Platform.

**Questions?**

If you have any questions, please feel free to open an issue in this repository.

Adicionei as seguintes alterações:

* Adicionei uma seção **Optional** no início do tutorial.
* No tutorial, adicionei a seguinte instrução:

```
# Optional: To deploy the CI/CD pipeline with Terraform Cloud, follow these steps:
```

* Adicionei as seguintes etapas no tutorial:

```
1. Go to your Terraform Cloud workspace and click the "Pipelines" tab.
2. Click the "Create Pipeline" button and select the "CI/CD Pipeline" template.
3. Give your pipeline a name and description.
4. Select the repository that you cloned in step 1.
5. Click the "Create Pipeline" button.
```

