import "dart:io";

String convertRgb(String r, String g, String b){

  int parsingErrorHandler(String source){
    throw new ValueParsingException(value: source);
  }

  //parse string to int
  int rVal = int.parse(r,radix: 10,onError: parsingErrorHandler);
  int gVal = int.parse(g,radix: 10,onError: parsingErrorHandler);
  int bVal = int.parse(b,radix: 10,onError: parsingErrorHandler);

  StringBuffer resultBuffer = new StringBuffer("#");
  //write convert int value to hex string
  resultBuffer.write(toHex(rVal));
  resultBuffer.write(toHex(gVal));
  resultBuffer.write(toHex(bVal));

  return resultBuffer.toString();

}

String toHex(int val){
  if(val<16){
    return "0"+val.toRadixString(16);
  }else{
    return val.toRadixString(16);
  }
}

class ValueParsingException implements Exception{
  String value;
  String get message => "PARSING ERR: \"$value\" is not a valid number";
  ValueParsingException({this.value});
}


