import '../utils/terminal_utils.dart';
import 'dart:math';

import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';

void main() {
  print('1: Vetor Aleatório');
  print('2: Vetor Informado Pelo Usuário');
  print('3: Vetor Soma');
  var formulaEscolhida = syncPrompt('Escolha um programa:');

  switch (formulaEscolhida) {
    case '1':
      vetorAleatorio();
      break;
    case '2':
      vetorInformado();
      break;
    case '3':
      vetorSoma();
      break;
    default:
      print('Programa inválido');
  }
}