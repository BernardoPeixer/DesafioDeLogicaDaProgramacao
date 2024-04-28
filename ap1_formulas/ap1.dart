import '../utils/terminal_utils.dart';
import 'dart:math';

void calcularTeoremaPitagoras() {
  double? ladoA = double.tryParse(
      syncPrompt('Digite um número para o primeiro lado do seu triângulo:'))!;
  double? ladoB = double.tryParse(
      syncPrompt('Digite um número para o primeiro lado do seu triângulo:'))!;

  double ladoMaior = sqrt(pow(ladoA, 2) + pow(ladoB, 2));
  print('Lado A: ${ladoA}');
  print('Lado B: ${ladoB}');
  print('Hipotenusa: ${ladoMaior}');
}
