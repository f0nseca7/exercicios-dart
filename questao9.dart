void main() {
  for (int i = 1000; i <= 9999; i++) {
    String numero = i.toString().padLeft(4, '0');

    String primeiro = numero.substring(0, 2);
    String segundo = numero.substring(2, 4);

    int soma = int.parse(primeiro) + int.parse(segundo);

    if (soma * soma == i) {
      print("Número encontrado: $i");
    }
  }
}
