abstract class Animal { // abstract เป็นการทำให้ class ไม่จำเป็นต้องใส่ข้อมูลตลอด
// สร้าง abstract class ชื่อ Animal และมีตัวแปรชนิด String เป็น method ที่ไม่มีฟังก์ชั่นการทำงาน
  String noise() ;
  }

class Dog extends Animal { // มีการ return ค่า back กับไปที่ class Animal
  String noise() {
    return "back" ;
  }
  }

class Cat extends Animal { // มีการ return ค่า move กับไปที่ class Animal
  String noise() {
    return "move" ;
  }
  }

  void main(List<String> args) {
  //สร้างชื่อตัวแปร dog,cat เพื่อเก็บค่า Dog,Cat
  var dog = Dog() ; 
  var cat = Cat() ;
  print("Noise of Dog: ${dog.noise()}") ;// เป็นการแสดงค่าจากการเรียกใช้ noise ของ class Dog, Cat
  print("Noise of Cat: ${cat.noise()}") ;
} // คมิก บัวทรัพย์ 1120