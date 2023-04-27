programa
{
	
	inclua biblioteca Matematica
	funcao inicio()
	{
	inteiro Candidato1 = 0, Candidato2= 0, Candidato3= 0, Branco= 0, Nulo= 0, Voto= 0, Total = 0
	real PorcentCand1, PorcentCand2, PorcentCand3, PorcentBranco, PorcentNulo, Arredondamento
	faca {
		escreva("Digite 1 para votar no CANDIDATO 1 \n")
		escreva("Digite 2 para votar no CANDIDATO 2 \n")
		escreva("Digite 3 para votar no CANDIDATO 3 \n") 
		escreva("Para votar em BRANCO digite 5 e para votar em NULO digite 8 \n")
		escreva("Para encerrar digite 0 \n")
		escreva("Qual seu voto?: ")
		leia(Voto)

		escolha(Voto)
		{
		caso 0: 
		escreva("Votação encerrada \n")
		pare
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
		caso contrario:
		Nulo = Nulo ++
		}
		limpa ()
		}
		enquanto(Voto != 0)

		Total = Candidato1 + Candidato2 + Candidato3 + Branco + Nulo

		PorcentCand1 = (Candidato1 * 100.0) / Total
		Arredondamento = Matematica.arredondar (PorcentCand1, 2)

		PorcentCand2 = (Candidato2 * 100.0) / Total
		PorcentCand3 = (Candidato3 * 100.0) / Total
		PorcentNulo = (Nulo * 100.0) / Total
		PorcentBranco = (Branco * 100.0) / Total

		escreva("Porcentagem do Candidato 1: ",PorcentCand1, "% \n")
		escreva("Porcentagem do Candidato 2: ",PorcentCand2, "% \n")
		escreva("Porcentagem do Candidato 3: ",PorcentCand3, "% \n")
		escreva("Porcentagem de Votos em Branco: ",PorcentBranco, "% \n")
		escreva("Porcentagem de Votos Nulos: ",PorcentNulo, "% \n")

		se (PorcentCand1 > PorcentCand2 e PorcentCand2 > PorcentCand3){
			escreva("O Vencedor foi o Candidato 1")
		}
		senao se (PorcentCand2 > PorcentCand1 e PorcentCand1 > PorcentCand3) {
			escreva("O Vencedor foi o Candidato 2")
		}
		senao se (PorcentCand3 > PorcentCand1 e PorcentCand1 > PorcentCand2){
			escreva("O Vencedor foi o Candidato 3")
		}
			
		
		}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */