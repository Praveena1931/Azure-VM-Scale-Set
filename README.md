# Azure-VMSS# Azure Virtual Machine Scale set(VMSS)
### ✅ `README.md`

```markdown
# 🌐 Azure VMSS Deployment with Terraform & GitHub Actions

This project automates the provisioning of an **Azure VMSS** using Terraform. It integrates with **GitHub Actions** to create a CI/CD pipeline that applies infrastructure changes upon pushing to the `main` branch.


---
## ⚙️ Prerequisites

- Azure Subscription
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Terraform](https://developer.hashicorp.com/terraform/install)
- GitHub Repository

---

## 🔐 Setup Azure Authentication (Service Principal)

1a. **Create a Service Principal** with Contributor access from CLI

   ```bash
   az ad sp create-for-rbac --role="Contributor" \
     --scopes="/subscriptions/<YOUR_SUBSCRIPTION_ID>" \
     --sdk-auth
````
1b. **Create a Service Principal** with Contributor access from Azure Portal
```
   Login to azure portal --> search for Microsoft entra id --> under manage navigate to App Registrations -->
   click on New Registration and provide necesary details and click Register

````
2a. **Save the following values from the output** into your GitHub repo under:

   **GitHub → Settings → Secrets and variables → Actions → New repository secret**

   | GitHub Secret Name    | Value from SP Output |
   | --------------------- | -------------------- |
   | `ARM_CLIENT_ID`       | `clientId`           |
   | `ARM_CLIENT_SECRET`   | `clientSecret`       |
   | `ARM_SUBSCRIPTION_ID` | `subscriptionId`     |
   | `ARM_TENANT_ID`       | `tenantId`           |

2b. **Save the following values from the output** into your GitHub repo under:

   **GitHub → Settings → Secrets and variables → Actions → New repository secret**

   | GitHub Secret Name    | Value from SP Output                 |
   | --------------------- | ------------------------------------ |
   | `AZURE_CREDENTIALS`   | Provide All Above Secrets in this    |
   

---

## 🚀 CI/CD Pipeline (GitHub Actions)

**File:** `.github/workflows/deploy.yml`

### 💡 Pipeline Features:

* Runs on push or pull request to `main` branch
* Validates, plans, and applies infrastructure
* Authenticates securely with GitHub secrets

### 🧪 Triggering the Pipeline

Simply push a change to the `main` branch:

```bash
git add .
git commit -m "Name you want to provide "
git push origin main
```

Check progress under **GitHub → Actions** tab.

---

## 🛠️ Customization Options

You can override default settings via `terraform.tfvars` or CLI flags:

```hcl
resource_group_name     = "vmss-rg"  
resource_group_location = "East US"
azurerm_virtual_network = "vmss-net"
azurerm_subnet          = "vmss-subnet"
azurerm_linux_virtual_machine_scale_set = "Algorims-vmss"
network interface
```

Or pass them via CLI:

```bash
terraform apply \
  -var="resource_group_name=vmss-rg" \
  -var="resource_group_location=East US" \
  -var="azurerm_virtual_network=vmss-net" \
  -var="azurerm_subnet=vmss-subnet" \
  -var="azurerm_linux_virtual_machine_scale_set=Algorims-vmss"


```

---

## 📤 Terraform Outputs

After successful deployment, you’ll get:

| Output                    | Description                                          |
| ------------------------- | ---------------------------------------------------- |
| `resource_group_name`     | The generated Azure resource group name              |
| `resource_group_location` | Location in which it is deployed                     |
| `azurerm_virtual_network` | Generated virtual network                            |
| `azurerm_subnet`          | Subnet for above crated n/w                          |
| `azurerm_linux_virtual_machine_scale_set`     |Virtual Machine Scale set is created |

---


## 🧹 Cleanup

To destroy all resources:

```bash
terraform destroy -auto-approve
```

---

## 🧠 Learn More

* [Azure VMSS Documentation](https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/)
* [Azure VMSS creation using terraform](https://learn.microsoft.com/en-us/azure/developer/terraform/create-vm-scaleset-network-disks-hcl)
* [Terraform AzureRM Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
* [GitHub Actions for Terraform](https://github.com/hashicorp/setup-terraform)

---
# Azure-VM-Scale-Set