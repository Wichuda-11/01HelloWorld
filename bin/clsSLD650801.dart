import 'dart:math';

class SLD {
  double douAssetValue = 0.0;

  int intLife = 0;

  double douDepreciation = 0.0;

  void calSLD({required double douAssetValue, required int intLife}) {
    this.douAssetValue = douAssetValue;

    this.intLife = intLife;

    this.douDepreciation = douAssetValue / intLife;
  }
  
}
