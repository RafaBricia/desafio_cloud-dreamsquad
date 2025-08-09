# Como Rodar Backend e Frontend com Docker

## Pré-requisitos
- Docker instalado 
- Docker Compose instalado

---

## Rodando o Projeto

Na raiz do projeto (onde está o docker-compose.yml), execute:

```
docker-compose up --build
```

### Isso irá:

- Criar e iniciar o backend na porta 8085

- Criar e iniciar o frontend na porta 8081

---

## Acessos

Backend: http://localhost:8085

Frontend: http://localhost:8081

---

## Parar os containers

```
docker-compose down
```

# Provisionando Infraestrutura na AWS com Terraform


## Pré-requisitos

- Conta AWS configurada localmente (credenciais AWS configuradas via AWS CLI ou variáveis de ambiente)
- Permissões AWS para criar recursos: S3, ECS, ECR, Lambda, ALB, IAM, CloudWatch etc.
- Terraform instalado

---

## Passo 1 — Configurar credenciais AWS

Configure suas credenciais para que o Terraform consiga criar recursos AWS. Pode ser via AWS CLI:

```
aws configure
```

Ou definindo variáveis de ambiente:

```
export AWS_ACCESS_KEY_ID="seu_access_key"
export AWS_SECRET_ACCESS_KEY="seu_secret_key"
export AWS_DEFAULT_REGION="us-east-1"
```

---

## Passo 2 — Inicializar Terraform

Entre na pasta terraform e rode:

```
terraform init
```

Isso baixa os providers e configura o backend do Terraform.

---


## Passo 3 — Aplicar as configurações (criar recursos)

```
terraform apply
```

Confirme com yes quando solicitado. Isso irá provisionar na AWS:

 - Buckets S3 para frontend e arquivos

 - Repositório ECR para backend

 - Cluster ECS com task e service para backend

 - Load Balancer (ALB)

 - Função Lambda e regra CloudWatch para upload diário

---

## Passo 4 — Verificar outputs

Após aplicar, o Terraform mostrará os outputs, como:

 - URL do ALB para backend

 - URL do bucket frontend para acessar o site hospedado no S3

 - Nome da Lambda, buckets etc.


Link para meu repositório: <a href='https://github.com/RafaBricia/desafio_cloud-dreamsquad'>Clique aqui!</a>