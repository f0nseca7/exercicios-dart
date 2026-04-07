import 'dart:io';
import 'dart:math';

const palavras = ['PROGRAMACAO', 'FLUTTER', 'DART', 'ALGORITMO', 'VETOR', 'DESENVOLVIMENTO'];
const maxErros = 6;

void main() {
  var palavra = palavras[Random().nextInt(palavras.length)];
  var tentativas = <String>{};
  int erros = 0;

  print('=== Jogo da Forca ===\n');

  while (erros < maxErros) {
    _desenharForca(erros);

    var exibicao = palavra.split('').map((l) => tentativas.contains(l) ? l : '_').join(' ');
    print('\nPalavra: $exibicao');
    print('Tentativas: ${tentativas.join(', ')}');

    if (!exibicao.contains('_')) {
      print('\nParabéns, você ganhou!');
      return;
    }

    stdout.write('\nLetra: ');
    var entrada = stdin.readLineSync()?.toUpperCase().trim() ?? '';

    if (entrada.length != 1 || !RegExp(r'[A-Z]').hasMatch(entrada)) {
      print('Digite apenas uma letra.');
      continue;
    }

    if (tentativas.contains(entrada)) {
      print('Já tentou essa.');
      continue;
    }

    tentativas.add(entrada);

    if (!palavra.contains(entrada)) {
      erros++;
      print('Errou! ${maxErros - erros} tentativa(s) restante(s).');
    } else {
      print('Certa!');
    }
  }

  _desenharForca(erros);
  print('\nGame over! A palavra era: $palavra');
}

void _desenharForca(int erros) {
  var linhas = [
    '  +---+',
    '  |   |',
    '${erros >= 1 ? "  O" : "   "}   |',
    '${erros >= 4 ? " /|\\\\" : erros >= 3 ? " /|" : erros >= 2 ? "  |" : "   "}   |',
    '${erros >= 6 ? " / \\\\" : erros >= 5 ? " /" : "   "}   |',
    '      |',
    '=========',
  ];
  print('\n${linhas.join('\n')}');
}