import 'dart:math';

class PS {
  
  double douCost = 0.0;
  double douProfit = 0.0;
  double douPriceC = 0.0;
  double douPriceP = 0.0;
  double douProfitC = 0.0;
  double douProfitP = 0.0;

  void calPS({required double douCost, required double douProfit}) {
    this.douCost = douCost;
    this.douProfit = douProfit / 100;
    calProfitOnCost();
    calProfitOnPrice();
  }

  void calProfitOnCost() {
    this.douPriceC = douCost * (1 + this.douProfit);
    this.douProfitC = douPriceC - douCost;
  }

  void calProfitOnPrice() {
    this.douPriceP = douCost / (1 - this.douProfit);
    this.douProfitP = douPriceP - douCost;
  }
}