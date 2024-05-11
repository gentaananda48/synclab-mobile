import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormInput extends StatefulWidget {
  const FormInput({super.key});

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Input Data Gallery', style: TextStyle(color: Colors.white)),
        leading: Builder(
          builder: (BuildContext context) {
            return BackButton(
              color: Colors.white,
            );
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Upload Image",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Select File',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Divider(),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'From Camera',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(20.0)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     tooltip: 'Submit',
      //     child: Text(
      //       "Submit",
      //       style: TextStyle(color: Colors.white),
      //     )),
    );
  }
}
