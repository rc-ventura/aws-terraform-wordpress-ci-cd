**Creating a CI/CD pipeline with Terraform Cloud to deploy WordPress application infrastructure**
![image](https://github.com/rc-ventura/aws-terraform-wordpress-ci-cd/assets/87483916/87521e25-f8ad-467c-adcc-a083e9ec52ad)

**Descrição**

Este repositório contém um projeto Terraform que implementa uma infraestrutura de aplicação WordPress com um pipeline CI/CD. O projeto está dividido em três ambientes:

* **Dev:** Ambiente de desenvolvimento, onde as alterações são feitas e testadas.
* **Staging:** Ambiente de pré-produção, onde as alterações são testadas em um ambiente semelhante ao de produção.
* **Production:** Ambiente de produção, onde a aplicação está disponível para os usuários.

O pipeline CI/CD é implementado usando o Terraform Cloud, que gerencia o estado do projeto e executa as Terraform plan e apply. O pipeline é acionado automaticamente quando um novo commit é feito no repositório GitHub.

**Tecnologias utilizadas**

* Terraform Cloud
* Terraform
* GitHub
* AWS
* WordPress

**Infraestrutura provisionada**

A infraestrutura provisionada pelo projeto inclui os seguintes recursos:

* **Rede:** Uma VPC com duas sub-redes, uma para cada ambiente.
* **Banco de dados:** Uma instância RDS MySQL.
* **Balanceador de carga:** Um balanceador de carga do tipo ALB.
* **Grupo de escalamento automático:** Um grupo de escalamento automático do tipo ASG, com instâncias EC2 que executam o WordPress.

**Recursos da VPC**

* **VPC:** Uma VPC com a seguinte configuração:
    * CIDR: 10.0.0.0/16
    * Sub-redes:
        * **Dev:** 10.0.1.0/24
        * **Staging:** 10.0.2.0/24
        * **Production:** 10.0.3.0/24

**Recursos do banco de dados**

* **Instância RDS MySQL:** Uma instância RDS MySQL com a seguinte configuração:
    * Engine: MySQL
    * Versão: 8.0
    * Armazenamento: 5 GB
    * Endereço IP público: Sim

**Recursos do balanceador de carga**

* **Balanceador de carga ALB:** Um balanceador de carga do tipo ALB com a seguinte configuração:
    * Protocolo: HTTP
    * Porta: 80
    * Target groups:
        * **Dev:** Target group para as instâncias EC2 do ambiente Dev
        * **Staging:** Target group para as instâncias EC2 do ambiente Staging
        * **Production:** Target group para as instâncias EC2 do ambiente Production

**Recursos do grupo de escalamento automático**

* **Grupo de escalamento automático ASG:** Um grupo de escalamento automático do tipo ASG com a seguinte configuração:
    * Tipo de instância: t2.micro
    * Escalamento:
        * Escalamento mínimo: 1
        * Escalamento máximo: 5
        * Escalamento baseado em demanda: Sim

O pipeline CI/CD irá provisionar esses recursos automaticamente quando um novo commit for feito no repositório GitHub.


**Roadmap**

* **(Concluído)** Implementar a infraestrutura de rede para os três ambientes.
* **(Concluído)** Implementar o banco de dados RDS.
* **(Concluído)** Implementar o balanceador de carga ALB.
* **(Concluído)** Implementar o grupo de escalamento automático ASG com WordPress instalado.
* **(Em andamento)** Adicionar recursos de segurança, como autenticação e criptografia.
* **(Em andamento)** Documentar o projeto.

**Prerequisitos**

* Uma conta da AWS.
* Uma conta do GitHub.
* Um ambiente de desenvolvimento com Terraform instalado.

**Tutorial**

1. Clone o repositório GitHub:

```
git clone https://github.com/[seu_nome]/terraform-wordpress-ci-cd
```

2. Configure as credenciais da AWS:

```
export AWS_ACCESS_KEY_ID=[sua_chave_de_acesso]
export AWS_SECRET_ACCESS_KEY=[seu_segredo_de_acesso]
```

3. Crie um workspace no Terraform Cloud:

```
terraform init
terraform workspace new [ambiente]
```

4. Atualize o arquivo `variables.tf` com as configurações do seu ambiente:

```
variable "environment" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "wordpress_version" {
  type = string
}
```

5. Execute o pipeline CI/CD:

```
terraform apply
```

**Colaboradores**

* r.c_ventura@hotmail.com

**Licença**

Este projeto está licenciado sob a licença MIT.

**Agradecimentos**

Agradeço a HashiCorp pelo desenvolvimento do Terraform e do Terraform Cloud.

**Links importantes**

* Documentação do Terraform: https://www.terraform.io/docs/
* Documentação do Terraform Cloud: https://www.terraform.io/docs/cloud/
* Documentação da AWS: https://docs.aws.amazon.com/
* Documentação do WordPress: https://wordpress.org/docs/
