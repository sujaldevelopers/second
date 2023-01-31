import 'package:flutter/material.dart';
import 'package:second/second.dart';
//welcome
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First")),
      body: ElevatedButton(onPressed: () {

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return second();
        },));

        Navigator.pushNamed(context, "/second");

      },child: Text("Go to second page"),),
    );
  }
}
/*

 */