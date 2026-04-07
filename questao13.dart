import 'dart:io'; 

void main() {
  
  stdout.write('Digite a quantidade de números (N) que você vai inserir: ');
 
  int n = int.parse(stdin.readLineSync()!); 
  
  Map<int, int> contagem = {};
  
  print('\n--- Agora digite os $n números ---');
  
  
  for (int i = 0; i < n; i++) {
    stdout.write('Digite o ${i + 1}º número: ');
    
  
    int numero = int.parse(stdin.readLineSync()!);
    

    contagem[numero] = (contagem[numero] ?? 0) + 1;
  }
  

  print('\nResultado');
  contagem.forEach((numero, quantidade) {
    print('$numero – $quantidade');
  });
}