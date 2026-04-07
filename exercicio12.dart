import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  String n = stdin.readLineSync()!;
  print(n.split('').reversed.join());
}