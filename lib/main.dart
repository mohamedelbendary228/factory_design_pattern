import 'package:factory_desing_pattern/dart_example.dart';
import 'package:factory_desing_pattern/flutter_example.dart';
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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Factory design pattern"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlatformButton(Theme.of(context).platform).buildButton(
                  () {
                    debugPrint("${Theme.of(context).platform}");
                  },
                  Text("${Theme.of(context).platform.name} button"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
