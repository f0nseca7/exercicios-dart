import 'dart:io';

List<double> lerVetor(String nome) {
  stdout.write('Tamanho do $nome: ');
  int tam = int.parse(stdin.readLineSync()!);

  var v = <double>[];
  for (int i = 0; i < tam; i++) {
    stdout.write('Elemento ${i + 1}: ');
    v.add(double.parse(stdin.readLineSync()!));
  }
  return v;
}

List<double> somarVetores(List<double> v1, List<double> v2) {
  int tam = v1.length < v2.length ? v1.length : v2.length;
  return List.generate(tam, (i) => v1[i] + v2[i]);
}

void main() {
  var v1 = lerVetor('1º vetor');
  var v2 = lerVetor('2º vetor');
  var v3 = somarVetores(v1, v2);

  print('\n3º vetor (soma): $v3');
  print('Soma total dos elementos: ${v3.reduce((a, b) => a + b)}');
}