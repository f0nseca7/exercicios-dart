import 'dart:io';


class Boi {
  int numero;
  double peso;

  Boi(this.numero, this.peso);
}

void main() {
  List<Boi> rebanho = [];


  stdout.write('Digite a quantidade de bois na fazenda (N): ');
  int n = int.parse(stdin.readLineSync()!);

  print('\n--- Cadastro do Rebanho ---');

  for (int i = 0; i < n; i++) {
    print('\nBoi ${i + 1}:');
    stdout.write('Número de identificação: ');
    int numero = int.parse(stdin.readLineSync()!);

    stdout.write('Peso (em kg): ');

    double peso = double.parse(stdin.readLineSync()!); 


    rebanho.add(Boi(numero, peso));
  }


  bool continuarPesquisa = true;

  while (continuarPesquisa) {
    print('\n--- Pesquisa por Intervalo de Peso ---');
    stdout.write('Digite o peso MÍNIMO (ou digite -1 para encerrar): ');
    double pesoMin = double.parse(stdin.readLineSync()!);


    if (pesoMin == -1) {
      print('Encerrando o sistema. Até logo!');
      break; 
    }

    stdout.write('Digite o peso MÁXIMO: ');
    double pesoMax = double.parse(stdin.readLineSync()!);

    print('\nResultados da pesquisa ($pesoMin kg a $pesoMax kg):');
    bool encontrouAlgum = false;


    for (Boi boi in rebanho) {
      if (boi.peso >= pesoMin && boi.peso <= pesoMax) {
        print('Boi Nº: ${boi.numero} | Peso: ${boi.peso} kg');
        encontrouAlgum = true;
      }
    }

    if (!encontrouAlgum) {
      print('Nenhum boi encontrado dentro desse intervalo de peso.');
    }
  }
}