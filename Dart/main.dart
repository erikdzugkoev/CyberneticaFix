import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'pow.dart';


void main() {
  stdout.write('number = ');
  var num = double.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')));
  stdout.write('exponent = ');
  var exponent = double.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')));
  print(Pow(num, exponent));
}