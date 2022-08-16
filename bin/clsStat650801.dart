import 'dart:math';



class DS {

  int intCount = 0;

  double douMin = 0.0;

  double douMax = 0.0;

  double douAverage = 0.0;

  double douStD = 0.0;

  double douVariance = 0.0;

  double douCV = 0.0;

  List<double> lisVal = [];



  void statCal({

    required List<double> lisVal

  }){

    this.lisVal = lisVal;

    this.intCount = lisVal.length;

    calMinMaxAverage();

    calStD();

    calCV();

    calVariance();

  }
  void calMinMaxAverage() {
    double douSum = 0.0;

    this.douMin = lisVal[0];

    this.douMax = lisVal[0];

    for (var element in lisVal) {
      if (element > this.douMax) {
        this.douMax = element;
      }

      if (element < this.douMin) {
        this.douMin = element;
      }

      douSum = douSum + element;
    }

    this.douAverage = douSum / this.intCount;
  }

  void calStD() {
    double douTemp = 0.0;

    for (var element in lisVal) {
      douTemp = douTemp + pow((element - this.douAverage), 2);
    }

    this.douStD = sqrt(douTemp / this.intCount);
  }

  void calVariance() {
    double douVar = 0.0;
    this.douVariance = douVar + pow(this.douStD, 2);
  }

  void calCV() {
    this.douCV = this.douStD / this.douAverage;
  }
}
