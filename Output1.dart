void printStringLength(String? maybeString) {
 
  if (maybeString != null) {
    print('Length (check): ${maybeString.length}');
  } else {
    print('String is null (check)');
  }


  print('Length (?.): ${maybeString?.length}');


  int length = maybeString?.length ?? 0;
  print('Length (??): $length');
}


class MyClass {
  late String description; 

  void initialize() {
    description = 'Initialized Description';
  }

  void printDescription() {
    print(description); 
  }
}

void main(){

  String course = 'Flutter Fundamentals';
  int chapter = 2;
  double progress = 0.1;
  bool completed = false;

  print(course);
  print(chapter);
  print(progress);
  print(completed);

  final String appName = 'My Flutter App';
  print(appName);
  final timeNow = DateTime.now();
  print(timeNow);
  const double pi = 3.14159;
  print(pi);
  const minutesInHour = 60;
  print(minutesInHour);


var simpleList = [1, 2, 3]; 
print(simpleList[0]); 

List<String> names = ['Alice', 'Bob', 'Charlie'];
print(names.length); 
names.add('David'); 
print(names); 


var list1 = [1, 2];
var list2 = [0, ...list1, 4]; 
print(list2);


bool includeZero = true;
var list3 = [
  if (includeZero) 0, 
  for (var i in list1) i * 2 
]; 
print(list3);


var scores = {
  'Alice': 90,
  'Bob': 85, 
};
print(scores['Alice']); 

Map<String, String> capitals = {
  'Thailand': 'Bangkok',
  'Japan': 'Tokyo',
};
capitals['USA'] = 'Washington D.C.'; 
print(capitals); 
print(capitals.containsKey('Japan')); 



  int a = 5;
  int b = 2;
  print('a + b = ${a + b}'); 
  print('a / b = ${a / b}'); 
  print('a ~/ b = ${a ~/ b}'); 
  print('a % b = ${a % b}'); 

  print('a == 5 is ${a == 5}'); 
  print('a != b is ${a != b}'); 

  printStringLength('Hello');
  print('---');
  printStringLength(null);
  print('---');

  String? nullableName;
  

  String nonNullableName;
  

  MyClass myObject = MyClass();
  myObject.initialize();
  myObject.printDescription();


var fruits = ['Apple', 'Banana', 'Orange'];
for (var fruit in fruits) {
  print('I like $fruit');
}


String command = 'OPEN';
switch (command) {
  case 'CLOSED':
    print('Command is CLOSED');
    break;
  case 'PENDING':
    print('Command is PENDING');
    break;
  case 'OPEN': 
  case 'APPROVED':
    print('Command is OPEN or APPROVED');
    break;
  default:
    print('Unknown command');
}


}