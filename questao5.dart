void main() {

  List<Map<String, dynamic>> bebes = [
    {'nome': 'Andre', 'sexo': 'M', 'peso': 2.0},
    {'nome': 'Maria', 'sexo': 'F', 'peso': 3.0},
    {'nome': 'Joao', 'sexo': 'M', 'peso': 1.0},
    {'nome': 'Mateus', 'sexo': 'M', 'peso': 4.0},
    {'nome': 'Ana', 'sexo': 'F', 'peso': 5.0},
  ];

  int total = bebes.length;

  double baixo = 0;
  double normal = 0;
  double alto = 0;

  double maiorPesoF = 0;
  String nomeMaiorF = '';

  for (var b in bebes) {

    double peso = b['peso'];

    if (peso >= 0 && peso <= 2) {
      baixo++;
      print("${b['nome']} - ${b['sexo']} - Baixo Peso");
    }
    else if (peso > 2 && peso <= 4) {
      normal++;
      print("${b['nome']} - ${b['sexo']} - Normal");
    }
    else {
      alto++;
      print("${b['nome']} - ${b['sexo']} - Alto Peso");
    }

    if (b['sexo'] == 'F') {
      if (peso > maiorPesoF) {
        maiorPesoF = peso;
        nomeMaiorF = b['nome'];
      }
    }
  }

  double pBaixo = (baixo / total) * 100;
  double pNormal = (normal / total) * 100;
  double pAlto = (alto / total) * 100;

  print("\nPercentuais:");
  print("Baixo peso: $pBaixo%");
  print("Normal: $pNormal%");
  print("Alto peso: $pAlto%");

  print("\nMenina com maior peso: $nomeMaiorF");
}
