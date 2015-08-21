function soma(x, y)
 z = x + y
  print("A soma é: "..z)
  if x > y then
    print("X é maior que Y")
  elseif y > x then
    print("Y é maior que X")
  elseif x == y then
    print("Os valores são iguais")
  end
 media = z/2
 print(media)
end

soma(1234, 2938423)