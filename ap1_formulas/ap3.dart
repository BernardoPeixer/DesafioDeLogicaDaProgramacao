import '../utils/terminal_utils.dart';
import 'dart:math';

void bhaskara() {
  double? coeficienteA = double.tryParse(
      syncPrompt('Digite um número para ser o coeficiente A:'))!;
  double? coeficienteB = double.tryParse(
      syncPrompt('Digite um número para ser o coeficiente B:'))!;
  double? coeficienteC = double.tryParse(
      syncPrompt('Digite um número para ser o coeficiente C:'))!;

  double delta = (pow(coeficienteB, 2) * 4 * coeficienteA * coeficienteC);

  double resultadoUm = (-(coeficienteB) + sqrt(delta)) / (2 * coeficienteA);

  double resultadoDois = (-(coeficienteB) - sqrt(delta)) / (2 * coeficienteA);

  print(
      'Equação final: ${coeficienteA}x² + ${coeficienteB}x - ${coeficienteC}');

  print('Resultado do X1: ${resultadoUm}');
  print('Resultado do X2: ${resultadoDois}');
}
