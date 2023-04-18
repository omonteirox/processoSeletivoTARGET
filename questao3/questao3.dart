import 'dart:convert';
import 'dart:io';

void main() {
  final file = File('questao3/dados.json');
  final jsonData = json.decode(file.readAsStringSync());
  double menorValor = double.infinity;
  double maiorValor = -double.infinity;
  double totalFaturado = 0.0;
  int diasAcimaDaMedia = 0;
  for (final item in jsonData) {
    final valor = item['valor'] as double;

    if (valor == 0) {
      continue;
    }

    if (valor < menorValor) {
      menorValor = valor;
    }

    if (valor > maiorValor) {
      maiorValor = valor;
    }

    totalFaturado += valor;
  }
  final diasFaturamento = jsonData.length;
  final diasUteis =
      DateTime(DateTime.now().year, DateTime.now().month + 1, 0).weekday - 1;
  final diasSemFaturamento = diasUteis - diasFaturamento;
  final mediaMensal = totalFaturado / diasFaturamento;
  for (final item in jsonData) {
    final valor = item['valor'] as double;
    if (valor > mediaMensal) {
      diasAcimaDaMedia++;
    }
  }

  print('Menor valor de faturamento: R\$ ${menorValor.toStringAsFixed(2)}');
  print('Maior valor de faturamento: R\$ ${maiorValor.toStringAsFixed(2)}');
  print('Dias com faturamento acima da média: $diasAcimaDaMedia');
}
