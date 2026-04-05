import 'dart:io';

void main() {
  List<List<String>> labirinto = [
    ['#', '#', '#', '#', '#', '#', '#'],
    ['#', 'E', ' ', ' ', '#', ' ', '#'],
    ['#', '#', ' ', '#', '#', ' ', '#'],
    ['#', ' ', ' ', ' ', ' ', ' ', '#'],
    ['#', ' ', '#', '#', '#', ' ', '#'],
    ['#', ' ', ' ', ' ', '#', 'S', '#'],
    ['#', '#', '#', '#', '#', '#', '#'],
  ];

  int linhaJogador = 1;
  int colunaJogador = 1;
  bool venceu = false;

  labirinto[linhaJogador][colunaJogador] = 'J';

  void exibirLabirinto() {
    print('\nLabirinto:');
    for (var i = 0; i < labirinto.length; i++) {
      print(labirinto[i].join(' '));
    }
    print('');
  }

  while (!venceu) {
    exibirLabirinto();

    print('Digite um comando para mover o jogador:');
    print('w = cima | s = baixo | a = esquerda | d = direita');
    String? comando = stdin.readLineSync();

    int novaLinha = linhaJogador;
    int novaColuna = colunaJogador;

    if (comando == 'w') {
      novaLinha--;
    } else if (comando == 's') {
      novaLinha++;
    } else if (comando == 'a') {
      novaColuna--;
    } else if (comando == 'd') {
      novaColuna++;
    } else {
      print('Comando inválido.');
      continue;
    }

    if (labirinto[novaLinha][novaColuna] == '#') {
      print('Movimento bloqueado por obstáculo.');
      continue;
    }

    if (labirinto[novaLinha][novaColuna] == 'S') {
      labirinto[linhaJogador][colunaJogador] = ' ';
      linhaJogador = novaLinha;
      colunaJogador = novaColuna;
      labirinto[linhaJogador][colunaJogador] = 'J';
      exibirLabirinto();
      print('Parabéns! Você chegou à saída do labirinto.');
      venceu = true;
      break;
    }

    labirinto[linhaJogador][colunaJogador] = ' ';
    linhaJogador = novaLinha;
    colunaJogador = novaColuna;
    labirinto[linhaJogador][colunaJogador] = 'J';
  }
}
