import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class egogo extends StatefulWidget {
  const egogo({Key? key}) : super(key: key);

  @override
  State<egogo> createState() => _egogoState();
}

class _egogoState extends State<egogo> {
  TextEditingController ctrPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Egogo"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Phone Number'
              ),),
            ElevatedButton(onPressed: () async{
                Navigator.pop(
                    context, ctrPhone.text);
            },child: Text("Submit"))
          ],),),);}}
