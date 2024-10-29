abstract class Greeting{ // สร้าง abstract class มี method 3 ตัว ไม่มีฟังก์ชั่นการทำงานใน class
  void Thai() ;
  void English() ;
  void Japan() ;
}

class NotYetGreet implements Greeting { // สร้าง class ที่สืบทอดมาจาก class Greeting และกำหนดค่า
  void English() {
    print("Good Morning") ;
  }

  void Japan() {
    print("Ohio") ;
  }

  void Thai() {
    print("Arun Sawad") ;
  }
}

class Greet extends NotYetGreet { // เก็บค่าทั้งหมดไว้แล้วค่อยนำมาาใช้ทีหลัง และสร้าง method void togreet เก็บข้อมูล
  void toGreet() {
    Thai() ;
    English() ;
    Japan() ;
  }
}

void main(List<String> args) {
  var output = Greet() ;
  output.toGreet() ;
} // คมิก บัวทรัพย์ 1120