import 'package:flutter/material.dart';
import 'package:students_app/screens/add_student_widget.dart';
import 'package:students_app/screens/edit.dart';

import '../db/functions/model/function.dart';
import '../model/data_model.dart';

// class ListStudentWidget extends StatefulWidget {
//  ListStudentWidget({super.key} )

// @override
//   State<ListStudentWidget> createState() => _ListStudentWidgetState();
// }

//  class _ListStudentWidgetState extends State<ListStudentWidget> {
//   // String search = '';
//   // List<StudentModel> searchedList = [];
//   // loadStudent() async {
//   //   final allStudents = await getAllStudentList();
//   //   setState(() {
//   //     searchedList = allStudents;
//   //   });
//   // }

//   // @override
//   // void initState();
//   // searchResult();
//   // loadStudent();
//   // super.initState();

// // void searchResult(){
// //   setState((){
// //     searchedList=studentListNotifier.value
// //     .where((StudentModel)=>
// //     StudentModel.name.toLowerCase().contains(search.toLowerCase));)
// //     .toList();
// // }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
//           leading: IconButton(
//             onPressed: (){

//             },
//       icon:Icon(Icons.arrow_back)),
//     ),body:Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(25.0),
//           child: TextFormField(
//             decoration: inputDecoration(
//               border:OutlineInputBorder(),
//               hintText:'Search',
//               prefixIcon:Icon(Icons.search)),
//             onChanged:(value){
//               setState((){
//                 search=value;
//               });
//               searchResult();
//               }),
//            ),
//            ValueListenableBuilder(valueListenable: studentListNotifier,
//             builder: (BuildContext ctx,List<StudentModel>studentList,
//             Widget?child){
//              return ListView.separated(
//                itemBuilder: (ctx,index){
//                  final data=searchedList[index];
//                  return ListTile(
//                    onTap: () {
//                     // navigator(context,data);
//                    },
//                    title: Text(data.name),
//                    subtitle: Text(data.age),
//                    leading: CircleAvatar(backgroundImage: data.image!=null
//                    ?FileImage(File(data.image!))
//                    :AssetImage('asset\image.jpg')
//                    as ImageProvider),
//                    trailing: Row(
//                      mainAxisSize:MainAxisSize.min,
//                      children: [
//                        IconButton(onPressed: () {
//                          deleteStudent(index);
//                        },
//                      icon:const Icon(Icons.delete)
//                      ),

//   }

//             }

// // navigator(BuildContext context,StudentModel student){
// //   Navigator.push(context,
// //    MaterialPageRoute(
// //     builder: (context)=>StudentDetails(student:student),
// //   ));
// // }
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
              return ListTile(
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
