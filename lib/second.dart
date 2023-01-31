import 'package:flutter/material.dart';
import 'package:second/first.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: ElevatedButton(child: Text("go to first page"),onPressed: () {

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return first();
        },));

        Navigator.pushNamed(context, "/first");
      },),

    );
  }
}
