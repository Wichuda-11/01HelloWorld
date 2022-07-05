//must start operation with method main()
//run program by select menu Run>Run Without Debuging
//view program result in "DEBUG CONSOLE"

void main() {
  //display message to console
  print("Dart01-01 basic print command");
  print("Hello boy");
  print("-------------------------------------------");

  //print multiple strings by using "+"
  print("Dart01-02 join string in print command");
  print("I love Dart." + " I Try Dart.");
  print("-------------------------------------------");

  //usr "\n to start a new line"
  print("Dart01-03 new line in print command");
  print("My name is wichuda\nfrom BC BEC NU");
  print("123\n456");
  print("-------------------------------------------");

  //use triple single qoute or triple double qoute to auto new line ขึ้นบรรทัดใหม่ตาม
  print("Dart01-04 multiple lines in print command");
  print("""Address
  397/23 M.7
  Thapo Muang Phitsanulok
  Phitsanulok 65000""");
  print("""
  123
  456
  789""");
  print("-------------------------------------------");

  //print in raw mode by using r before string โชว์ทั้งหมด
  //in raw mode "\n" will be ignored
  print("Dart01-04 raw mode in print command");
  print(r"My name is wichuda\nfrom BC BEC NU");
  print("-------------------------------------------");
}
