void main() {
  List<Map<String, dynamic>> candidatos = [
    {
      'codigo': '6767',
      'curso': 'SI-Sistemas de Informação',
      'nome': 'Adriano',
      'sexo': 'M',
      'pontuação': 2900,
    },
    {
      'codigo': '8924',
      'curso': 'SI-Sistemas de Informação',
      'nome': 'Gabriel',
      'sexo': 'M',
      'pontuação': 2300,
    },
    {
      'codigo': '9111',
      'curso': 'SI-Sistemas de Informação',
      'nome': 'Smith',
      'sexo': 'M',
      'pontuação': 2000,
    },
    {
      'codigo': '3566',
      'curso': 'CC-Ciência da Computação',
      'nome': 'Eduardo',
      'sexo': 'M',
      'pontuação': 3300,
    },
    {
      'codigo': '7002',
      'curso': 'CC-Ciência da Computação',
      'nome': 'Eliza',
      'sexo': 'F',
      'pontuação': 2500,
    },
    {
      'codigo': '5612',
      'curso': 'SI-Sistemas de Informação',
      'nome': 'Luana',
      'sexo': 'F',
      'pontuação': 2700,
    },
    {
      'codigo': '0591',
      'curso': 'CC-Ciência da Computação',
      'nome': 'Marcio',
      'sexo': 'M',
      'pontuação': 2800,
    },
  ];

  int maior_pontuacao_m = 0;
  int menor_pontuacao_m = 5000;
  String candidato_menor_pontuacao_m = "";

  int candidatas_m = 0;
  int candidatos_m = 0;

  var candidatos_com_mais_de_2500_pontos = [];

  for (var candidato in candidatos) {
    if (candidato['pontuação'] > 2500 &&
        candidato['curso'] == 'CC-Ciência da Computação') {
      candidatos_com_mais_de_2500_pontos.add(candidato);
    }

    if (candidato['sexo'] == 'M' &&
        candidato['pontuação'] < menor_pontuacao_m) {
      menor_pontuacao_m = candidato['pontuação'];
      candidato_menor_pontuacao_m =
          "é ${candidato['nome']} com $menor_pontuacao_m";
    }

    if (candidato['sexo'] == 'M' &&
        candidato['pontuação'] > maior_pontuacao_m &&
        candidato['curso'] == 'SI-Sistemas de Informação') {
      maior_pontuacao_m = candidato['pontuação'];
      print(
        "A maior pontuação entre os candidatos de SI do sexo masculino é de ${candidato['nome']}, com código ${candidato['codigo']} e com pontuação de $maior_pontuacao_m",
      );
    }

    if (candidato['sexo'] == 'F') {
      candidatas_m++;
    } else {
      candidatos_m++;
    }
  }

  print(
    "Candidatos que fizeram mais de 2500 pontos. $candidatos_com_mais_de_2500_pontos",
  );
  print(
    "Candidato com menor pontuação entre os do sexo masculino: $candidato_menor_pontuacao_m",
  );
  double percentual_candidatas =
      (candidatas_m / (candidatas_m + candidatos_m)) * 100;
  print("O percentual de candidatas é de $percentual_candidatas%");
  double percentual_candidatos =
      (candidatos_m / (candidatas_m + candidatos_m)) * 100;
  print("O percentual de candidatos é de $percentual_candidatos%");
}
