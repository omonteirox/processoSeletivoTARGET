void main() {
  double SP = 67836.43;
  double RJ = 36678.66;
  double MG = 29229.88;
  double ES = 27165.48;
  double Outros = 19849.53;
  double total = SP + RJ + MG + ES + Outros;

  double percentageSP = (100 * SP) / total;
  double percentageRJ = (100 * RJ) / total;
  double percentageMG = (100 * MG) / total;
  double percentageES = (100 * ES) / total;
  double percentageOutros = (100 * Outros) / total;

  print(percentageSP.toStringAsFixed(1));
  print(percentageRJ.toStringAsFixed(1));
  print(percentageMG.toStringAsFixed(1));
  print(percentageES.toStringAsFixed(1));
  print(percentageOutros.toStringAsFixed(1));
}
