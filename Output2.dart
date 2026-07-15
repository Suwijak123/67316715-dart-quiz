class Student {
  String? name;
  int? age;
  int? rollNumber;

Student(this.name, this.age, this.rollNumber);

void display(){
  print("ชื่อ: $name, อายุ: $age, เลขที่: $rollNumber");
 }
}

class BankAccount{
  double _balance = 0;
  double get balance => _balance;


set balance(double amount){
  if(amount < 0){
    print("ผิดพลาด: ยอดเงินติดลบไม่ได้");
  }else{
    _balance = amount;
  }
}

void deposit(double amount){
  if (amount > 0) _balance += amount;
 }
}

class Person{
  String? name;
  int? age;

  void display(){
    print("ชื่อ: $name");
    print("อายุ: $age");
  }
}
class Car{
  String? name;
  double? price;
}

class Tesla extends Car{
  void display(){
    print("ชื่อรุ่น: $name");
    print("ราคา: $price");
  }
}
class Model3 extends Tesla{
  String? color;

  void display(){
    super.display(); //ใช้เรียกเฉพาะclassแม่(Tesla)
    print("สี: $color");
  }
}


class Animal{
  String? name;
  Animal(this.name);
}
class Dog extends Animal{
  String breed;
  Dog(String name, this.breed): super(name);

  void info() => print("สุนัขชื่อ: $name พันธุ์: $breed");
}

abstract class Shape {
  double area();

  void describe() {
    print("รูปนี้มีพื้นที่ ${area()} ตารางหน่วย");
  }
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

class CircleS{
  static const double pi = 3.14159;
  double radius;
  CircleS(this.radius);

  static double area(double r){
    return pi*r*r;
  }
}

enum OrderStatus{pending, shipped, delivered, cancelled}

void main(){
  Student s = Student("John", 20, 1);
  s.display();

  var account = BankAccount();
  account.deposit(1000);
  account.balance = -500;
  print("ยอดเงินคงเหลือ: ${account.balance}");


  Model3 m = Model3();
  m.name = "Tesla Model 3";
  m.price = 50000.00;
  m.color = "แดง";
  m.display();

  Dog d = Dog("Booby","Golden");
  d.info();

  Shape r = Rectangle(4, 5);
  Shape c = Circle(3);
  r.describe();
  c.describe();

  print("ค่าpi = ${CircleS.pi}");
  print("พื้นที่วงกลมรัศมี 5 + ${CircleS.area(5)}");

  OrderStatus status = OrderStatus.shipped;

  switch (status){
    case OrderStatus.pending:
    print("รอดำเนินการ");
    break;
    case OrderStatus.shipped:
    print("จัดส่งแล้ว");
    break;
    case OrderStatus.delivered:
    print("ได้รับสินค้าแล้ว");
    break;
    case OrderStatus.cancelled:
    print("ยกเลิกคำสั่งซื้อ");
    break;
  }
  print("สถานะ: ${status.name}, ลำดับ: ${status.index}");
}