## Criando SQL Azure serverless no Azure gratuito - Sem cartão de crédito
#### Disclaimer: Utilizar somente para fins de estudo e testes da tecnologia

### Pré-requisitos:

- [Azure CLI](https://learn.microsoft.com/pt-br/cli/azure/)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Terraform](https://www.terraform.io/downloads)
- [SQL Server Management Studio - SSMS](https://learn.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
- Conta _@outlook.com_ específica para esta atividade


### Roteiro:

1. Ativar uma Sandbox MS Learn (Area Restrita) - Concierge Subscription (4 hora de duração) - 
[https://learn.microsoft.com/pt-br/training/modules/build-serverless-api-with-functions-api-management/5-exercise-import-additional-functions-existing-api-gateway?ns-enrollment-type=learningpath&ns-enrollment-id=learn.create-serverless-applications](https://learn.microsoft.com/pt-br/training/modules/build-serverless-api-with-functions-api-management/5-exercise-import-additional-functions-existing-api-gateway?ns-enrollment-type=learningpath&ns-enrollment-id=learn.create-serverless-applications)
2. Efetuar o login no Azure através do Azure CLI.
```bash  copy
az login
```
3. Conferir sua assinatura atual.
```bash copy
az account show -o table
```
4. Listar todas as assinaturas do Azure da sua conta Microsoft, utilize o comando abaixo (troque o e-mail abaixo pelo e-mail da sua conta Azure).
```bash  copy
az account list --query "[?user.name=='jlsilva01@yahoo.com.br'].{Name:name, ID:id, Default:isDefault}" -o table
```
5. Utilizar a assinatura gratuita, ativada no item 1 deste.
```bash  copy
az account set --subscription "Concierge Subscription"
```
6. Consultar o nome do Resource Group criado para a sua conta do Concierge Subscription.
```bash copy
az group list -o table
```
7. Ajustar a variável *resource_group_name* do arquivo `variables.tf` com o nome do Resource Group informado no passo anterior.
```terraform
variable "resource_group_name" {
  default = "learn-877e311a-66ab-401b-9372-06326c9bd083"
}
```

8. Criar os recursos na assinatura Azure selecionada.
```bash copy
terraform init
```
```bash copy
terraform validate
```
```bash copy
terraform fmt
```
```bash copy
terraform plan
```
```bash copy
terraform apply
```
9. Logar no [portal.azure.com](https://portal.azure.com/) e conferir o deploy do SQL do Azure.
10. Abrir o SSMS e logar no SQL do Azure a partir do seu computador.
11. Destruir os recursos criados.
```bash copy
terraform destroy
```