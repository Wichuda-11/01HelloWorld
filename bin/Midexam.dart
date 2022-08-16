import "clsGV650801.dart";
import "clsEOQ650801.dart";
import "clsMA650801.dart";
import 'clsPS.dart';
import 'package:intl/intl.dart';

void main() {
  var objGV = GetValue();

  print("-- Operation Management Calculation -------------------------");

  print("Please Select");

  print("\t> Economic Order Quantity (E)");

  print("\t> Moving Average Forecasting (M)");

  print("\t> Price Setting (P)");

  String strCal = objGV.getString(
      strValueName: "Calculation Category", intMin: 1, intMax: 1);

  strCal = strCal.toUpperCase();

  switch (strCal) {
    case "E":
      print("-- EOQ Calculation ------------------------------------");
      calEoQ();

      break;

    case "M":
      print("-- Moving Average Forecasting ------------------------------");
      calMA();

      break;

    case "P":
      calPS();

      break;

    default:
      print("invalid Selected Choice. Try to select Again");
  }

  print("---------------------end of program--------------------------");
}

void calEoQ() {
  var objVal = GetValue();
  var objEOQ = EOQ();
  var objFormat0 = NumberFormat("#,##0");
  var objFormat2 = NumberFormat("#,###,##0.00");

  double douDemand = objVal.getDouble(
      strValueName: "Demand",
      douMin: 1,
      douMax: 1000000,
      strUnit: "units/year");
  double douOrderingCost = objVal.getDouble(
      strValueName: "Ordering Cost",
      douMin: 1,
      douMax: 1000000,
      strUnit: "THB/time");
  double douHoldingCost = objVal.getDouble(
      strValueName: "Holding Cost",
      douMin: 1,
      douMax: 1000000,
      strUnit: "THB/units/year");
  objEOQ.calEOQ(
      douDemand: douDemand,
      douOrderCost: douOrderingCost,
      douHoldCost: douHoldingCost);

  print("---------------------------------------------------------------");
  print("EOQ \t\t(units/time) \t= ${objFormat0.format(objEOQ.intEOQ)}");
  print("Order \t\t(times) \t= ${objFormat0.format(objEOQ.intOrder)}");
  print(
      "Ordering Cost \t(THB/year) \t= ${objFormat2.format(objEOQ.douTotalOrderingCost)}");
  print(
      "Average Stock \t(units) \t= ${objFormat2.format(objEOQ.douAverageStock)}");
  print(
      "Holding Cost \t(THB/year) \t= ${objFormat2.format(objEOQ.douTotalHoldingCost)}");
  print(
      "Total Cost \t(THB/year) \t= ${objFormat2.format(objEOQ.douTotalCost)}");
}

void calMA() {
  var objVal = GetValue();
  var objMA = MA();
  var objFormat2 = NumberFormat("#,###,##0.00");

  String strDataName =
      objVal.getString(strValueName: "Data Name", intMin: 2, intMax: 10);
  int intDataLength =
      objVal.getInt(strValueName: "Data Length", intMin: 1, intMax: 20);
  int intPeriod =
      objVal.getInt(strValueName: "Moving Period", intMin: 1, intMax: 10);

  print("-------------------------------------------------------------");
  if (intPeriod < intDataLength) {
    List<double> lstVal = objVal.getListDouble(
        strValueName: strDataName,
        intList: intDataLength,
        douMin: 0.0,
        douMax: 1000.0);
    objMA.cal(lstVal: lstVal, intPeriod: intPeriod);
    print("-------------------------------------------------------------");
    print("Forecast Value \t= ${objFormat2.format(objMA.douForecast)}");
    print("RMSE \t\t= ${objFormat2.format(objMA.douRMSE)}");
  } else {
    print("Period should be less than data size");
  }
}


void calPS() {
  var objGV = GetValue();

  var objPS = PS();

  var objDou2Format = NumberFormat('#,###,##0.00');
  print("-- Price Setting --------------------------------------------");

  double douCost = objGV.getDouble(
      strValueName: "Cost", douMin: 1.0, douMax: 1000000.0, strUnit: "THB");
  double douProfit = objGV.getDouble(
      strValueName: "Profit Rate", douMin: 0.0, douMax: 100.0, strUnit: "%");
  print("\tProfit on cost (C)");
  print("\tProfit on price (P)");
  String strType =
      objGV.getString(strValueName: "Type (C/P)", intMin: 1, intMax: 1);
  strType = strType.toUpperCase();
  objPS.calPS(douCost: douCost, douProfit: douProfit);
  
  switch (strType) {
    case "C":
      print("Price \t= ${objDou2Format.format(objPS.douPriceC)} THB");
      print("Profit \t= ${objDou2Format.format(objPS.douProfitC)} THB");
      break;
    case "P":
      print("Price \t= ${objDou2Format.format(objPS.douPriceP)} THB");
      print("Profit \t= ${objDou2Format.format(objPS.douProfitP)} THB");
      break;
    default:
      print("invalid selected choice. try to select again");
  }
}
