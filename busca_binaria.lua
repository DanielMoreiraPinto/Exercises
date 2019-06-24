function buscaBinaria(n, v, e, m, d)
	esquerda = e or 0
	meio = m or math.ceil(#v / 2)
	direita = d or #v + 1
	print(esquerda, meio, direita)
	if meio >= direita or meio <= esquerda then
		return false
	else
		if v[meio] < n then
			return buscaBinaria(n, v, meio, meio + math.ceil((direita - meio) / 2), direita)
		elseif v[meio] > n then
			return buscaBinaria(n, v, esquerda, meio - math.ceil((meio - esquerda) / 2), meio)
		else
			return true
		end
	end
end

n = 4
v = {1, 4, 9, 15, 22, 45, 46, 47}
print(buscaBinaria(n, v))
