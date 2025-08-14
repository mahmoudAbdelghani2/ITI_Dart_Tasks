void main() {
  print("Student Academic Report System");
  print("=====================================");
  Student student1 = Student.parameterized("Mahmoud", 101, [85.5, 90.0, 78.0]);
  student1.printReport();
  Student student2 = Student.withoutGrades("Ahmed", 102);
  student2.grades = [95.0, 88.0, 92.0];
  student2.printReport(); 
  Student student3 = Student();
  student3.name = "Abdelghani";
  student3.id = 103;
  student3.grades = [70.0, 75.0, 80.0];
  student3.printReport(); 
}

class Student {
  String? _name;
  int? _id;
  List<double>? _grades=[];

  set name(String name) => _name = name;
  set id(int id) => _id = id;

  set grades(List<double> grades) {

    for (int i = 0; i < grades.length; i++) {
      double grade = grades[i];
      if (grade >= 0 && grade <= 100) {
        _grades!.add(grade);
      } else {
        print("Grade $grade is invalid. Grade must be between 0 and 100.");
      }
    }
  }

  String get name => _name!;
  int get id => _id!;
  List<double> get grades => _grades!;

  Student();

  Student.parameterized(this._name, this._id, List<double> grades) {
    this.grades = grades;
  }

  Student.withoutGrades(this._name, this._id);

  //const Student.constant(this._name, this._id, this._grades);

  double calculateGPA() {
    if (_grades!.isEmpty) return 0.0;
    double sum = 0;
    for (int i = 0; i < _grades!.length; i++) {
      sum += _grades![i];
    }
    return sum / _grades!.length;
  }

  bool get isPassed => calculateGPA() >= 60;

  void printReport() {
    print("Student Report:");
    print("Name: $_name");
    print("ID: $_id");
    print("GPA: ${calculateGPA().toStringAsFixed(2)}");
    print("Status: ${isPassed ? "Passed" : "Failed"}");
    print("================================");
  }
}
