import 'package:factory_desing_pattern/dart_example.dart';
import 'package:flutter/material.dart';

void main() {

  /// Dart Example initialization
  Employee employee1 = Employee.employeeType(EmployeeType.programmer);
  employee1.work();
  Employee employee2 = Employee.employeeType(EmployeeType.hr);
  employee2.work();
  Employee employee3 = Employee.employeeType(EmployeeType.accountant);
  employee3.work();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factory design pattern',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text("Factory design Pattern"),
        ),
      ),
    );
  }
}
