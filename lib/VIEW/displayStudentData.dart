import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student/VIEW/iconicon.dart';

class DisplayStudentData extends StatelessWidget {
  final String name;
  final String department;
  final String email;
  final String level;
  final String pickedImage;

  const DisplayStudentData({
    Key? key,
    required this.name,
    required this.department,
    required this.email,
    required this.level,
    required this.pickedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            pickedImage != null
                ? Image.file(
                    pickedImage! as File,
                    height: 400,
                  )
        //if the file is not empty it will show the image else it will show the container below
                :Container(
                    child: const Center(
                      child: Text(
                        '404',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ),
            const SizedBox(height: 400),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        department,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        level,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Text(
                        '84',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButtonn(
                  text: 'CALL',
                  icon: Icons.phone,
                ),
                IconButtonn(
                  text: 'ROUTE',
                  icon: Icons.send,
                ),
                IconButtonn(
                  text: 'SHARE',
                  icon: Icons.share,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(28.0),
              child: Text(
                'Request payload: If you are sending a payload along with the POST '
                'request, check if the payload is correctly formatted and follows the'
                ' expected structure. Make sure all required fields are included and '
                'there are no syntax errors. Validation errors: The 400 Bad Request'
                ' error can also occur if the server performs input validation on '
                'the request payload and detects errors. Review any validation logic'
                ' implemented in the server-side code and ensure that the request'
                ' payload meets the required constraints.'
                'Request payload: If you are sending a payload along with the POST '
                'request, check if the payload is correctly formatted and follows the'
                ' expected structure. Make sure all required fields are included and '
                'there are no syntax errors. Validation errors: The 400 Bad Request'
                ' error can also occur if the server performs input validation on '
                'the request payload and detects errors. Review any validation logic'
                ' implemented in the server-side code and ensure that the request'
                ' payload meets the required constraints.',
                style: TextStyle(),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
