import 'dart:html';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student/MODEL/Student.dart';
import 'package:student/VIEW/HomePage.dart';
import 'package:student/VIEW/WIDGETS/textfield.dart';


class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  late TextEditingController txtVal;

  late String name, dept, email, /*imageUrl,*/ level;
  void _doTask(){
    Student newStudent = Student(name, dept, email, /*imageUrl,*/ level);
    newStudent.addStudent(name, dept, email, /*imageUrl,*/ level);

  }

  // final picker = ImagePicker();
  // File? _pickedImage;
  //
  // Future<void> pickImageFromGallery() async {
  //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     if (pickedImage != null) {
  //       _pickedImage = File(0 as List<Object>,pickedImage.path);
  //       imageUrl = _pickedImage as String;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              children: [
                MiniTextField(name: name, labelName: 'Student Name:', icon: Icons.person,textValue: txtVal,),
                SizedBox(height: 10,),
                MiniTextField(name: dept, labelName: 'Student Department:', 
                  icon: Icons.apartment_rounded,textValue: txtVal,),
                MiniTextField(name: email, labelName: 'Student Email:', icon: Icons.email,textValue: txtVal,),
                MiniTextField(name: level, labelName: 'Student Level:', icon: Icons.auto_graph,textValue: txtVal,),
                SizedBox(height: 10,),
                //Image Picker for picking our image
                ElevatedButton(
                  onPressed: null,//pickImageFromGallery,
                  child: Text('Student Image'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    backgroundColor: Colors.blue
                  ),
                ),
              ],
            ),

            ListTile(
              onTap: (){
                setState(() {
                  _doTask();
                  Navigator.push(context, MaterialPageRoute(builder:
                      (_) => HomePage(),
                  ));
                });

              },
              title: Center(
                  child: Text('Add Student',
                    style: TextStyle(fontWeight: FontWeight.bold),)),
                  contentPadding: EdgeInsets.all(10),
                  tileColor: Colors.yellow,
                   shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
