import 'dart:math';
import 'dart:io';

void main() {

  Random r = Random();
  int numero = r.nextInt(100) + 1;

  int inicio = 1;
  int fim = 100;

  while (true) {

    print("Digite um número entre $inicio e $fim:");
    int chute = int.parse(stdin.readLineSync()!);

    if (chute == numero) {
      print("Acertou!");
      break;
    }

    if (chute > numero) {
      fim = chute;
    } else {
      inicio = chute;
    }

    print("O número está entre $inicio e $fim\n");
  }
}