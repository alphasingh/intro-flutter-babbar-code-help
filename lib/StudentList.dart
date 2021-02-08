import 'package:intro/Student.dart';

class StudentList {
  List students = [
    Student("Abhay", 1),
    Student("Amrit", 2),
    Student("Global", 3),
    Student("Guest", 5),
  ];

  getStudentNameByIndex(int index) => students[index].name;
  getStudentRollByIndex(int index) => students[index].rollNo;
}
