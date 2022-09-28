## Criando SQL Azure serverless no Azure gratuito - Sem cartão de crédito
#### Disclaimer: Utilizar somente para fins de estudo e testes da tecnologia

**Prérequisitos:**

- Azure CLI
- ```(shell)
- https://learn.microsoft.com/pt-br/cli/azure/
- ```
- Visual Studio Code
```(shell)
https://code.visualstudio.com/download
```
- SQL Server Management Studio
```(shell)
https://learn.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16
```
- Conta _@outlook.com_ específica para esta atividade


**Roteiro:**

1. Ativar uma Sandbox MS Learn - Concierge Subscription (4 hora de duração)
2. ```(shell)
3. https://learn.microsoft.com/pt-br/training/modules/create-serverless-logic-with-azure-functions/5-add-logic-to-the-function-app?pivots=powershell.
4. ```
5. Ajustar o código Terraform (Resource group da sua Sandbox + Regra de FW com o IP de saída de sua internet).
6. Logar no Azure através do Terminal do VScode via Azure CLI.
7. Executar o código Terraform.
8. Logar no portal.azure.com e conferir o deploy do SQL do Azure.
9. Logar no SSMS e validar a conexão com o SQL a partir do seu computador.
