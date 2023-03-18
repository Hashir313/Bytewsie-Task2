import 'dart:io';

void main(List<String> arguments) {
  //list is used to store the data of same or different data types
  List<int> age = [18,19,20,21,22];
  List<String> name = ['Hashir','Ahmed','Ali','Usama','Rehman'];

  //it shows the length of the list
  print(age.length);
  print(name.length);

  //print list before adding the data
  for(int i = 0 ; i < age.length ; i++){
    stdout.write('The age of ${name[i]} is ${age[i]}\n');
  }
  //if we had to add the add in list we call add function
  age.add(24);
  name.add('Tanveer');

  //print list after adding the data
  print('\n');
  for(int i = 0 ; i < age.length ; i++){
    stdout.write('The age of ${name[i]} is ${age[i]}\n');
  }

  //Now taking the data of list from the user and also taking the number of elements from the user
  int inputCount;
  String weekDaysName;
  List<String> weekDays = [];
  stdout.write('How many days are in the week: ');
  //taking input from the user
  inputCount = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the name of the weekdays:\n');
  for(int i = 0 ; i < inputCount ; i++){
    weekDaysName = stdin.readLineSync()!;
    weekDays.add(weekDaysName);
  }
  print('Following are the weekdays name that you entered\n');
  for(int i=0 ; i<weekDays.length ; i++){
    print(weekDays[i]);
  }

  //A list that contains the data of different data types
  List<dynamic> nameNumber = [21019,'Hashir',3.3,21020,'Umer',3.7,20121,'Zubair Naeem',3.35];
  nameNumber.remove('Hashir');
  nameNumber.removeAt(4);
  print(nameNumber.reversed);
  for(int i=0;i<nameNumber.length;i++){
    print(nameNumber[i]);
  }
}