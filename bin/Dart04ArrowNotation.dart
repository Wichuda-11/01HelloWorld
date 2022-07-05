//arrow notation or arrow function
//arrow notation = one line method/function with one return value
void main() {
  //clone class People
  People Jib = People();

  print("Dart04-01 arrow function");
  //use method SayWord (arrow method) and method SayHi to display string
  print("Jib say ${Jib.SayWord("How are you")}");
  print("Jib say ${Jib.SayHi("Hello my friend")}");
  print("Jib say ${Jib.SayWord1("Hi student")}");
  print("---------------------------------------");
}

class People {
  SayHi(String strWord) {
    return strWord;
  }

  //arrow function/method to dispaly received string + !!! 
  String SayWord(String strWord) => strWord + "!!!";
  String SayWord1(String strWord){
    return strWord+"!!!";
  }
}
