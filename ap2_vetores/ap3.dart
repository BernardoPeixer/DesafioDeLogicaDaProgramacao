import '../utils/terminal_utils.dart';
import 'dart:math';

void vetorSoma() {
  Random random = Random();

  var tamanhoDaLista =
      syncPrompt('Digite um número para ser o tamanho da lista:');

  List<int> listaUsuario = [];

  print('ListaUsuário criada com ${tamanhoDaLista} índices');

  while (listaUsuario.length < int.tryParse(tamanhoDaLista)!) {
    var numeroUsuario = syncPrompt('Digite um número para adicionar a lista:');
    listaUsuario.add(int.tryParse(numeroUsuario)!);
  }

  print('ListaUsuario: ${listaUsuario}');

  List<int> listaRandom =
      List.generate(int.tryParse(tamanhoDaLista)!, (_) => random.nextInt(99));

  print('ListaRandom: ${listaRandom}');

  var listaSoma = [];

  for (int i = 0; i < listaUsuario.length; i++) {
    listaSoma.add(listaUsuario[i] + listaRandom[i]);
  }

  print('ListaSoma: ${listaSoma}');
}
