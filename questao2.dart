import 'dart:math';

void main(){
  var divisores = [5, 10, 15, 20, 25, 30, 35];
  var dividendos = [3, 5, 7, 9 , 11, 13, 15];
  var potenciasPreFat = [4, 8, 12, 16, 20, 24, 28];
  List<BigInt> potenciasFinal = [];
  List<BigInt> dividendosFinal = [];
  List<BigInt> resultadosDivisao = [];

  int calcularFatorial(int potencia){ 
    for (var i = potencia - 1; i > 0; i--){
      potencia *= i;
    }
    return potencia;
  }

  for (var potencia in potenciasPreFat) {
    potenciasFinal.add(BigInt.from(calcularFatorial(potencia)));
  }
  
  for ( var p in potenciasFinal){
    print(p);
  }

  for (var i = 0; i < dividendos.length; i++){
    for (var j = 0; j < potenciasFinal.length; j++){
      print(BigInt.from(pow(dividendos[i], potenciasFinal[j].toInt())));
      dividendosFinal.add(BigInt.from(pow(dividendos[i], potenciasFinal[j].toInt())));
    }
  }

  for (var i = 0; i < dividendosFinal.length; i++){
    for (var j = 0; j < divisores.length; j++){
      print(dividendosFinal[i] ~/ BigInt.from(divisores[j]));
      resultadosDivisao.add(dividendosFinal[i] ~/ BigInt.from(divisores[j]));
    }
  }

  print(resultadosDivisao[0] + resultadosDivisao[1] + resultadosDivisao[2] + resultadosDivisao[3] - resultadosDivisao[4] + resultadosDivisao[5] - resultadosDivisao[6] + resultadosDivisao[7]);
  
}
