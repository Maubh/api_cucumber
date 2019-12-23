#language:pt

Funcionalidade: Criar uma funcionalidade para consultar os dados de um endereço a partir de um CEP
Eu como usuário do sistema de consulta por CEP
Eu quero realizar as requisições na API
A fim de manipular as informações dos endereços

@consultaCepValido
Cenário: Consultar um endereço por meio de um CEP válido
Dado que eu realize uma requisição com um CEP válido
Quando obter os dados do endereço pesquisado
Então a API retornará o código 200 indicando sucesso

@retornaCodigoIBGE
Cenário: Exibir o código IBGE de um endereço
Dado que eu realize uma requisição com um CEP válido
Então o código IBGE do endereço correspondente é exibido

@consultaCepInvalido
Cenário:  Consultar um endereço por meio de um CEP inválido
Dado que eu realize uma requisição com um CEP inválido
Então a API retornará o código 400 indicando erro
