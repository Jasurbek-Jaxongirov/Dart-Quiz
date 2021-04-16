import 'dart:io';

void main() {
  bool terminateLoop = false;
  int inputNumber;
  print('Please, enter a positive number: ');
  while (!terminateLoop) {
    try {
      inputNumber = int.parse(stdin.readLineSync());
      if (inputNumber < 0) {
        throw 'Negative Number is entered!';
      }
      terminateLoop = true;
    } catch (e) {
      print(e);
      print('Please, enter appropriate number!');
    }
  }

  print(strong_num(inputNumber));
}

int toFactorial(int digit) {
  if (digit == 0) return digit;
  if (digit == 1) return 1;
  var count = digit;
  int factorial = 1;

  while (count >= 1) {
    factorial *= count;
    --count;
  }
  return factorial;
}

String strong_num(int input) {
  int inputCopy = input;
  List<int> inputToDigits = [];
  int remainder;
  int sum = 0;
  while (input != 0) {
    remainder = input % 10;
    input ~/= 10;
    inputToDigits.add(remainder);
  }

  for (var i = 0; i < inputToDigits.length; i++) {
    sum += toFactorial(inputToDigits[i]);
  }

  if (sum != inputCopy) {
    return 'Not Strong';
  } else {
    return 'Strong!!!';
  }
}
