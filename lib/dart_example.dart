import 'package:flutter/cupertino.dart';

enum EmployeeType {
  programmer,
  hr,
  accountant,
}

abstract class Employee {
  void work();

  factory Employee.employeeType(EmployeeType type) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hr:
        return HRManager();
      case EmployeeType.accountant:
        return Accountant();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    debugPrint("Write Code");
  }
}

class HRManager implements Employee {
  @override
  void work() {
    debugPrint("recruiting people");
  }
}

class Accountant implements Employee {
  @override
  void work() {
    debugPrint("responsible of salaries");
  }
}
