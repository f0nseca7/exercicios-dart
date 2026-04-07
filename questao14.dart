import 'dart:io';

void main() {

  List<int> lerVetor(int numeroDoVetor) {
    stdout.write('Digite o tamanho do $numeroDoVetorº vetor: ');
    int tamanho = int.parse(stdin.readLineSync()!);
    
    List<int> vetor = [];
    print('Digite os $tamanho elementos do $numeroDoVetorº vetor (em ordem crescente):');
    
    for (int i = 0; i < tamanho; i++) {
      stdout.write('Elemento ${i + 1}: ');
      vetor.add(int.parse(stdin.readLineSync()!));
    }
    return vetor;
  }

  print('--- Lendo o 1º Vetor ---');
  List<int> vetor1 = lerVetor(1);
  
  print('\n--- Lendo o 2º Vetor ---');
  List<int> vetor2 = lerVetor(2);


  List<int> vetor3 = [];
  int i = 0; 
  int j = 0; 


  while (i < vetor1.length && j < vetor2.length) {
    if (vetor1[i] < vetor2[j]) {
      vetor3.add(vetor1[i]);
      i++; 
    } else {
      vetor3.add(vetor2[j]);
      j++; 
    }
  }


  while (i < vetor1.length) {
    vetor3.add(vetor1[i]);
    i++;
  }


  while (j < vetor2.length) {
    vetor3.add(vetor2[j]);
    j++;
  }

  
  print('\n--- Resultado Final ---');
  print('Vetor 1: $vetor1');
  print('Vetor 2: $vetor2');
  print('Vetor 3 (Mesclado e Ordenado): $vetor3');
}