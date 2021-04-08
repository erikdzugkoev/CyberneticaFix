import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'parse.dart';

void main() {
  print('Enter number and exponent: ');
  final String line = stdin.readLineSync(encoding: utf8)!;
  final List<int> intItems = toIntList(line); //Преобразуем входную строку в список с числами, входящими в нее
  if (intItems.length != 2) throw Exception('Введено не два числа');

  int number = intItems[0]; //Считаем первое число основанием степени
  int exponent = intItems[1]; //Считаем второе число показателем степени

  print('\n$number^$exponent = ${pow(number, exponent)}'); //Выводим результат
}
