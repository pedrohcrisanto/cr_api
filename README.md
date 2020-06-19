## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/cr_api.git
```

Instale as dependências
```sh
$ cd /cr_api/
$ bundle install
```

Crie o banco, migre as tabelas e popule o banco de dados
```sh
$ rails db:create db:migrate db:seed
```

Rode a aplicação
```sh
$ rails s
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000/`



