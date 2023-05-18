programa
{
	
	inclua biblioteca Matematica
	//inclua biblioteca Calendario --> c
	//inclua biblioteca Util --> u
	inclua biblioteca Sons --> s
	funcao inicio()
	{
	inteiro Candidato1 = 0, Candidato2 = 0, Candidato3 = 0, Branco = 0, Nulo = 0, Voto = 0, Total = 0, Senha = 123456
	real PorcentCand1, PorcentCand2, PorcentCand3, PorcentBranco, PorcentNulo 
	cadeia NomeCandidato1, NomeCandidato2, NomeCandidato3
	caracter Encerrar = 'N'
	logico EncerrarVotos = falso, VotoInvalido = falso
	inteiro som = s.carregar_som("confirma-urna.mp3")
	
	 	escreva("Digite o nome do CANDIDATO 1: \n")
		leia(NomeCandidato1)

		escreva("Digite o nome do CANDIDATO 2: \n")
		leia(NomeCandidato2)

		escreva("Digite o nome do CANDIDATO 3: \n")
		leia(NomeCandidato3) 
		limpa()
	
	faca {
		escreva("Digite (1) para votar no(a) ",NomeCandidato1, "\n")
		escreva("Digite (2) para votar no(a) ",NomeCandidato2, "\n")
		escreva("Digite (3) para votar no(a) ",NomeCandidato3, "\n")
		escreva("Para votar em BRANCO digite 5 \n")
		escreva("Para votar em NULO digite 8 \n")
		escreva("Para encerrar digite a senha \n")
		escreva("Digite seu voto: ")
		leia(Voto)

		escolha(Voto)
		{
		caso 1:
		Candidato1 = Candidato1++
		Total ++
		pare
		caso 2:
		Candidato2 = Candidato2++
		Total++
		pare
		caso 3:
		Candidato3 = Candidato3++
		Total++
		pare
		caso 5:
		Branco = Branco++
		Total++
		pare
		caso 8:
		Nulo = Nulo++
		Total++
		pare
		caso 123456:
		escreva("Deseja realmente encerrar? digite S/N?: \n")
		leia(Encerrar)
		se (Encerrar == 'S' ou Encerrar == 's'){
			EncerrarVotos = verdadeiro
		}
		pare
		caso contrario:
		VotoInvalido = verdadeiro
		
		}
		limpa()
		}
		enquanto(nao EncerrarVotos)

		Total = Candidato1 + Candidato2 + Candidato3 + Branco + Nulo

		PorcentCand1 = (Candidato1 * 100.0) / Total
		PorcentCand1 = Matematica.arredondar (PorcentCand1, 2)

		PorcentCand2 = (Candidato2 * 100.0) / Total
		PorcentCand2 = Matematica.arredondar (PorcentCand2, 2)
		
		PorcentCand3 = (Candidato3 * 100.0) / Total
		PorcentCand3 = Matematica.arredondar (PorcentCand3, 2)
		
		PorcentNulo = (Nulo * 100.0) / Total
		PorcentNulo = Matematica.arredondar (PorcentNulo, 2)
		
		PorcentBranco = (Branco * 100.0) / Total
		PorcentBranco = Matematica.arredondar (PorcentBranco, 2)

		escreva("Porcentagem do Candidato ",NomeCandidato1,": ",PorcentCand1, "% \n")
		escreva("Porcentagem do Candidato ",NomeCandidato2,": ",PorcentCand2, "% \n")
		escreva("Porcentagem do Candidato ",NomeCandidato3,": ",PorcentCand3, "% \n")
		escreva("Porcentagem de Votos em Branco: ",PorcentBranco, "% \n")
		escreva("Porcentagem de Votos Nulos: ",PorcentNulo, "% \n")

		se (PorcentCand1 > PorcentCand2 e PorcentCand1 > PorcentCand3)
		{
		escreva("RESULTADO: O Vencedor foi o Candidato ",NomeCandidato1, " com: ",PorcentCand1 + PorcentBranco, "% de votos.")
		}
			
		senao se (PorcentCand2 > PorcentCand1 e PorcentCand2 > PorcentCand3)
		{
			escreva("RESULTADO: O Vencedor foi o Candidato ",NomeCandidato2, " com: ",PorcentCand2 + PorcentBranco, "% de votos.")
		}
		senao se (PorcentCand3 > PorcentCand1 e PorcentCand3 > PorcentCand2)
		{
			escreva("RESULTADO: O Vencedor foi o Candidato ",NomeCandidato3, " com: ",PorcentCand3 + PorcentBranco, "% de votos.")
		}
		senao {
			escreva("RESULTADO: Empate")
			
		}
		s.reproduzir_som(som, falso)
		
		//escreva("\n RELATÓRIO DA URNA: \n")
		//inteiro hora = c.hora_atual(verdadeiro)
		//escreva("São: ",hora,"h. ")
		
		//u.aguarde(2000)
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 934; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */