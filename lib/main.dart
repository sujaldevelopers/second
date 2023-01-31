import 'package:flutter/material.dart';
import 'package:second/second.dart';
import 'first.dart';
//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
/*
stateless-stl
stateful-stf
Map-{key:value}
 */
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/first":(context) => first(),
      "/second":(context) => second()
    },
    initialRoute: "/first",
    // home: first(),
  ));
}

class tictactoe extends StatefulWidget {
  const tictactoe({Key? key}) : super(key: key);

  @override
  State<tictactoe> createState() => _tictactoeState();
}
class _tictactoeState extends State<tictactoe> {

  String b1="",b2="",b3="",b4="",b5="",b6="",b7="",b8="",b9="";
  int t=0,x=0,o=0;
  String turn="X",w="";
  String x1="X",o1="O";
  Color c1=Colors.pink,c2=Colors.pink,c3=Colors.pink;
  Alignment a=Alignment.center;

  temp()
  {
    b1=b2=b3=b4=b5=b6=b7=b8=b9="";
    t=x=o=0;

    w="";
    setState(() {

    });
  }
  void win()
  {
    if(b1=="X" && b2=="X" && b3=="X")
      {
        w="X";
        x1="X";
        o1="O";
        temp();
      }
    else if(b1=="X" && b4=="X" && b7=="X")
      {
        w="X";
      }
    else if(b1=="O" && b2=="O" && b3=="O")
    {
      w="O";
      x1="O";
      o1="X";
    }
    else if(b1=="O" && b4=="O" && b7=="O")
    {
      w="O";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Text("X:$x")),
              Expanded(child: Text("O:$o")),
            ],
          )),
          Expanded(flex:6,child: Column(
            children: [
              Expanded(child: Row(
                children: [
                  Expanded(child: InkWell(child: Container(child:Text("$b1",style: TextStyle(color: c1),),alignment:a,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                     if(b1=="" && w=="")
                       {
                         if(t%2==0)
                         {
                           b1=x1;
                           x++;
                           turn=o1;
                           c1=Colors.pink;
                         }
                         else{
                           b1=o1;
                           o++;
                           turn="X";
                           c1=Colors.blue;
                         }
                         t++;
                         win();
                       }
                    });
                  },),),
                  Expanded(child: InkWell(child: Container(child:Text("$b2",style: TextStyle(color: c2)),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                     if(b2=="" && w=="")
                       {
                         if(t%2==0)
                         {
                           b2=x1;
                           x++;
                           turn=o1;
                           c2=Colors.pink;
                         }
                         else{
                           b2=o1;
                           o++;
                           turn=x1;
                           c2=Colors.blue;
                         }
                         t++;
                         win();
                       }
                    });
                  },),),
                  Expanded(child: InkWell(child: Container(child:Text("$b3",style: TextStyle(color: c3)),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b3=="" && w=="")
                      {
                        if(t%2==0)
                        {
                          b3=x1;
                          x++;
                          turn=o1;
                          c3=Colors.pink;
                        }
                        else{
                          b3=o1;
                          o++;
                          turn=x1;
                          c3=Colors.blue;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                ],
              )),
              Expanded(child: Row(
                children: [
                  Expanded(child: InkWell(child: Container(child:Text("$b4"),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b4=="" && w=="")
                      {
                        if(t%2==0)
                        {
                          b4=x1;
                          x++;
                          turn=o1;
                        }
                        else{
                          b4=o1;
                          o++;
                          turn=x1;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                  Expanded(child: InkWell(child: Container(child:Text("$b5"),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b5=="" && w=="")
                      {
                        if(t%2==0)
                        {
                          b5=x1;
                          x++;
                          turn=o1;
                        }
                        else{
                          b5=o1;
                          o++;
                          turn=x1;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                  Expanded(child: InkWell(child: Container(child:Text("$b6"),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b6=="" && w=="")
                      {
                        if(t%2==0)
                        {
                          b6=x1;
                          x++;
                          turn=o1;
                        }
                        else{
                          b6=o1;
                          o++;
                          turn=x1;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                ],
              )),
              Expanded(child: Row(
                children: [
                  Expanded(child: InkWell(child: Container(child:Text("$b7"),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b7=="" && w=="")
                      {
                        if(t%2==0)
                        {
                          b7=x1;
                          x++;
                          turn=o1;
                        }
                        else{
                          b7=o1;
                          o++;
                          turn=x1;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                  Expanded(child: InkWell(child: Container(child:Text("$b8"),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b8=="" && w=="")
                      {
                        if(t%2==0)
                        {
                          b8=x1;
                          x++;
                          turn=o1;
                        }
                        else{
                          b8=o1;
                          o++;
                          turn=x1;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                  Expanded(child: InkWell(child: Container(child:Text("$b9"),alignment:Alignment.center,color: Colors.teal,margin: EdgeInsets.all(10),width:double.infinity,height:double.infinity,),onTap: () {
                    setState(() {
                      if(b9=="" && w==""  )
                      {
                        if(t%2==0)
                        {
                          b9=x1;
                          x++;
                          turn=o1;
                        }
                        else{
                          b9=o1;
                          o++;
                          turn=x1;
                        }
                        t++;
                        win();
                      }
                    });
                  },),),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Text("$turn Turn")),
              Expanded(child: w==""?Text("No one is win"):Text("$w Win")),
              Expanded(child: ElevatedButton(child: Text("Reset"),onPressed: () {
                 b1=b2=b3=b4=b5=b6=b7=b8=b9="";
                 t=x=o=0;
                turn=x1;
                  w="";
                setState(() {

                });
              },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                foregroundColor: Colors.amber,
                // onPrimary: Colors.yellow
                // primary: Colors.orange
              ),)),
            ],
          )),
        ],
      ),
    );
  }
}
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}
class _testState extends State<test> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  int sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          ElevatedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;
            //string to int
            int n1=int.parse(a);
            int n2=int.parse(b);
            sum=n1+n2;
            print(sum);
            //build method call
            setState(() {});
          },child: Icon(Icons.add),),
          Text("sum=$sum")
        ],
      ),
    );
  }
}

/*
9 button
x=
0
x turn o turn
win
reset


 */


