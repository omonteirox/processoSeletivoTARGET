import 'dart:convert';
import 'dart:io';

void main() {
  final file = File('questao3/faturamento.json');
  final jsonString = file.readAsStringSync();
  final data = json.decode(jsonString);
  final faturamento = List<double>.from(data['faturamento']);
  double menorValor = double.infinity;
  double maiorValor = -double.infinity;
  double totalFaturado = 0.0;
  int diasComFaturamento = 0;
  for (var valor in faturamento) {
    if (valor > maiorValor) {
      maiorValor = valor;
    }
    if (valor < menorValor) {
      menorValor = valor;
    }
    if (valor > 0.0) {
      totalFaturado += valor;
      diasComFaturamento++;
    }
  }
  double mediaFaturada = totalFaturado / diasComFaturamento;

  int diasAcimaDaMedia = 0;
  for (var valor in faturamento) {
    if (valor > mediaFaturada) {
      diasAcimaDaMedia++;
    }
  }
  print("O menor valor faturado foi de $menorValor");
  print("O maior valor faturado foi de $maiorValor");
  print("A quantidade de dias com faturamento foi de $diasComFaturamento");
  print("A média faturada foi de  $mediaFaturada");
  print("Os dias com o fatuamento acima da média  $diasAcimaDaMedia");
}
