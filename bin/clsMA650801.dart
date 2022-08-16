import 'dart:math';

class MA {
  double douForecast = 0.0;
  double douRMSE = 0.0;
  List<double> lstVal = [];
  List<double> lstForecast = [];
  List<double> lstError = [];
  int intPeriod = 0;

  void cal({required List<double> lstVal, required int intPeriod}) {
    this.lstVal = lstVal;
    this.intPeriod = intPeriod;
    calForecast();
    calRMSE();
  }

  void calForecast() {
    double douSum = 0;
    for (var i = lstVal.length - 1; i >= lstVal.length - this.intPeriod; i--) {
      douSum = douSum + lstVal[i];
    }
    this.douForecast = douSum / this.intPeriod;
  }

  void calRMSE() {
    for (var i = 0; i <= lstVal.length - this.intPeriod - 1; i++) {
      double douSum = 0;
      double douMean = 0;
      double douError = 0;
      for (var x = 0; x < this.intPeriod; x++) {
        douSum = douSum + lstVal[i + x];
      }
      douMean = douSum / this.intPeriod;
      douError = lstVal[this.intPeriod + i] - douMean;
      lstForecast.add(douMean);
      lstError.add(douError);
    }
    double douSumSquare = 0;
    for (var i = 0; i < lstError.length; i++) {
      douSumSquare = douSumSquare + pow(lstError[i], 2);
    }
    this.douRMSE = sqrt(douSumSquare / lstError.length);
  }
}
