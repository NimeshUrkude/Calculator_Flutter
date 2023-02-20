import 'package:flutter/material.dart';
import "but.dart";

class LowerPage extends StatefulWidget {
  final Function(String)? herobig;
  const LowerPage({Key? key,required this.herobig}) : super(key: key);

  @override
  State<LowerPage> createState() => _LowerPageState();
}

class _LowerPageState extends State<LowerPage> {

  int a=0;
  bool apoint = false;
  String b="";
  int c=0;
  bool cpoint = false;
  String out="0";

  @override

  void work(String data){
    var convtonum =  num.tryParse(data);

    if(b.isEmpty && convtonum!=null) {
      a=(a*10)+ convtonum.toInt();
    }
    else if(b.isNotEmpty && convtonum!=null){
      c=(c*10)+ convtonum.toInt();
    }
    else if(convtonum==null){
      if(data=="="){
        if(b=="+"){a=a+c;}
        else if(b=="-"){a=a-c;}
        else if(b=="x"){a=(a*c);}
        else if(b=="/"){a=(a/c).toInt();}
        else if(b=="%"){a=a%c;}
        b="";
        c=0;
      }
      else if(data=="AC"){
        a=0;
        b="";
        c=0;
      }
      else{
        b = data;
      }
    }
    b.isEmpty?out=a.toString():out=a.toString() + " " + b + " " + c.toString();
    widget.herobig!(out);
  }

  Widget build(BuildContext context) {
    return (
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,children: [Buton(colthem:1,value:"=", hero:(String data){work(data);}),],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Buton(colthem:2,value:"7", hero:(String data){work(data);}),Buton(colthem:2,value:"8", hero:(String data){work(data);}),Buton(colthem:2,value:"9", hero:(String data){work(data);}),Buton(colthem:1,value:"+", hero:(String data){work(data);}),],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Buton(colthem:2,value:"4", hero:(String data){work(data);}),Buton(colthem:2,value:"5", hero:(String data){work(data);}),Buton(colthem:2,value:"6", hero:(String data){work(data);}),Buton(colthem:1,value:"-", hero:(String data){work(data);}),],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Buton(colthem:2,value:"1", hero:(String data){work(data);}),Buton(colthem:2,value:"2", hero:(String data){work(data);}),Buton(colthem:2,value:"3", hero:(String data){work(data);}),Buton(colthem:1,value:"x", hero:(String data){work(data);}),],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Buton(colthem:2,value:"0", hero:(String data){work(data);}),Buton(colthem:0,value:"AC", hero:(String data){work(data);}),Buton(colthem:0,value:"%", hero:(String data){work(data);}),Buton(colthem:1,value:"/", hero:(String data){work(data);}),],),
            ],
          ),
        )
    );
  }
}
