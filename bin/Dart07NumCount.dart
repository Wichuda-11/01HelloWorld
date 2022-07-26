import "classCountNum.dart";
import "classGetValue.dart";
import "package:intl/intl.dart";

void main(List<String> arg) {
  var objCountNum = CountNum();
  var objGetVal = GetValue();
  var objFInt = NumberFormat("#,##0");
  int intResultPoint = 0;
  int intResultNum = 0;

  print("Counting Number");
  int intStart = 
      objGetVal.getInt(strValueName: "start number", intMin: 1, intMax: 100);
  int intStop =
      objGetVal.getInt(strValueName: "stop number", intMin: intStart + 1, intMax: 10000);
  int intCounting =
      objGetVal.getInt(strValueName: "counting number", intMin: 0, intMax: 9);

  for (var i = intStart; i <= intStop; i++) {
    intResultPoint = intResultPoint + objCountNum.count(i, intCounting);
    if (objCountNum.count(i, intCounting) !=0){
      intResultNum++;
    }
  }
  print(
      "There are '${objFInt.format(intResultPoint)}' points of $intCounting in '${objFInt.format(intResultNum)}' numbers from $intStart to ${objFInt.format(intStop)}");
  print("--------------------end of program--------------------");
}