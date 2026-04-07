import 'dart:io';

void main() {
  var vetores = <List<int>>[];

  for (int i = 0; i < 4; i++) {
    stdout.write('Tamanho do vetor ${i + 1}: ');
    int tam = int.parse(stdin.readLineSync()!);

    var v = <int>[];
    for (int j = 0; j < tam; j++) {
      stdout.write('Elemento ${j + 1} do vetor ${i + 1}: ');
      v.add(int.parse(stdin.readLineSync()!));
    }
    vetores.add(v);
  }

  var quinto = vetores.expand((v) => v).toList()..sort();
  print('\na) Quinto vetor ordenado: $quinto');

  var intersecao = vetores[0].toSet();
  for (int i = 1; i < vetores.length; i++) {
    intersecao = intersecao.intersection(vetores[i].toSet());
  }
  print('b) Interseção dos 4 vetores: ${intersecao.toList()..sort()}');
}