import 'dart:math';

int fatorial(int n) {
  int f = 1;
  for (int i = 1; i <= n; i++) {
    f *= i;
  }
  return f;
}

void main() {
  int n = 10;
  double x = 2;
  double y = 0;

  int atual = 1;
  bool proximos = true;

  for (int i = 1; i <= n; i++) {
    int expoente = i + 1;

    double termo = pow(x, expoente) / fatorial(atual);
    y += termo;

    if (proximos) {
      atual++;
      if (atual == 4) proximos = false;
    } else {
      atual--;
      if (atual == 1) proximos = true;
    }
  }

  print("Soma: $y");
}
