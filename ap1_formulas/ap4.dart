import '../utils/terminal_utils.dart';
import 'dart:math';

import 'ap2.dart';
import 'ap3.dart';
import 'ap1.dart';

void main() {
  print('1: Cálculo de teorema de pitágoras');
  print('2: Converter número para binário, octal e hexadecimal');
  print('3: Cálculo de bhaskara');
  var formulaEscolhida = syncPrompt('Escolha uma fórmula:');

  switch (formulaEscolhida) {
    case '1':
      calcularTeoremaPitagoras();
      break;
    case '2':
      imprimirNumeroVariantes();
      break;
    case '3':
      bhaskara();
      break;
    default:
      print('Fórmula inválida.');
  }
}
