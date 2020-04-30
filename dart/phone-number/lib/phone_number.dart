class PhoneNumber {
  String clean(String number) {
    number = removePermittedPunctuation(number);

    if (!isNumeric(number)) return null;

    if (number.length==11 && number.startsWith('1')) number = number.substring(1);

    if (number.length!=10) return null;

    if (['0', '1'].contains(number[0]) || ['0', '1'].contains(number[3])) return null;

    return number;
  }

  String removePermittedPunctuation(String str) => str.split('').where((ch)=>
      ![".", " ", "(", ")", "-", "+"].contains(ch)).fold("", (str, elem)=>str+elem);

  bool isDigit(String ch) => ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].contains(ch);

  bool isNumeric(String str) => str.split('').every(isDigit);
}
