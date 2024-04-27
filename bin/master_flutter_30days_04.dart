void main(List<String> arguments) {
  greet(); // Hello, World!

  print(add(3, 4)); // 7

  printInfo(name: 'John', gender: '22'); // Hello, John! You are 22.

  printInfo2(name: 'Tom', gender: '12'); // Hello Tom your gender is 12.

  say('from', 'msg'); // from says msg
  say('from', 'msg', 'device'); // from says msg with a device

  add2(11, 2); // This sum is 13
  add2(11, 2, 34); // This sum is 47

  // Anonymous functions
  const fruits = ['apple', 'banana', 'cherry'];
  fruits.forEach((fruit) {
    print(fruit);
  });

  int num1 = 100;
  int num2 = 20;
  print(sub(num1, num2)); // 80
  print(mul(num1, num2)); // 2000
  print(div(num1, num2)); // 5.0
}

void greet() {
  print('Hello, World!');
}

/// Positional parameters
int add(int a, int b) {
  return a + b;
}

/// Named parameters
void printInfo({String? name, String? gender}) {
  print('Hello, $name! You are $gender.');
}

/// Named parameters with required
void printInfo2({required String name, required String gender}) {
  print("Hello $name your gender is $gender.");
}

/// Optional parameters
void say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  print(result);
}

/// Optional parameters with default values
void add2(int num1, int num2, [int num3 = 0]) {
  int sum;
  sum = num1 + num2 + num3;

  print("The sum is $sum");
}

// Arrow functions
int sub(int a, int b) => a - b;
int mul(int a, int b) => a * b;
double div(int a, int b) => a / b;
