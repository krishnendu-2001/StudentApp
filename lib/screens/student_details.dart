import 'dart:io';

import 'package:flutter/material.dart';
import 'package:students_app/model/data_model.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key, required this.student});
  final StudentModel student;

  @override
  State<StudentDetails> createState() => _StudentDetailsStudent();
}

class _StudentDetailsStudent extends State<StudentDetails> {
  File? selectedimage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        title: Text('Student Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              // child:CircleAvatar(
              //   radius:80,
              //   backgroundImage:FileImage(File(
              //     widget.student.image!)),
              // ),
            ),
            _buildInfoCard("Name", widget.student.name, 350),
            _buildInfoCard("Age", widget.student.age, 350),
          ],
        ),
      ),
    ));
  }

  Widget _buildInfoCard(String title, String value, double cardWidth) {
    return Container(
      width: cardWidth,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                value,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
