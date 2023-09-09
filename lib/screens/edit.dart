import 'package:flutter/material.dart';
import 'package:students_app/db/functions/model/function.dart';
import 'package:students_app/model/data_model.dart';

import 'list _student_widget.dart';

class EditStudentList extends StatefulWidget {
  final String name;
  final String age;
  final int index;

  EditStudentList({required this.name, required this.age, required this.index});

  @override
  State<EditStudentList> createState() => _EditStudentListState();
}

class _EditStudentListState extends State<EditStudentList> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.name);
    _ageController = TextEditingController(text: widget.age);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Name'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _ageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Age',
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    updateAll();
                  },
                  child: Text('Update')),
            ],
          ),
        ));
  }

  updateAll() {
    final editname = _nameController.text.trim();
    final editage = _ageController.text.trim();

    if (editname.isEmpty || editage.isEmpty) {
      return;
    } else {
      final update = StudentModel(
        name: editname,
        age: editage,
      );

      editStudentDetails(widget.index, update);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ListStudentWidget()));
    }
  }
}
