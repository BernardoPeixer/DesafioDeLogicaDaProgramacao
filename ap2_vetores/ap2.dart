import 'dart:math';
import '../utils/terminal_utils.dart';

void main() {
  Random random = Random();

  var tamanhoDaLista =
      syncPrompt('Digite um número para ser o tamanho da lista:');

  var listaUsuario = [];

  print('Lista criada com ${tamanhoDaLista} índices');

  while (listaUsuario.length < int.tryParse(tamanhoDaLista)!) {
    var numeroUsuario = syncPrompt('Digite um número para adicionar a lista:');
    listaUsuario.add(numeroUsuario);
  }

  print('Lista: ${listaUsuario}');
}
