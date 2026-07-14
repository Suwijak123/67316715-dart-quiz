Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2)); 

  if (userId <= 0) {
    throw Exception("User ID ต้องมากกว่า 0");
  }

  
  return {"id": userId, "name": "John Doe", "role": "Admin"};
}

void main() async {
  print(" ทดสอบกรณี userId ถูก");
  try {
    var profile = await fetchProfile(1);
    print("ดึงข้อมูลเสร็จ: $profile");
  } catch (e) {
    print("เกิดข้อผิดพลาด: $e");
  } finally {
    print("การทำงานของบล็อกที่ 1 เสร็จ");
  }

  print(" ทดสอบกรณี userId ผิดพลาด ");
  try {
    var profile = await fetchProfile(0); 
    print("ดึงข้อมูลเสร็จ: $profile");
  } catch (e) {
    print("เกิดข้อผิดพลาด: $e");
  } finally {
    print("การทำงานของบล็อกที่ 2 เสร็จ");
  }
}