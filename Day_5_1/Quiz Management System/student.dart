class Student {
  String? _studentID;
  String? _name;
  double? _grade;

  set studentID(String id) => _studentID = id;
  set name(String name) => _name = name;
  set grade(double grade) => _grade = grade;

  //String get studentID => _studentID!;
  //String get name => _name!;
  //String get grade => _grade!;

  Student(this._studentID, this._name, this._grade);

  String getStudentID() => _studentID!;
  String getName() => _name!;
  double getGrade() => _grade!;

}