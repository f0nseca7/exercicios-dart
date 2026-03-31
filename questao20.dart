import 'dart:io';

void main() {
  List<List<String>> labirinto = [
    ['#', '#', '#', '#', '#', '#', '#'],
    ['#', 'E', ' ', ' ', '#', ' ', '#'],
    ['#', ' ', '#', ' ', '#', ' ', '#'],
    ['#', ' ', '#', ' ', ' ', ' ', '#'],
    ['#', ' ', ' ', '#', '#', ' ', '#'],
    ['#', '#', ' ', ' ', ' ', 'S', '#'],
    ['#', '#', '#', '#', '#', '#', '#'],
  ];

  int x = 1;
  int y = 1;

  stdin.echoMode = false;
  stdin.lineMode = false;

  while (true) {
    limparTela();
    mostrarLabirinto(labirinto, x, y);

    int tecla = stdin.readByteSync();

    int novoX = x;
    int novoY = y;

    if (tecla == 119) novoX--; // W
    if (tecla == 115) novoX++; // S
    if (tecla == 97) novoY--; // A
    if (tecla == 100) novoY++; // D

    if (labirinto[novoX][novoY] != '#') {
      x = novoX;
      y = novoY;
    }

    if (labirinto[x][y] == 'S') {
      limparTela();
      mostrarLabirinto(labirinto, x, y);
      print("\nSaída encontrada.");
      break;
    }
  }
}

void mostrarLabirinto(List<List<String>> labirinto, int px, int py) {
  for (int i = 0; i < labirinto.length; i++) {
    for (int j = 0; j < labirinto[i].length; j++) {
      if (i == px && j == py) {
        stdout.write('P ');
      } else {
        stdout.write('${labirinto[i][j]} ');
      }
    }
    print('');
  }
}

void limparTela() {
  print("\x1B[2J\x1B[0;0H");
}