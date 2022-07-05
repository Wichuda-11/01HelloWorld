//variables and data type in dart
//int > integer (number without decimals)
//double > real number (number with decimals)
//num > integer or real number
//bool > boolean (true or false)
//String > string
//dynamic > changable data type (default variable data type)
//Lists > duplicatable data array ซ้ำได้
//Sets > unique data array ซ้ำไม่ได้
//Maps > key and value array

void main() {
  //default value of unassigned varible is "null"
  //use "$" to use inline variable with string
  int intX = 5;
  double douY = 10.25;
  bool booDone = false;
  String strName = "Wichuda";
  String strLastName = "Ampin";

  print("Dart02-01 Variable : string, integer, double, and boolean");
  print("String Variable is $strName $strLastName");
  print("My Name is $strName $strLastName");
  print("Integer Variabel is $intX\nDouble Variable is $douY");
  print("Boolean Variable is $booDone");
  print("---------------------------------------------------------");

  //use var,final,const to define nontype variable (duck type)
  //can not change value of final and const data type variable
  //final is suitable for class and function ค่าคงที่เปลี่ยนไม่ได้
  //const is suitable for variable ค่าคงที่เปลี่ยนได้
  var varFirstName = "Samart";
  final finAge = 30;
  const conStatus = "Single";
  print("Dart02-02 var, final, and const");
  print("$varFirstName is $conStatus with $finAge years old.");

  varFirstName = "Somsak";
  print("$varFirstName is $conStatus with $finAge years old.");
  print("---------------------------------------------------------");

  //use ${} to calculate with variable
  print("Dart02-03 display calculated result");
  print("Next year $varFirstName will be ${finAge + 5} years old.");
  print("Next 10 years $varFirstName will be ${finAge + 10} years old.");
  print("---------------------------------------------------------");

  //use DateTime.now() to get present date and time ปัจจุบัน
  //use method "toString().substring(start position,stop position)" to capture string
  print("Dart02-04 date and time");
  print("Now is ${DateTime.now()}");

  final finNow = new DateTime.now();
  final finDate = finNow.toString().substring(0, 10);
  final finTime = finNow.toString().substring(11, 19);
  String strYear = finNow.toString().substring(0, 4);
  String strMount = finNow.toString().substring(5, 7);
  print("Today is $finDate");
  print("This time is $finTime");
  print("this year is $strYear");
  print("this mount is $strMount");
  print("---------------------------------------------------------");

  //use toString to convert number to string
  print("Dart02-05 convert to string");
  String strX = intX.toString();
  String strY = douY.toString();
  print("String intX and douY is $strX and $strY");
  print("---------------------------------------------------------");
}
