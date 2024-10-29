class Animal{ // สร้างคลาสขึ้นมาเพื่อสร้าง method soun คือ void sound ที่ทำการ แสดงค่าข้อความ ผ่าน void main เพื่อแสดงค่า
    void sound(){
        print ("The animal makes a sound") ;
    }
}

class Pig extends Animal { // มีการ extends ข้อมูลจาก Animal คือการนำ method sound ใน Animal มาใช้และเปลี่ยนค่าเฉพาะของในคลาสตัวเอง
    void sound() {
        print ("The Pig says: wee wee") ;
    }
}

class Dog extends Animal{
    void sound() {
        print("The dog says: bow bow") ;
    }
}

void sound(Animal Asound) { // เป็นฟังก์ชั่นเก็บข้อมูลที่ class ไหนมี Animal จะเก็บค่าในคค่านี้แทน และเป็นการเรียกใช้ method sound ที่อยู่ใน class แต่ละ class
    Asound.sound() ;
}
void main(List<String> args) {
  Animal myAnimal = Animal() ;
  Pig myPig = Pig() ;
  Dog myDog = Dog() ;

  sound(myAnimal) ;
  sound(myPig) ;
  sound(myDog) ;
} // คมิก บัวทรัพย์ 1120