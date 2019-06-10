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

function crivo()
	vetor = {2}
	for i = 1, 50 do
		
	end
	return vetor
end