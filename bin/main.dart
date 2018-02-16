#!/usr/bin/env dart
import 'package:rgbToHex/rgbToHex.dart' as rgbToHex;
import "dart:io";
void main(List<String> args){
  if(args.length !=3){
    print("toHex r g b");
    return;
  }else {
    try {
      print(rgbToHex.convertRgb(args[0], args[1], args[2]));
    } on rgbToHex.ValueParsingException catch(exception) {
      print(exception.message);
    } on rgbToHex.ValueOutOfRangeException catch(exception){
      print(exception.message);
    }
  }
}