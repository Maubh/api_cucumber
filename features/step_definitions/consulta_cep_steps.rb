Dado("que eu realize uma requisição com um CEP válido") do
    @response_valid = HTTParty.get("https://viacep.com.br/ws/02181160/json/")
  end
  
  Quando("obter os dados do endereço pesquisado") do
    puts @response_valid
  end
  
  Então("a API retornará o código {int} indicando sucesso") do |int|
    expect(@response_valid.code).to eq(200)
    puts "Response code: #{@response_valid.code}"

  end
  
  Então("o código IBGE do endereço correspondente é exibido") do
    puts "IBGE code:  #{@response_valid["ibge"]}"
  end
  
  Dado("que eu realize uma requisição com um CEP inválido") do
    @response_invalid = HTTParty.get("https://viacep.com.br/ws/2020201/json/")
  end
  
  Então("a API retornará o código {int} indicando erro") do |int|
    expect(@response_invalid.code).to eq(400)
    puts "Response code: #{@response_invalid.code}"
  end