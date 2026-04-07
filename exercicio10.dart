import 'dart:io';

void main() {
  int totalF = 0, totalM = 0;
  int somaIdadeHomemExp = 0, qtdHomemExp = 0;
  int homemMais45 = 0;
  int mulherMenos30ComExp = 0;
  String? menorIdadeMulherExp;
  int menorIdade = 9999;

  while (true) {
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;
    if (nome.toUpperCase() == 'FIM') break;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write('Tem experiência? (S/N): ');
    bool exp = stdin.readLineSync()!.toUpperCase() == 'S';

    if (sexo == 'F') {
      totalF++;
      if (exp && idade < 30) mulherMenos30ComExp++;
      if (exp && idade < menorIdade) {
        menorIdade = idade;
        menorIdadeMulherExp = nome;
      }
    } else {
      totalM++;
      if (exp) {
        somaIdadeHomemExp += idade;
        qtdHomemExp++;
      }
      if (idade > 45) homemMais45++;
    }
  }

  print('\n--- Resultados ---');
  print('Feminino: $totalF | Masculino: $totalM');

  if (qtdHomemExp > 0)
    print('Média de idade dos homens com exp: ${somaIdadeHomemExp / qtdHomemExp}');
  else
    print('Nenhum homem com experiência.');

  if (totalM > 0)
    print('Homens com mais de 45 anos: ${(homemMais45 / totalM * 100).toStringAsFixed(1)}%');

  print('Mulheres que possuem menos de 30 anos e com exp: $mulherMenos30ComExp');
  print('Candidatas novas com experiência: ${menorIdadeMulherExp ?? "nenhuma"}');
}