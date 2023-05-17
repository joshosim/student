import 'package:flutter/material.dart';
import 'package:student/MODEL/Student.dart';
import 'package:student/VIEW/AddStudent.dart';
import 'package:student/VIEW/displayStudentData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Data',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (_)
              => DisplayStudentData(
                name: students[index].name,
                department: students[index].department,
                email: students[index].email,
                level: students[index].level,
                //imageUrl: students[index].imageUrl,

              )));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(students[index].name,
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text(students[index].department,
                        style: TextStyle(fontSize: 18),)
                    ],
                  ),
                  IconButton(onPressed: (){

                  },
                      icon: const Icon(Icons.delete,color: Colors.black,)),
                ],
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (_){
              return AddStudentPage();
          })
          );
        },//_addStudent,
        tooltip: 'Add Student',
        child: const Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
