import 'dart:io';

void main() {
  double somaLiqM = 0, somaLiqF = 0;
  int qtdM = 0, qtdF = 0;

  print('Código | Nome | Salário Bruto | Salário Líquido');
  print('------------------------------------------------');

  while (true) {
    stdout.write('Código: ');
    String cod = stdin.readLineSync()!;
    if (cod == '9999') break;

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Horas de aula no mês: ');
    int horas = int.parse(stdin.readLineSync()!);

    double bruto = horas * 12.30;
    double desconto = sexo == 'M' ? 0.10 : 0.05;
    double liquido = bruto * (1 - desconto);

    print('$cod | $nome | R\$ ${bruto.toStringAsFixed(2)} | R\$ ${liquido.toStringAsFixed(2)}');

    if (sexo == 'M') {
      somaLiqM += liquido;
      qtdM++;
    } else {
      somaLiqF += liquido;
      qtdF++;
    }
  }

  print('\n--- Médias Salariais ---');
  if (qtdM > 0) print('Homens: R\$ ${(somaLiqM / qtdM).toStringAsFixed(2)}');
  if (qtdF > 0) print('Mulheres: R\$ ${(somaLiqF / qtdF).toStringAsFixed(2)}');
}