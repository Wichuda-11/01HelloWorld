import "classGetValue.dart"; //import class to get string, interger, and double
import "package:intl/intl.dart"; //import to use class NumberFormat()
//config "console": "terminal", in luanch.json to enable to get value from keyboard "DEBUG CONSOLE" can not operate
//add "intl: ^0.17.0" in the first line of "dependencies:" in pubspec.yaml
//to use "package:intl/intl.dart"
import "dart:io"; //use dart:io to connect keyboard

void main() {
  stdout.write("Please input your username : ");
  String strUsername = stdin.readLineSync().toString();
  print("Your username is $strUsername");

  var objDou2Format = NumberFormat('#,###,##0.00');
  stdout.write("Please input your income (THB/week) : ");
  double douIncome = double.parse(stdin.readLineSync().toString());
  print("Your income is ${objDou2Format.format(douIncome * 4)} (THB/month)");
  print("------------------------------------------------------");

  factorial(); //call factoria() function
  divisible(); //call divisible() function

  print("--------------------end of program--------------------");
}

void factorial() {
  var objDouble2formatter = NumberFormat("#,###,##0.00");
  //while loop
  //1.initial counter 2.counter condition 3.counter adjust
  GetValue objGetNum = GetValue();
  int intNum =
      objGetNum.getInt(strValueName: "based number", intMin: 1, intMax: 20);
  double douResult = 1.0;
  int intCountA = intNum;
  while (intCountA > 0) {
    douResult = douResult * intCountA;
    intCountA--;
  }
  print("$intNum! = ${objDouble2formatter.format(douResult)}");

  print("------------------------------------------------------");
}

void divisible() {
  GetValue objGetNum = GetValue();
  //break and continue in for loop
  int intStart =
      objGetNum.getInt(strValueName: "start number", intMin: 0, intMax: 99);
  int intStop = objGetNum.getInt(
      strValueName: "stop number", intMin: intStart + 1, intMax: 100);
  int intStep =
      objGetNum.getInt(strValueName: "step number", intMin: 1, intMax: 20);
  int intCountB = 0;
  List<String> lisNum = [];
  for (var i = intStart; i < 101; i++) {
    if (i == intStop + 1) {
      break; //stop then exit loop
    } else if (i % intStep != 0) {
      continue; //stop then go to next loop
    } else {
      lisNum.add(i.toString());
      intCountB++;
    }
  }
  String strTemp = "";
  for (var element in lisNum) {
    strTemp = strTemp + element + ",";
  }
  strTemp = strTemp.substring(0, strTemp.length - 1);
  print(
      "Between $intStart-$intStop there are $intCountB numbers ($strTemp) that are divisible by $intStep");
}
