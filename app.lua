function apresentar()
	print("-------------Apresentando seus dados!!!-------------\n")
	print("Para fechar ^C\n\n")
	print("Digite 1 para importar seu nome")
	print("Digite 2 para importar sua idade")
	print("Digite 3 para ver seus dados\n")
	errado()
end
function firewall(teste)
	if (teste == "1") then
		return true
	elseif (teste == "2") then
		return true
	elseif (teste == "3") then
		return true
	else
		return false
    	end
end
function errado()
	x = io.read()
	y = firewall(x)
	if(y == true and x == "1") then
		print("Digite o nome:")
		local nome = io.read()
		nomeX = tonumber(nome)
		if (nomeX == nil) then
			lista[1] = nome
			apresentar()
		else
			print("\n\nIsso era para ser um nome?\n\n")
			apresentar()
		end
	elseif (y == true and x == "2") then
		print("Digite a idade:")
		local idade = tonumber(io.read())
		if (type(idade) == number) then
			lista[2] = idade
			apresentar()
		else
			print("\n\nisso era para ser uma idade?\n\n")
			apresentar()
		end
	elseif (y == true and x == "3") then
		print("\n\nMostrando seus dados...")
		if (lista[1] == nil and lista[2] == nil) then
			print("Voce nao acrescentou nenhum dado :(")
		elseif (lista[1] == nil) then
			print("Nenhum nome encontrado")
			print(lista[2])
		elseif (lista[2] == nil) then			
			print(lista[1])
			print("Nenhuma idade encontrada")
		else
			print(lista[1])
			print(lista[2])
		end
	else
		print("Error: Voce nao digitou um numero")
		print("-------------Apresentando seus dados!!!-------------\n")
		print("Digite 1 para importar seu nome")
		print("Digite 2 para importar sua idade\n")
		errado()
	end
	return 0
end
print("-------------Apresentando seus dados!!!-------------\n")
print("Para fechar ^C\n\n")
print("Digite 1 para importar seu nome")
print("Digite 2 para importar sua idade")
print("Digite 3 para ver seus dados\n")
lista = {}
errado()

