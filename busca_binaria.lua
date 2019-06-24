function buscaBinaria(n, v, e, m, d)
	esquerda = e or 0
	meio = m or math.ceil(#v / 2)
	direita = d or #v + 1
	--print(esquerda, meio, direita)
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

function biscaBinaria(n, v)
	esq = 1
	dir = #v
	while esq <= dir do
		meio = math.floor((esq+dir)/2)
		print(esq, meio, dir)
		if v[meio] == n then
			return true
		elseif v[meio] > n then
			dir = meio-1
		elseif v[meio] < n then
			esq = meio+1
		end
	end
	return false
end

n = 7
v = {1, 9, 8, 5, 3, 7, 4}

for i=#v, 2, -1 do
	trocas = false
	for j=1, i-1 do 
		if v[j] > v[i] then
			v[i], v[j] = v[j], v[i]
			trocas=true
		end
	end
	if not trocas then break end
end

for i=1, #v do
	print(v[i])
end

print(buscaBinaria(n, v))

print(biscaBinaria(n, v))