import '../utils/terminal_utils.dart';
import 'dart:math';


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




void calcularTeoremaPitagoras() {

  
  double? ladoA = double.tryParse(syncPrompt('Digite um número para o primeiro lado do seu triângulo:'))!;
  double? ladoB = double.tryParse(syncPrompt('Digite um número para o primeiro lado do seu triângulo:'))!;


  double ladoMaior = sqrt(pow(ladoA, 2) + pow(ladoB, 2));
  print('Lado A: ${ladoA}');
  print('Lado B: ${ladoB}');
  print('Hipotenusa: ${ladoMaior}');
}

void imprimirNumeroVariantes() {

  int? numero = int.tryParse(syncPrompt('Digite um número para converter-lo'))!;

  String binario = numero.toRadixString(2);

  String octal = numero.toRadixString(8);
  
  String hexa = numero.toRadixString(16);

  print('Seu número: ${numero}');

  print('------- Convertido -------');

  print('Número binário: ${binario}');

  print('Número octal: ${octal}');

  print('Número hexadecimal: ${hexa}');
}

void bhaskara() {
  double? coeficienteA = double.tryParse(syncPrompt('Digite um número para ser o coeficiente A:'))!;
  double? coeficienteB = double.tryParse(syncPrompt('Digite um número para ser o coeficiente B:'))!;
  double? coeficienteC = double.tryParse(syncPrompt('Digite um número para ser o coeficiente C:'))!;

  

  double delta = (pow(coeficienteB, 2) * 4 * coeficienteA * coeficienteC);

  double resultadoUm = (-(coeficienteB) + sqrt(delta))/ (2 * coeficienteA);

  double resultadoDois = (-(coeficienteB) - sqrt(delta))/ (2 * coeficienteA);

  print('Equação final: ${coeficienteA}x² + ${coeficienteB}x - ${coeficienteC}');

  print('Resultado do X1: ${resultadoUm}');
  print('Resultado do X2: ${resultadoDois}');
}



