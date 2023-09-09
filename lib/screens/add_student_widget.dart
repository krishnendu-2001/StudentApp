// import 'package:flutter/material.dart';
// import 'package:students_app/db/functions/model/function.dart';
// import 'package:students_app/model/data_model.dart';

// import 'list _student_widget.dart';

// class AddStudent extends StatefulWidget {
//   const AddStudent({super.key});

//   @override
//   State<AddStudent> createState() => _AddStudentState();
// }
// final _nameController = TextEditingController();
// final _ageController = TextEditingController();
// final _placeController = TextEditingController();
// final _numberController = TextEditingController();
// final _imageController = TextEditingController();

// final _formKey=GlobalKey<FormState>();

// class _AddStudentState extends State<AddStudent> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.brown,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           bottom: Radius.circular(25))
//       ),),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 // CircleAvatar(
//                 //   radius: 80,
//                 //   backgroundColor: Colors.grey,
//                 //   backgroundImage: _selectedImage != null
//                 //       ? FileImage(_selectedImage!)
//                 //       : AssetImage("assets/images/profile-transformed.png")
//                 //           as ImageProvider,
//                 // ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                // ElevatedButton(
//                     // onPressed: () => {_pickImageFromGallery()},
//                     // child: Text("Pick Gallery")),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 // ElevatedButton(
//                 //     onPressed: () => {_pickImageFromcam()},
//                 //     child: Text("Pick Camera")),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(

//                     controller: _nameController,
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(), hintText: 'Name'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Value is Empty';
//                       } else {
//                         return null;
//                       }
//                     },
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(

//                     controller: _ageController,
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(), hintText: 'Age'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Value is Empty';
//                       } else {
//                         return null;
//                       }
//                     },
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     maxLength: 10,

//                     controller: _numberController,
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(), hintText: 'Number'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'name is requierd';
//                       } else {
//                         return null;
//                       }
//                     },
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     controller:_placeController,
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(), hintText: 'Address'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'name is requierd';
//                       } else {
//                         return null;
//                       }
//                     },
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 FloatingActionButton(
//                   onPressed: () {
//                     _formKey.currentState!.validate();
//                     onAddStudentButtonClicked();
//                   },
//                   child: const Icon(Icons.add),
//                 ),
//                 // label: const Text('Add Student')),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) =>  ListStudentWidget(),
//                       ));
//                     },
//                     child: const Text("View List"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//     Future<void> onAddStudentButtonClicked() async {
//     final _name = _nameController.text.trim();
//     final _age = _ageController.text.trim();
//     final _number = _numberController.text.trim();
//     final _place = _placeController.text.trim();
//     final _image= _imageController.text.trim();

//     if (_name.isEmpty || _age.isEmpty || _number.isEmpty || _place.isEmpty||_image.isEmpty) {
//       return;
//     }
//     print('$_name $_age $_number $_place');

//     final _student = StudentModel(
//         name: _name,
//         age: _age,
//         number: _number,
//         place: _place,
//          );

//     addStudent(_student);
//   }
//   }

// // import 'dart:io';

// // import 'package:flutter/material.dart';

// // import 'list _student_widget.dart';

// // class AddStudent extends StatefulWidget {
// //    AddStudent({super.key});

// //   @override
// //   State<AddStudent> createState() => _AddStudentState();
// // }

// // final _nameController = TextEditingController();
// // final _ageController = TextEditingController();
// // final _placeController = TextEditingController();
// // final _numberController = TextEditingController();
// // final _imageController = TextEditingController();

// // File? _selectedImage;
// // final _formKey=GlobalKey<FormState>();

// // @override
// // Widget build(BuildContext context) {
// //   return Scaffold(
// //     appBar: AppBar(
// //       backgroundColor: Colors.brown,
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.vertical(
// //           bottom: Radius.circular(25))
// //       ),),
// //       body: Center(
// //         child: SingleChildScrollView(
// //           child: Form(
// //             key: _formKey,
// //             child: Column(
// //               children: [
// //                 SizedBox(
// //                   height: 10,
// //                 ),
// //                 CircleAvatar(
// //                   radius: 80,
// //                   backgroundColor: Colors.grey,
// //                   backgroundImage: _selectedImage != null
// //                       ? FileImage(_selectedImage!)
// //                       : AssetImage("assets/images/profile-transformed.png")
// //                           as ImageProvider,
// //                 ),
// //                 SizedBox(
// //                   height: 10,
// //                 ),
// //                // ElevatedButton(
// //                     // onPressed: () => {_pickImageFromGallery()},
// //                     // child: Text("Pick Gallery")),
// //                 SizedBox(
// //                   width: 10,
// //                 ),
// //                 // ElevatedButton(
// //                 //     onPressed: () => {_pickImageFromcam()},
// //                 //     child: Text("Pick Camera")),
// //                 SizedBox(
// //                   height: 10,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: TextFormField(

// //                     controller: _nameController,
// //                     decoration: const InputDecoration(
// //                         border: OutlineInputBorder(), hintText: 'Name'),
// //                     validator: (value) {
// //                       if (value == null || value.isEmpty) {
// //                         return 'Value is Empty';
// //                       } else {
// //                         return null;
// //                       }
// //                     },
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: TextFormField(

// //                     controller: _ageController,
// //                     decoration: const InputDecoration(
// //                         border: OutlineInputBorder(), hintText: 'Age'),
// //                     validator: (value) {
// //                       if (value == null || value.isEmpty) {
// //                         return 'Value is Empty';
// //                       } else {
// //                         return null;
// //                       }
// //                     },
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: TextFormField(
// //                     maxLength: 10,

// //                     controller: _numberController,
// //                     decoration: const InputDecoration(
// //                         border: OutlineInputBorder(), hintText: 'Number'),
// //                     validator: (value) {
// //                       if (value == null || value.isEmpty) {
// //                         return 'name is requierd';
// //                       } else {
// //                         return null;
// //                       }
// //                     },
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: TextFormField(
// //                     controller:_placeController,
// //                     decoration: const InputDecoration(
// //                         border: OutlineInputBorder(), hintText: 'Address'),
// //                     validator: (value) {
// //                       if (value == null || value.isEmpty) {
// //                         return 'name is requierd';
// //                       } else {
// //                         return null;
// //                       }
// //                     },
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 FloatingActionButton(
// //                   onPressed: () {
// //                     _formKey.currentState!.validate();
// //                     onAddStudentButtonClicked();
// //                   },
// //                   child: const Icon(Icons.add),
// //                 ),
// //                 // label: const Text('Add Student')),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 ElevatedButton(
// //                     onPressed: () {
// //                       Navigator.of(context).push(MaterialPageRoute(
// //                         builder: (context) =>  ListStudentWidget(),
// //                       ));
// //                     },
// //                     child: const Text("View List"))
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Future<void> onAddStudentButtonClicked() async {
// //     final _name = _nameController.text.trim();
// //     final _age = _ageController.text.trim();
// //     final _number = _numberController.text.trim();
// //     final _place = _placeController.text.trim();
// //     final _image= _imageController.text.trim();

// //     if (_name.isEmpty || _age.isEmpty || _number.isEmpty || _place.isEmpty||_image.isEmpty) {
// //       return;
// //     }
// //     print('$_name $_age $_number $_place');

// //     final _student = StudentModel(
// //         name: _name,
// //         age: _age,
// //         number: _number,
// //         place: _place,
// //         image: _selectedImage!.path);

// //     addStudent(_student);
// //   }

// //   // Future _pickImageFromGallery() async {
// //   //   final returnedimage =
// //   //       await ImagePicker().pickImage(source: ImageSource.gallery);

// //   //   if (returnedimage == null) {
// //   //     return;
// //   //   }
// //   //   setState(() {
// //   //     _selectedImage = File(returnedimage.path);
// //   //   });
// //   // }

// //   // _pickImageFromcam() async {
// //   //   final returnedimage =
// //   //       await ImagePicker().pickImage(source: ImageSource.camera);

// //   //   if (returnedimage == null) {
// //   //     return;
// //   //   }
// //   //   setState(() {
// //   //     _selectedImage = File(returnedimage.path);
// //   //   });
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
          ),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
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
