//8
void main(){
  print('Car Rental Company Management System!');
  print('======================================================');

  List<Employee> employees = [];
  employees.add(Employee('Mahmoud', 30, 'Engineer'));
  employees.add(Employee('Ahmed', 25, 'Artist'));
  
  print('All Employees: ${Employee.count}');
  for (var emp in employees) {
    emp.displayEmployee();
    print("=======================================================");
  }


  List<Car> cars = [];
  cars.add(Tesla('Tesla 123', 80000));
  cars.add(Toyota('Toyota 456', 30000));
  cars.add(BMW('BMW 789', 60000));


  testDrive(cars);
  print('======================================================');


  double dailyRate = 100.0; 
  int rentalDays = 5;
  double income = RentalCalculator.calculateIncome(dailyRate, rentalDays);
  
  print('Total Income from Rentals: \$${income.toStringAsFixed(2)}');
  print('======================================================');

 
  DayOfWeek today = DayOfWeek.Friday;
  
  switch (today) {
    case DayOfWeek.Friday:
      print("No Rentals Today - Weekend");
      break;
    default:
      print("Rentals are Available");
      break;
  }
  print('======================================================');
}
//1
class Person {
  String? _name;
  int? _age;

  String get name => _name!;
  int get age => _age!;
  set name(String name) => _name = name;
  set age(int age) => _age = age;

  Person(this._name, this._age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}
//2
class Employee extends Person{
  String? _position;
  static int count = 0;
  set position(String position) => _position = position;
  String get position => _position!;

  Employee(String name, int age, this._position) : super(name, age) {
    count++;
  }

  void displayEmployee() {
    print('Employee Name: $name, Age: $age, Position: $_position');
  }

}
//3
class Car {
  String? _name;
  double? _price;

  String get name => _name!;
  double get price => _price!;
  set name(String name) => _name = name;
  set price(double price) => _price = price;

  Car(this._name, this._price);

  void start() {
    print('Car Started');
  }
}
//4
class Tesla extends Car {
  Tesla(String name, double price) : super(name, price);

  @override
  void start() {
    print('Tesla Started Silently');
  }
}

class Toyota extends Car {
  Toyota(String name, double price) : super(name, price);

  @override
  void start() {
    print('Toyota Engine Started');
  }
}

class BMW extends Car {
  BMW(String name, double price) : super(name, price);

  @override
  void start() {
    print('BMW Roars!');
  }
}

//5
testDrive(List<Car> cars) {
  for (var car in cars) {
    car.start();
  }
}
//6
class RentalCalculator {
  static double calculateIncome(double dailyRate, int days) {
    return dailyRate * days;
  }
}
//7
enum DayOfWeek { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }