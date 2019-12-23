# Projeto de teste automatizado em API com Ruby + Cucumber + HTTParty

Escopo do projeto:

1. Criar uma funcionalidade para consultar os dados de um endereço a partir de um CEP;
2. Criar um cenário de sucesso na consulta, printando o código do IBGE do endereço no stdout;
3. Criar um cenário passando um CEP inválido

## Início

Ao seguir este passo a passo será possível executar o teste de todos os cenários levantados

### Pré-Requisitos

- Instalar o Ruby (verificar se possui a versão mais recente);

### Instalação

1. Para instalar as dependências listadas no arquivo Gemfile, execute o comando abaixo:

```
bundle install
```

## Execução dos testes

1. Para executar todos os cenários, execute o comando abaixo no Terminal:

```
cucumber
```

2. Caso queira executar um cenário por tag, execute o comando abaixo no Terminal:

```
cucumber -t @tag
```

### Documentação

[Capybara](http://www.rubydoc.info/github/jnicklas/capybara)<br>
[Cucumber](https://cucumber.io/docs)<br>
[Ruby](http://ruby-doc.org/)<br>
[ViaCEP](https://viacep.com.br/)

## Autor

* **Maurício Vasconcelos** - [Maubh](https://github.com/Maubh)