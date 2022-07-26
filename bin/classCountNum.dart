class CountNum {
  int count(int intNum, int intAlpha){
    int intResult = 0;
    List<String> lstNum = intNum.toString().split('');

    for (var element in lstNum) {
      if (int.parse(element) == intAlpha){
        intResult++;
      }      
    }
    
    /*
    int intCount = 0;
    while (intCount <= lstNum.length){
      intCount++;
    }
    */
    /*
    int intCountB = 0;
    do {
      intCountB++; }
    while (intCount <= lstNum.length){
    }
    */
    return intResult;
  }
  
}