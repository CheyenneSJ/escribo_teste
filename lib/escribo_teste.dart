import 'dart:convert';
import 'dart:io';

int divisibleSum(int num) {
  int soma = 0;

  for (int i = 1; i < num; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }

  return soma;
}

void main() {
  print(
      'Bem vindo ao nosso somátorio de números inteiros divisíveis por 3 ou 5!');
  stdout.write('Digite um número, e aperte enter: ');
  String? input = stdin.readLineSync(encoding: utf8);

  try {
    int num = int.parse(input ?? '0');
    int result = divisibleSum(num);
    print('O somatório é: $result');
  } catch (e) {
    print('Entrada inválida. Certifique-se de digitar um número inteiro.');
  }
}
