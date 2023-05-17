
class Student{
   String name;
   String department;
   String email;
   String imageUrl;
   String level;

   Student(this.name, this.department,this.email,this.imageUrl,this.level);


   void addStudent(String nm,String dept,String email,String imgUrl,String lvl){
         students.add(Student(nm, dept,email,imgUrl,lvl));
   }
}

List<Student> students = [
   Student("Osim Uka",
       "Mechanical Engineering",
   "joshuauka@gmail.com",
       "kk/bike.jpg",
       "400"),
   Student("Chuks Edoki",
       "Mechatronic Engineering",
       "chukslinko@gmail.com",
       "kk/code.jpg",
       "500"),
   Student("Morgan Freeman",
       "Philosophy Engineering",
       "morganfree@gmail.com",
       "kk/engine.jpg",
       "300")
];
