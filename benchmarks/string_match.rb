require 'benchmark'
# require 'factory_girl_rails'


# 100.times {
#   FactoryGirl.create(:customer)
# }

customers = []
Customer.all.each do |c|
  customers << { :customer_id => c.id, :name => c.name }
end

3.times do
  Benchmark.bm do |b|
    b.report("Regexp#match") { 10000.times { customers.select { |c| /Group/.match(c[:name]).present? } } }
    b.report("String#include?") { 10000.times { customers.select { |c| c[:name].include?('Group') } } }
    b.report("SQL LIKE") { 10000.times { Customer.uncached { Customer.where('name LIKE ?', '%Group%').select(:name) } } }
  end
end
#                   user     system      total        real
# Regexp#match     0.000000   0.000000   0.000000 (  0.002259)
# String#include?  0.000000   0.000000   0.000000 (  0.000436)
# SQL LIKE         0.000000   0.000000   0.000000 (  0.001368)
#
# Regexp#match     0.000000   0.000000   0.000000 (  0.001675)
# String#include?  0.000000   0.000000   0.000000 (  0.000566)
# SQL LIKE         0.000000   0.000000   0.000000 (  0.000815)
#
# Regexp#match     0.000000   0.000000   0.000000 (  0.000982)
# String#include?  0.000000   0.000000   0.000000 (  0.000533)
# SQL LIKE         0.000000   0.000000   0.000000 (  0.000751)
