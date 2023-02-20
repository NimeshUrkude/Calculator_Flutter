import 'package:flutter/material.dart';
import "const.dart";

class Buton extends StatefulWidget {
  final int colthem;
  final String value;
  final Function(String)? hero;
  const Buton({Key? key,required this.colthem,required this.value,required this.hero}) : super(key: key);

  @override
  State<Buton> createState() => _ButonState();
}

class _ButonState extends State<Buton> {
  @override
  Widget build(BuildContext context) {
    return(
      TextButton(
        onPressed: (){
          ///print(widget.value);
          widget.hero!(widget.value);
          },
        style: TextButton.styleFrom(
          minimumSize:Size.zero,
          padding:EdgeInsets.zero,
        ),
        child: Container(
          child:Center(
            child:Text(
              widget.value,
              style: TextStyle(
                fontSize: 35.0,
                color: txt[widget.colthem],
              ),
            ),
          ),
          height: 75.0,
          width: 75.0,
          decoration:BoxDecoration(
              color: bac[widget.colthem],
              borderRadius: BorderRadius.circular(75.0)
          ),
        ),
      )
    );
  }
}





