import "classGetValue.dart";
import "package:intl/intl.dart";
import "package:meta/meta.dart";

import "dart:io";

void main() {
  var objDoubleFormat = NumberFormat('#,###,##0.00');

  //get
  print("The Match Bangkok Centuty Cup 2022");
  print("Thicket Booking System");

  stdout.write("Please input seat zone (Zone A 20,000 THB, Zone B 15,000 THB): ");
  String strZone = stdin.readLineSync().toString();
  strZone = strZone.toUpperCase();

  if (strZone=="A" || strZone=="B"){

    print("50% off when buying more than 100,000 THB");
    print("25% off when buying more than 50,000 THB");

    stdout.write("Please input ordering ticket : ");
    int intTicket = int.parse(stdin.readLineSync().toString());
    double douPriceTicket = 0.0;
    switch (strZone) {
      case "A":
        douPriceTicket =20000.0;
        break;
      case "B":
        douPriceTicket = 15000.0;
        break;
      default:
        douPriceTicket = 0.0;
    }

    double douPay = intTicket*douPriceTicket;
    double douDiscount = 0.0;

    if (douPay>100000) {
      douDiscount = 0.5;
      
    } else if (douPay>50000){
      douDiscount = 0.25;
    } else {
      douDiscount = 0.0;
    }

    double douFinalPay = douPay*(1-douDiscount);
    print("Your order is ${objDoubleFormat.format(douFinalPay)} THB with ${objDoubleFormat.format(douDiscount*100)} % discount");

  } else {
    print("invalid zone selected");
  }
  print("--------------------end of program--------------------");
}