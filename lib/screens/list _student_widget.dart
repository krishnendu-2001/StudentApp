import 'package:flutter/material.dart';
import 'package:students_app/screens/add_student_widget.dart';
import 'package:students_app/screens/edit.dart';
import 'package:students_app/screens/student_details.dart';

import '../db/functions/model/function.dart';
import '../model/data_model.dart';


class ListStudentWidget extends StatefulWidget {
  const ListStudentWidget({super.key});

  @override
  State<ListStudentWidget> createState() => _ListStudentWidgetState();
}

class _ListStudentWidgetState extends State<ListStudentWidget> {
  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddStudentWidget(),
                ));
              },
              icon: Icon(Icons.format_list_bulleted_add))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final data = studentList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StudentDetails(student: StudentModel(name: data.name, age: data.age)),
                  ));
                },
                child: ListTile(
                  title: Text(data.name),
                  subtitle: Text(data.age),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              deleteStudent(index);
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Color.fromARGB(255, 136, 146, 133),
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditStudentList(
                                      name: data.name,
                                      age: data.age,
                                      index: index,
                                    )));
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: studentList.length,
          );
        },
      ),
    );
  }
}
