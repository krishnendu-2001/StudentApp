
import 'package:flutter/material.dart';
import 'package:students_app/db/functions/model/function.dart';
import 'package:students_app/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Value is Empty';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Value is Empty';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              onAddStudentButtonClicked();
              Navigator.of(context).pop();
            },
            child: Text("ADD Student"),
          )
          // ElevatedButton(
          //   onPressed: () {
          //   onAddStudentButtonClicked();
          // },
          // label: Text('Add Student')
          // )
        ],
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();

    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name$_age');
    final _student = StudentModel(
      name: _name,
      age: _age,
    );
    addStudent(_student);
  }
}
