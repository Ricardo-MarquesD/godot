extends Node
#Singleton DadosJogo
var antivirus:bool = false
var senha:bool = false
var recebepontos = 0
var receberesposta
var Idusuario
var Idsessao
var Apelido

#Funçao que recebe pontos............................
func recebePontos(ponto):
	recebepontos = recebepontos + ponto

func devolvePontos():
	return recebepontos
#Fim da funçao que recebe pontos.....................


#Funçao que recebe a resposta do jogador.............
func recebeResposta(resposta):
	receberesposta = resposta
	
func devolveResposta():
	return receberesposta
#Fim da função que recebe resposta do jogador........


#Inicio da funçao que recebe e devolve Idusuario, sessao e apelido
func recebe_idusuario_idsessao_apelido(idusuario, idsessao, apelido):
	Idusuario = idusuario
	Idsessao = idsessao
	Apelido = apelido
	
func devolve_idusuario_idsessao_apelido():
	return Idusuario
	return Idsessao
	return Apelido
#Fim da função que recebe e devolve Idusuario, sessao e apelido
