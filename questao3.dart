import 'dart:io';


void main() {
  int valorA = 1;
  int valorB = 0;
  int valorC = 110;
  print('Digite o número de termos: ');
  String? input = stdin.readLineSync();
  int termos = int.parse(input ?? '0');


  int i = 1;
  while (i <= termos) {
    if (i % 3 == 1) {
      if (i == 1) {
        print(valorA);
      } else {
        print(valorA *= 2);
      }
    }
    else if (i % 3 == 2) {
      print(valorB += 5);
    } else if (i % 3 == 0){
      print(valorC -= 10);
    }
    i++;
  }
}
