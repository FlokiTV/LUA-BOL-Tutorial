tabela = { obj = "Maça", obj2 = "banana", 123, "laranja" }

for i, v in pairs(tabela) do
 if v == 123 then
  print(i.." - "..v)
 end
end