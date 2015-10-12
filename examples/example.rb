$: << File.expand_path('../../lib', __FILE__)
require 'granatum/api'

@transactions = Granatum::Api::Transaction.find(:all, params: { conta_id: 46839})
@transactions.each do |transaction|
  puts "ID: #{transaction.id}\n";
  puts "Descricao: #{transaction.descricao}\n";
  puts "Vencimento: #{transaction.data_vencimento}\n";
  puts "Valor: #{transaction.valor}\n";
  puts "=================================\n";
end
