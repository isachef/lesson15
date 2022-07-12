import 'dart:ffi';
import 'dart:io';

void main() {
  // Kelvin pop = Kelvin();
  // pop.convert(32);
  // Tiles spain = Tiles('sss', 12, 12, 100);
  // spain.getDate();
  // Tiles italy = Tiles('SSSS', 12, 12, 120);
  //  italy.getDate();
  // Children isa = Children();
  // Children lop = Children();
  // isa.enterData();
  // isa.printData();
  // lop.enterData();
  // lop.printData();
  // Soda kola = Soda();
  // kola.Show_my_drink();
  // Worker isa = Worker();
  // isa.rate = 500;
  // isa.days = 16;
  // isa.getSalary();
  // Car mersedes = Car('po', 'S', 1000, 'krutoy', 123, 321);
  // mersedes.printCarSetting();
  // Lorry vaz = Lorry(1000000, 'cc', 'a', 2000000, 'david', 2000, 909);
  // vaz.printCarSetting();
  // vaz.start();
  // tonnelAndTrain tt = tonnelAndTrain(200, 100, 44, 22);
  // tt.check();
  Hamburger lop = Hamburger();
  lop.choseSize();
  lop.chooseStuffing();
  lop.printInfo();
}

//1
abstract class BaseConverter {
  convert(int g);
}

class Kelvin implements BaseConverter {
  @override
  convert(int g) {
    print('K=${g - 273}*');
  }
}

class Fareng implements BaseConverter {
  @override
  convert(int g) {
    print('F=${(g - 32) / 1.8}*');
  }
}

//2
class Tiles {
  String? brand;
  int? size_h, size_w, price;
  Tiles(this.brand, this.size_h, this.size_w, this.price);
  getDate() {
    print('brand=$brand,price=$price');
  }
}

//3
class Children {
  String? _name, _lastName;
  int? _age;

  enterData() {
    print('enter name');
    _name = stdin.readLineSync()!;
    print('enter lastname');
    _lastName = stdin.readLineSync()!;
    print('print age');
    _age = int.parse(stdin.readLineSync()!);
  }

  printData() {
    print('name=$_name,lastname=$_lastName,age=$_age');
  }
}

//4
class Soda {
  String? dobavka;
  Soda([dobavla]);
  Show_my_drink() {
    if (dobavka == null) {
      print('regular soda');
    } else {
      print('soda and $dobavka');
    }
  }
}

//5
class Worker {
  String? name, lastName;
  int? rate, days;
  getSalary() {
    print('your salary=${rate! * days!}');
  }
}

//6
mixin Engine {
  int power = 1;
  int a = 1;
}

class Driver {
  String? fio;
  Driver(this.fio);
}

class Car extends Driver with Engine {
  String marka, clas;
  int weight;
  Car(this.marka, this.clas, this.weight, fio, powwer, aa) : super(fio) {
    power = powwer;
    a = aa;
  }
  void start() {
    print('start');
  }

  void stop() {
    print('stop');
  }

  void turnRigt() {
    print('turn right');
  }

  void turnLeft() {
    print('turn left');
  }

  printCarSetting() {
    print(
        'marka=$marka; class=$clas; weight=$weight; power=$power; A=$a;FIO=$fio');
  }
}

class Lorry extends Car {
  int maxWei;
  Lorry(this.maxWei, super.marka, super.clas, super.weight, super.fio,
      super.powwer, super.aa);
}

class SportCar extends Car {
  int maxSpeed;
  SportCar(this.maxSpeed, super.marka, super.clas, super.weight, super.fio,
      super.powwer, super.aa);
}

//7
class tonnelAndTrain {
  int w, h, train_w, train_h;
  tonnelAndTrain(this.w, this.h, this.train_w, this.train_h);
  check() {
    if (w > train_w && h > train_h) {
      print('all is ok');
    } else {
      print('all is not ok');
    }
  }
}

//8
class Hamburger {
  int som = 0;
  int calorie = 0;
  String your_ham = '';
  choseSize() {
    print('----------------------');
    print('you can choose \nbig or small \nhamburger');
    print('----------------------');
    print('choose size');
    String check = stdin.readLineSync()!;
    if (check == 'big') {
      your_ham = your_ham + check + ' humburger with ';
      som += 100;
      calorie += 40;
    } else if (check == 'small') {
      your_ham = your_ham + check + ' humburger with ';
      som += 50;
      calorie += 20;
    } else {
      print('error');
      choseSize();
    }
  }

  chooseStuffing() {
    print('choose stuffing');
    print('----------------------');
    print('you can choose \ncheese \npotato\nsallate');
    print('----------------------');
    String check = stdin.readLineSync()!;
    if (check == 'cheese') {
      your_ham = your_ham + check + ' ';
      som += 10;
      calorie += 20;
    } else if (check == 'sallate') {
      your_ham = your_ham + check + ' ';
      som += 20;
      calorie += 5;
    } else if (check == 'potato') {
      your_ham = your_ham + check + ' ';
      som += 15;
      calorie += 10;
    } else {
      print('error');
      chooseStuffing();
    }
    print('do you want more');
    check = stdin.readLineSync()!;
    if (check == 'yes') {
       your_ham += 'and ';
      chooseStuffing();
    }
  }

  printInfo() {
    print('$your_ham\ntotal price=$som,total calories=$calorie');
  }
}
