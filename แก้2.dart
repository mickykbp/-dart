class SimpleCalc { // สร้าง class SimpleCalc เพิ่อเก็บค่าตัวเลขจำนวนเต็ม
  int value ;
  SimpleCalc(this.value) ; // Constructors ของ SimpleCalc เพื่อให้ค่าสามารถเรียกใช้งานได้
  calculate([int x = 2]) => value += x ; // กำหนดค่าแอร์โรฟังก์ชั่น ให้ x มีค่า = 2 แล้วบวกเพิ่มค่า x ไปเก็บที่ value
}

class MutiCalc extends SimpleCalc { // มีการใช้ extends SimpleCalac
  MutiCalc(super.value) ; // Constructors MutiCalc และใช้ super ในการยืมข้อมูลมาจาก class แม่
  @override
  calculate([int x = 1]) { // ให้ x มีค่าเริ่มต้นที่ 1 จากนั้นเอาค่า value ไป * กับ x จากนั้นมีการเรียกใช้ calculate ของคลาสแม่ และ + ค่า x ที่กำหนดใน classแม่ SimpleCalc
    value *= x ;
    super.calculate(x) ;
  }
}

void main(List<String> args) {
  var calx = MutiCalc(8) ; // สร้างตัวแปร calx จากคลาส MutiCalc โดยกำหนดค่าเริ่มต้นของ value คือ 8
  calx.calculate() ; // มีการเรียกใช้ calcuate คือการ เอา 8 มาคูณกับ 1 ใน class Multicalc
  print("value of calx ${calx.value}") ; // แสดงค่า calx ที่คำนวณแล้ว
  var caly = MutiCalc(5) ; // สร้างตัวแปร caly จาก class MutiCalc โดยกำหนดค่าเริ่มต้นของ value คือ 5
  caly.calculate(5) ; // มีการเรียกใช้ calculate ก็คือ จำนำ 5 ไปคูณกับ 5 และนำไปบวกเพิ่มอีก 5
  print("value of caly ${caly.value}") ; // แสดงค่า caly ที่คำนวณแล้ว
} // คมิก บัวทรัพย์ 1120
