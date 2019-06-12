--[[
function inverterVetor(v)
	for i = 1, math.floor(#v / 2) do
		v[i], v[#v + 1 - i] = v[#v + 1 - i], v[i]
	end
end

function acharMaior(vetor)
	maior = vetor[1]
	for i = 2, #vetor do
		if maior < vetor[i] then
			maior = vetor[i]
		end
	end
	return maior
end

vetor = {}

for i = 1, 10 do
	if i % 2 == 0 then
		vetor[i] = i / 2
	else
		vetor[i] = 3 * i + 1
	end
end

for i = 1, 10 do
	print(vetor[i])
end

print("Maior -> " .. acharMaior(vetor))

print("Invertido")

inverterVetor(vetor)

for i = 1, #vetor do
	print(vetor[i])
end
--]]
--[[
function crivo(limite)
	primos = {}
	primos[2] = true
	for i = 2, math.floor(math.sqrt(limite)) do
		for j = 2, #primos do
			for k = 2, limite do
				if k % j == 0 then
					primos[k] = false
				else
					primos[k] = true
				end
			end
			if #primos == i then break end
		end
	end
	resultado = {}
	for i = 2, #primos do
		if primos[i] then
			resultado[i] = i
		end
	end
	return resultado
end
--]]

function crivo(limite)
	resultado = {2}
	primos = {true, false, true}
	for i = 3, limite do
		if primos[i] then resultado[i] = i - 1 end
	end
	return resultado
end


numero = io.read("*n")
primos = crivo(numero)
for i = 1, #primos do
	print(primos[i])
end