// import 'package:escribo/escribo.dart' as escribo;
import 'package:escribo/console_utils.dart';

void main(List<String> arguments) {
  print('Olá! Bem vindo ao primeiro desafio da Escribo.');
  try {
    var numero =
        ConsoleUtils.lerIntComTexto("Digite um número POSITIVO e INTEIRO: ");

    int somatorio = 0;

    for (int i = 3; i < numero!; i++) {
      // O menor valor possível para ser aceito no somatório, dado as restrições
      // do desafio, é o número 6. Então o loop não será executado caso o número
      // seja menor que 6.

      if ((i % 3 == 0 || i % 5 == 0) && numero > 5) {
        somatorio += i;
      }
    }

    print("O resultado da operação é: $somatorio");
    if (somatorio == 0) {
      print(
          "Caso tenha recebido 0, significa que o seu número não atende ao critério de soma em nenhum momento.");
    }
  } catch (e) {
    print("Digite um número válido!\nErro: $e");
  }
}
