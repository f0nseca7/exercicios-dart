import 'dart:io';

void main() {
  List<List<String>> tabuleiro = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  String jogadorAtual = 'X';
  bool venceu = false;
  int jogadas = 0;

  void exibirTabuleiro() {
    print('\n    0   1   2 (colunas)');
    for (var i = 0; i < 3; i++) {
      print('$i   ${tabuleiro[i][0]} | ${tabuleiro[i][1]} | ${tabuleiro[i][2]}');
      if (i < 2) {
        print('   -----------');
      }
    }
    print('(linhas)\n');
  }

  bool analisarVitoria(String jogador) {
    for (var i = 0; i < 3; i++) {
      if (tabuleiro[i][0] == jogador &&
          tabuleiro[i][1] == jogador &&
          tabuleiro[i][2] == jogador) {
        return true;
      }
    }

    for (var j = 0; j < 3; j++) {
      if (tabuleiro[0][j] == jogador &&
          tabuleiro[1][j] == jogador &&
          tabuleiro[2][j] == jogador) {
        return true;
      }
    }

    if (tabuleiro[0][0] == jogador &&
        tabuleiro[1][1] == jogador &&
        tabuleiro[2][2] == jogador) {
      return true;
    }

    if (tabuleiro[0][2] == jogador &&
        tabuleiro[1][1] == jogador &&
        tabuleiro[2][0] == jogador) {
      return true;
    }

    return false;
  }

  while (!venceu && jogadas < 9) {
    exibirTabuleiro();

    print('Jogador $jogadorAtual, digite a linha (0, 1 ou 2):');
    String? linhaInput = stdin.readLineSync();

    print('Jogador $jogadorAtual, digite a coluna (0, 1 ou 2):');
    String? colunaInput = stdin.readLineSync();

    int? linha = int.tryParse(linhaInput ?? '');
    int? coluna = int.tryParse(colunaInput ?? '');

    if (linha == null || coluna == null) {
      print('Entrada inválida. Digite apenas números entre 0 e 2.');
      continue;
    }

    if (linha < 0 || linha > 2 || coluna < 0 || coluna > 2) {
      print('Posição inválida. Escolha linha e coluna entre 0 e 2.');
      continue;
    }

    if (tabuleiro[linha][coluna] != ' ') {
      print('Essa posição já está ocupada. Tente novamente.');
      continue;
    }

    tabuleiro[linha][coluna] = jogadorAtual;
    jogadas++;

    if (analisarVitoria(jogadorAtual)) {
      exibirTabuleiro();
      print('Jogador $jogadorAtual venceu!');
      venceu = true;
    } else {
      if (jogadorAtual == 'X') {
        jogadorAtual = 'O';
      } else {
        jogadorAtual = 'X';
      }
    }
  }

  if (!venceu) {
    exibirTabuleiro();
    print('Empate! O tabuleiro foi preenchido sem vencedor.');
  }
}
