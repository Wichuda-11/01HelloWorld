import 'dart:math';

class EOQ {
  int intOrder = 0;
  int intEOQ = 0;
  double douTotalOrderingCost = 0.0;
  double douAverageStock = 0.0;
  double douTotalHoldingCost = 0.0;
  double douTotalCost = 0.0;

  void calEOQ ({
    required double douDemand,
    required double douOrderCost,
    required double douHoldCost,
  }) {
    this.intEOQ = sqrt(2 * douDemand * douOrderCost / douHoldCost).ceil();
    this.intOrder = (douDemand / intEOQ).ceil();
    this.douTotalOrderingCost = this.intOrder * douOrderCost;
    this.douAverageStock = this.intEOQ / 2;
    this.douTotalHoldingCost = douAverageStock * douHoldCost;
    this.douTotalCost = douTotalOrderingCost + douTotalHoldingCost;
  }
  
}