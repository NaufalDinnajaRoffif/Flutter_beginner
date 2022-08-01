import 'package:flutter/material.dart';
import 'package:naja/Second.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myPhone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Registrasi"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),),
            Container(height: 20,),
            TextField(
              controller: ctrPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),),
            SizedBox(height: 10,),
            Text("Select Gender", style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 1;
                      });}),
                Text("Male"),
              ],),
            Row(
              children: [
                Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 2;
                      });}),
                Text("Female"),
              ],),
            Text("Phone : "+myPhone),
            ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const egogo()),);
                  print("hasil : "+result.toString());
                  setState(() {
                    myPhone = result.toString();
                  });
                }, child: Text("Submit"),),
            Center(
              child : Container(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit")),
              ))],),),);}}
