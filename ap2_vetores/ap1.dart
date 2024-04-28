import 'dart:math';
import '../utils/terminal_utils.dart';

void main() {
  Random random = Random();

  var tamanhoDaLista =
      syncPrompt('Digite um número para ser o tamanho da lista:');
      
  var listaUsuario =
      List.generate(int.tryParse(tamanhoDaLista)!, (_) => random.nextInt(99));

  print('Lista criada com ${tamanhoDaLista} índices:');
  print(listaUsuario);
}
