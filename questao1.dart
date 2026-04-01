import 'dart:io';

void main() {
  const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};
  var exit = false;
  double valorPedido = 0;
  while (!exit) {
    print(
      'Escolha uma opção' +
          '\n1 - Fazer novo pedido' +
          '\n2 - Sair do programa',
    );
    String? opc = stdin.readLineSync();
    switch (opc) {
      case '1':
        var escolha;
        while (escolha != 0) {
          print("Bolos disponíveis: " + boloPrecos.keys.toString());
          print(
            'Digite o nome do sabor que deseja adicionar ao pedido' +
                ' ou digite f para finalizar o pedido',
          );
          escolha = stdin.readLineSync();
          if (escolha == 'f') {
            break;
          }
          if (!boloPrecos.containsKey(escolha)) {
            print('$escolha não está no cardápio');
          } else {
            valorPedido += boloPrecos[escolha]!;
          }
        }
        print(valorPedido);
        break;
      case '2':
        print('Finalizando programa...');
        exit = true;
        break;
      default:
        print('Opção inválida');
        break;
    }
  }
}



