class ChangeDeviseListener {
  static double changeFCFAToEuro(String montant) {
    int i = int.parse(montant);
    return i / 550;
  }

  static double changeFCFAToDollar(String montant) {
    int i = int.parse(montant);
    return i / 655;
  }

  static double changeFCFAToYen(String montant) {
    int i = int.parse(montant);
    return i / 5.5;
  }
}
