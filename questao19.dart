import 'dart:io';

void main() {
  List<List<String>> tabuleiro = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  String jogadorAtual = 'X';
  int qntdJogadas = 0;
  bool vitoria = false;

  while (qntdJogadas < 9 && !vitoria) {
    print("\nTabuleiro:");
    mostrarTabuleiro(tabuleiro);

    print(
      "\nJogador $jogadorAtual, informe a linha e a coluna que deseja marcar(0 a 2):",
    );

    int linha = int.parse(stdin.readLineSync()!);
    int coluna = int.parse(stdin.readLineSync()!);

    if (tabuleiro[linha][coluna] == ' ') {
      tabuleiro[linha][coluna] = jogadorAtual;
      qntdJogadas++;

      if (verificarVitoria(tabuleiro, jogadorAtual)) {
        print("\nTabuleiro final:");
        mostrarTabuleiro(tabuleiro);
        print("\nJogador $jogadorAtual venceu!");
        vitoria = true;
      } else {
        jogadorAtual = (jogadorAtual == 'X') ? 'O' : 'X';
      }
    } else {
      print("Essa posição já foi marcada, tente novamente.");
    }
  }

  if (!vitoria) {
    print("\nTabuleiro final:");
    mostrarTabuleiro(tabuleiro);
    print("\nDeu velha.");
  }
}

void mostrarTabuleiro(List<List<String>> t) {
  for (int i = 0; i < 3; i++) {
    print(" ${t[i][0]} | ${t[i][1]} | ${t[i][2]} ");
    if (i < 2) print("---|---|---");
  }
}

bool verificarVitoria(List<List<String>> t, String j) {
  for (int i = 0; i < 3; i++) {
    if (t[i][0] == j && t[i][1] == j && t[i][2] == j) return true;
  }

  for (int i = 0; i < 3; i++) {
    if (t[0][i] == j && t[1][i] == j && t[2][i] == j) return true;
  }

  if (t[0][0] == j && t[1][1] == j && t[2][2] == j) return true;
  if (t[0][2] == j && t[1][1] == j && t[2][0] == j) return true;

  return false;
}