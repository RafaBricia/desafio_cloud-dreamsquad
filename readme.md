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
