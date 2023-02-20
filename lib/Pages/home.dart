import 'package:eight/Pages/lower.dart';
import 'package:eight/Pages/upper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String display="0";


  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: UpperPage(display:display),
                    flex: 1,
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      child: LowerPage(herobig:(String data){setState(() {
                        display=data;
                      });},),
                    flex: 2,
                    fit: FlexFit.tight,
                  ),
                ],
              )
          ),
        )
    );
  }
}





