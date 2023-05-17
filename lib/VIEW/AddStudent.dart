import 'dart:html';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student/MODEL/Student.dart';
import 'package:student/VIEW/HomePage.dart';


class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {

  late String name, dept, email, imageUrl, level;
  void _doTask(){
    Student newStudent = Student(name, dept, email, imageUrl, level);
    newStudent.addStudent(name, dept, email, imageUrl, level);

  }

  final picker = ImagePicker();
  File? _pickedImage;

  Future<void> pickImageFromGallery() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _pickedImage = File(0 as List<Object>,pickedImage.path);
      }
    });
  }

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
                TextField(
                  decoration: InputDecoration(
                    label: Text('Student Name:'),
                    icon: Icon(Icons.person),
                  ),
                  onChanged: (val){
                    name = val;
                  },
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      label: Text('Student Department:'),
                      icon: Icon(Icons.apartment_rounded)
                  ),
                  onChanged: (val){
                    dept = val;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text('Student Email:'),
                    icon: Icon(Icons.email),
                  ),
                  onChanged: (val){
                    email = val;
                  },
                ),

                TextField(
                  decoration: InputDecoration(
                    label: Text('Student Level:'),
                    icon: Icon(Icons.auto_graph),
                  ),
                  onChanged: (val){
                    level = val;
                  },
                ),
                //Image Picker for picking our image
                ElevatedButton(
                  onPressed: pickImageFromGallery,
                  child: Text('Student Image'),
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
