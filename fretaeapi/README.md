# Fretae Api

### 1. Requisitos mínimos
*Rails*: versão 5.1.3

*Ruby*: versão 2.4.1 (com gem "mysql2")

*Git*: versão 2.7.4

*MySQL*: versão 14.14

### 2. Configurando
Em *fretaeapi/config/database.yml* atualize os campos "username" e "password" para os valores utilizados no seu banco de dados.
E execute os seguintes comandos na pasta */fretaeapi/* :

`rake db:create`

`rake db:migrate`

`rails routes`

`rails s`

### 3. Serviços
**GET** http://localhost:3000/api/v1/pessoas/ para obter todas as pessoas cadastradas.

**GET** http://localhost:3000/api/v1/veiculos/ para obter todas os veículos cadastrados.

**POST** http://localhost:3000/api/v1/pessoas para cadastrar uma nova pessoa com:

*Headers*
```
Content-Type: application/json
```

*Body example*
```
{
	"nome": "João Matias",
	"email": "agentejoao@gmail.com",
	"senha": "123456",
	"telefone": "99062721"
}
```

**POST** http://localhost:3000/api/v1/veiculos para cadastrar um novo veículo com:

*Headers*
```
Content-Type: application/json
```

*Body example*
```
{
	"categoria": "carro",
	"cor": "preto",
	"modelo": "Strada"
}
```

**DELETE** http://localhost:3000/api/v1/pessoas/[id] para remover a pessoa com id=[id]

**DELETE** http://localhost:3000/api/v1/veiculos/[id] para remover o veículo com id=[id]

**PUT** http://localhost:3000/api/v1/pessoas/[id] para atualizar atributo(s) da pessoa de id=[id]

*Headers*
```
Content-Type: application/json
```

*Body example*
```
{
	"nome": "José Matias"
}
```

**PUT** http://localhost:3000/api/v1/veiculos/[id] para atualizar atributo(s) do veículo de id=[id]

*Headers*
```
Content-Type: application/json
```

*Body example*
```
{
	"categoria": "moto"
}
```

