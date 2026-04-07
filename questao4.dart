void main() {
  
  List<Map<String, dynamic>> listaAlunos = [
    {
      'mat': '12345',
      'nome': 'Andre',
      'sexo': 'M',
      'faltas': 2,
      'notas': [8.0, 7.5, 9.0]
    },
    {
      'mat': '54321',
      'nome': 'Maria',
      'sexo': 'F',
      'faltas': 0,
      'notas': [9.0, 8.5, 9.5]
    },
    {
      'mat': '67890',
      'nome': 'Joao',
      'sexo': 'M',
      'faltas': 5,
      'notas': [6.0, 5.5, 7.0]
    },
    {
      'mat': '56896',
      'nome': 'Mateus',
      'sexo': 'M',
      'faltas': 18,
      'notas': [8.0, 4.5, 7.0]
    },
    {
      'mat': '78965',
      'nome': 'Ana',
      'sexo': 'F',
      'faltas': 20,
      'notas': [7.0, 6.5, 8.0]
    },
  ];

  int total = listaAlunos.length;
  int qtdAprovados = 0;
  int qtdReprovados = 0;

  double somaGeral = 0.0;

  double somaFem = 0.0;
  int contFem = 0;

  double maiorMediaMasc = 0.0;
  String? melhorMasc;

  double maiorMediaFem = 0.0;
  String? melhorFem;

  for (var item in listaAlunos) {
    List notasAluno = item['notas'];

    double mediaAluno = (notasAluno[0] + notasAluno[1] + notasAluno[2]) / 3;

    somaGeral += mediaAluno;

    if (mediaAluno >= 7.0 && item['faltas'] <= 18) {
      qtdAprovados++;

      if (item['sexo'] == 'M' && mediaAluno > maiorMediaMasc) {
        maiorMediaMasc = mediaAluno;
        melhorMasc = item['mat'];
      }

      if (item['sexo'] == 'F' && mediaAluno > maiorMediaFem) {
        maiorMediaFem = mediaAluno;
        melhorFem = item['mat'];
      }

    } else {
      qtdReprovados++;
    }

    if (item['sexo'] == 'F') {
      somaFem += mediaAluno;
      contFem++;
    }
  }

  double mediaSala = somaGeral / total;
  double percAprovados = (qtdAprovados / total) * 100;
  double mediaMulheres = contFem > 0 ? somaFem / contFem : 0;

  print('Media da turma: $mediaSala');
  print('Percentual de aprovados: $percAprovados%');
  print('Melhor aluno masculino aprovado: $melhorMasc');
  print('Melhor aluna feminina aprovada: $melhorFem');
  print('Media das alunas: $mediaMulheres');
}
