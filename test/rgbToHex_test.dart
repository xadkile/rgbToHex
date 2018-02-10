import 'package:rgbToHex/rgbToHex.dart';
import 'package:test/test.dart';

void main() {

  test('toHex input lower than 16', () {
    expect(toHex(12), "0"+12.toRadixString(16));
  });

  test('toHex input higher than 16',(){
    expect(toHex(17),"11");
  });

  test('toHex input = 16',(){
    expect(toHex(16),"10");
  });

  test("convertRgb 1",(){
    expect(convertRgb("12", "13", "14"), "#0c0d0e");
  });

  test("convertRgb 2",(){
    expect(convertRgb("12", "0", "14"), "#0c000e");
  });

  test("convertRgb throws exception",(){
    try{
      convertRgb("12", "aa", "14");
    } on ValueParsingException catch(e){
       expect(e.message, "PARSING ERR: \"aa\" is not a valid number");
    }
  });

  test("convertRgb negative value",(){
    try{
      convertRgb("-2", "12", "66");
    } on ValueOutOfRangeException catch(e){
      expect(e.message,"VALUE ERR: \"-2\" is out of 0->255 range");
    }
  });

  test("convertRgb value > 255",(){
    try{
      convertRgb("288", "12", "66");
    } on ValueOutOfRangeException catch(e){
      expect(e.message,"VALUE ERR: \"288\" is out of 0->255 range");
    }
  });
}
