Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}



Future<int> fetchData() {
  return Future.delayed(Duration(seconds: 1), () {
    throw Exception("ไม่สามารถเชื่อมต่อเซิร์ฟเวอร์ได้");
  });
}

void getData() async {
  String data = await middleFunction();  // รอจนได้ค่าจริง
  print(data);
}


Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello");
}

Future<String> fetchUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'สมชาย');
}

Future<int> fetchUserAge() async {
  return Future.delayed(Duration(seconds: 1), () => 20);
}

void getData2() async {
  try {
    String data = await middleFunction();
    print(data);
  } catch (err) {
    print("เกิดข้อผิดพลาด: $err");
  }
}

Future<String> middleFunction2() {
  return Future.delayed(Duration(seconds: 2), () => "Hello");
}

Stream<String> getUserName2() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}
void main() async{

  print("Start");
  getUserName().then((value) => print(value));
  print("End");

  print("กำลังดึงข้อมูล...");
  fetchData()
      .then((value) => print("ได้ข้อมูล: $value"))
      .catchError((error) => print("เกิดข้อผิดพลาด: $error"));


  print("Start");
  getData();
  print("End");

  print("เริ่มโหลดข้อมูลผู้ใช้...");

  String name = await fetchUserName();
  int age = await fetchUserAge();       

  print("ผู้ใช้: $name อายุ $age ปี");

  print("Start");
  getData2();
  print("End");

    await for (String name in getUserName2()) {
    print(name);
  }
  print("รับข้อมูลครบแล้ว");
}