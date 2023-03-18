// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:io';

class Calculator {
  int? firstNumber, secondNumber;
  var result;
  String? choice;

  Calculator({int? number1, int? number2}) {
    firstNumber = number1;
    secondNumber = number2;
  }

  Future<void> chooseOperation() async {
    stdout.write(
        'Which operation do you want to perform\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\n');
    choice = stdin.readLineSync();
    if (choice == '1') {
      result = firstNumber! + secondNumber!;
      print('Wait your answer is under process....');
      Future.delayed(
          Duration(seconds: 3),
          () => stdout.write(
              'The addition of $firstNumber and $secondNumber is $result'));
    } else if (choice == '2') {
      result = firstNumber! - secondNumber!;
      print('Wait your answer is under process....');
      Future.delayed(
          Duration(seconds: 3),
          () => stdout.write(
              'The subtraction of $firstNumber and $secondNumber is $result'));
    } else if (choice == '3') {
      result = firstNumber! * secondNumber!;
      print('Wait your answer is under process....');
      Future.delayed(
          Duration(seconds: 3),
          () => stdout.write(
              'The multiplication of $firstNumber and $secondNumber is $result'));
    } else if (choice == '4') {
      result = firstNumber! / secondNumber!;
      print('Wait your answer is under process....');
      Future.delayed(
          Duration(seconds: 3),
          () => stdout.write(
              'The division of $firstNumber and $secondNumber is $result'));
    } else {
      stdout.write('Invalid Option!\n');
    }
  }
}

void main() {
  Calculator opt1 = Calculator(number1: 23, number2: 43);
  opt1.chooseOperation();

  Map personInfo = {"name": "Hashir", "age": 18, "CGPA": 3.35};

  stdout.write('Length of the map is: ');
  print(personInfo.length);

  stdout.write('Values of Map');
  print(personInfo);
}
