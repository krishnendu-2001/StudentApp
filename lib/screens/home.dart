import 'package:flutter/material.dart';
import 'package:students_app/db/functions/model/function.dart';
import 'package:students_app/screens/add_student_widget.dart';

import 'list _student_widget.dart';

// class StudentApp extends StatelessWidget {
//   const StudentApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     getAllStudent();
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => AddStudent(),
//               ))),
//       body: const SafeArea(
//         child: Column(
//           children: [AddStudent(),
//            Expanded(
//             child: ListStudentWidget()),],
//         ),
//       ),
//     );
//   }
// }
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentWidget()),
        ],
      )),
    );
  }
}
