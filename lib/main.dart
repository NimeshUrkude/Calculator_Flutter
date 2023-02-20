import 'package:flutter/material.dart';
import "Pages/home.dart";

void main() {
  runApp(
      AppName()
  );
}

class AppName extends StatefulWidget {
  const AppName({Key? key}) : super(key: key);
  @override
  State<AppName> createState() => _AppNameState();
}


class _AppNameState extends State<AppName> {

  @override

  Widget build(BuildContext context){
    return(
        MaterialApp(
          theme: ThemeData.dark(),
          home: HomePage(),
        )
    );
  }
}

