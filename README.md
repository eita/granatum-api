# Ruby Gem para a API do Granatum

Essa biblioteca é um conjunto de classes para acessar as informações do [Granatum](http://granatum.com.br) através da [API](http://www.granatum.com.br/financeiro/api/).

Todas as classes são herdadas do ActiveResouce::Base. Veja a documentação do [ActiveResouce](http://api.rubyonrails.org/classes/ActiveResource/Base.html) para mais informações.

## Instalando

    gem install granatum-api

### Configurando seu token

```ruby
require 'rubygems'
require 'granatum-api'

Granatum::Api::Base.access_token = ENV['granatum_token']
```

## Uso

```ruby
# criar uma categoria
@category = Granatum::Api::Category.create({:description => 'Retirada de Lucro'})

# listar todos os lançamentos
@transactions = Granatum::Api::Transaction.find(:all, params: { conta_id: 46839})
@transactions.each do |transaction|
  puts "ID: #{transaction.id}\n";
  puts "Descricao: #{transaction.descricao}\n";
  puts "Vencimento: #{transaction.data_vencimento}\n";
  puts "Valor: #{transaction.valor}\n";
  puts "=================================\n";
end
```

Veja um exemplo no arquivo [example.rb](https://github.com/eita/granatum-api/blob/master/examples/example.rb)

## Licença

Esse código é livre para ser usado dentro dos termos da licença [MIT license](http://www.opensource.org/licenses/mit-license.php).

## Bugs, Issues, Agradecimentos, etc

Comentários são bem-vindos. Envie seu feedback através do [issue tracker do GitHub](http://github.com/eita/granatum-api/issues)

## Referência

Agradecimento especial para o [CobreGratis-Ruby](https://github.com/CobreGratis/cobregratis-ruby) que serviu como referência para este código.

## Autor

[**Sanderson Santana**](http://github.com/ssantana) trabalhando na [Eita](http://digaeita.com.br)
