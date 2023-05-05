programa
{
	
	inclua biblioteca Matematica
	funcao inicio()
	{
	inteiro Candidato1 = 0, Candidato2 = 0, Candidato3 = 0, Branco = 0, Nulo = 0, Voto = 0, Total = 0, Senha = 123456, SenhaDigitada
	real PorcentCand1, PorcentCand2, PorcentCand3, PorcentBranco, PorcentNulo 
	cadeia NomeCandidato1, NomeCandidato2, NomeCandidato3
	
	
	faca {
		/* escreva("Digite o nome do CANDIDATO 1: \n")
		leia(NomeCandidato1)
		
		escreva("Digite o nome do CANDIDATO 2: \n")
		leia(NomeCandidato2)
		
		escreva("Digite o nome do CANDIDATO 3: \n")
		leia(NomeCandidato3) */
		
		escreva("Para votar em BRANCO digite 5 e para votar em NULO digite 8 \n")
		escreva("Qual seu voto: ")
		leia(Voto)

		/*escreva("Para encerrar digite S/N? \n")

		caracter Encerrar
		Encerrar = 'N'

		enquanto (Encerrar !='S')
		{
			escreva ("Deseja encerrar S/N?")
			leia(Encerrar)
		}*/

		
		escolha(Voto)
		{
		caso 1:
		Candidato1 = Candidato1++
		pare
		caso 2:
		Candidato2 = Candidato2++
		pare
		caso 3:
		Candidato3 = Candidato3++
		pare
		caso 5:
		Branco = Branco++
		pare
		caso 8:
		Nulo = Nulo++
		pare
		caso contrario:
		escreva("VOTO INVÁLIDO")
		
		}
		limpa()
		}
		enquanto(Voto != 0)

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

		escreva("Porcentagem do Candidato 1: ",PorcentCand1, "% \n")
		escreva("Porcentagem do Candidato 2: ",PorcentCand2, "% \n")
		escreva("Porcentagem do Candidato 3: ",PorcentCand3, "% \n")
		escreva("Porcentagem de Votos em Branco: ",PorcentBranco, "% \n")
		escreva("Porcentagem de Votos Nulos: ",PorcentNulo, "% \n")

		se (PorcentCand1 > PorcentCand2 e PorcentCand1 > PorcentCand3)
		{
		escreva("RESULTADO: O Vencedor foi o Candidato 1, com: ",PorcentCand1 + PorcentBranco, "% de votos.")
		}
			
		senao se (PorcentCand2 > PorcentCand1 e PorcentCand2 > PorcentCand3)
		{
			escreva("RESULTADO: O Vencedor foi o Candidato 2, com: ",PorcentCand2 + PorcentBranco, "% de votos.")
		}
		senao se (PorcentCand3 > PorcentCand1 e PorcentCand3 > PorcentCand2)
		{
			escreva("RESULTADO: O Vencedor foi o Candidato 3, com: ",PorcentCand3 + PorcentBranco, "% de votos.")
		}
		senao {
			escreva("RESULTADO: Empate")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2612; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Branco, 7, 57, 6}-{Nulo, 7, 69, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */