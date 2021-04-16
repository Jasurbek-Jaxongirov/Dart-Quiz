import 'dart:io';

void main(List<String> arguments) {
  /* -----------------   Task 1    ------------------*/
  // Asking input for first task
  // @params age: int , name: String
  //
  String name;
  int age;
  bool trueInput = false;
  while (!trueInput)
    try {
      print('Enter your name: ');
      name = stdin.readLineSync();
      print('Enter your age: ');
      age = int.parse(stdin.readLineSync());
      trueInput = true;
    } catch (e) {
      print('Please, enter appropriate input!!');
    }

  print(task1(name: name, age: age));

  /* --------------------------  Task 2  ---------------------  */
  int numberToBeDivided;

  bool outOfLoop = false;
  while (!outOfLoop)
    try {
      print('Enter your number: ');
      numberToBeDivided = int.parse(stdin.readLineSync());
      outOfLoop = true;
    } catch (e) {
      print('Please, enter appropriate input!!');
    }

  print(task2(numberToBeDivided));
}

String task1({String name, int age}) {
  if (name == null && age == null) {
    return 'Please, enter your name and then execute the function!';
  }
  var neededYears = 100 - age;

  return '$name , you need to live $neededYears years to be 100 years old';
}

String task2(int numberToBeDiveded) {
  numberToBeDiveded ??= 0;
  int divideByTwo = numberToBeDiveded;
  int divideByThree = numberToBeDiveded;
  int divideByFive = numberToBeDiveded;
  int divideBySeven = numberToBeDiveded;
  final listOfDivisors = [];

  while (divideByTwo != 0 ||
      divideByFive != 0 ||
      divideByThree != 0 ||
      divideBySeven != 0) {
    
    if (divideByTwo % 2 == 0) {
      listOfDivisors.add(divideByTwo);
    } else if (divideByFive % 5 == 0) {
      listOfDivisors.add(divideByFive);
    } else if (divideByThree % 3 == 0) {
      listOfDivisors.add(divideByThree);
    } else if (divideBySeven % 7 == 0) {
      listOfDivisors.add(divideBySeven);
    }
    divideByTwo ~/= 2;
    divideByThree ~/= 3;
    divideByFive ~/= 5;
    divideBySeven ~/= 7;
  }

  final divisors = listOfDivisors.where((element) => element != 0);
  return '$divisors';
}
