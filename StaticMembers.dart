class Circle{
  static const double pi = 3.14159;
  double radius;
  Circle(this.radius);

  static double area(double r){
    return pi*r*r;
  }
}
void main(){
  print("ค่าpi = ${Circle.pi}");
  print("พื้นที่วงกลมรัศมี 5 + ${Circle.area(5)}");
}