import 'package:flutter/material.dart';

class UpperPage extends StatefulWidget {
  final String display;
  const UpperPage({Key? key,required this.display}) : super(key: key);

  @override
  State<UpperPage> createState() => _UpperPageState();
}

class _UpperPageState extends State<UpperPage> {
  @override
  Widget build(BuildContext context) {
    return(
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            child: Text(
                widget.display,
              style: TextStyle(
                fontSize: 30.0
              ),
            ),
            padding: EdgeInsets.all(20.0),
          ),
        ],
      )
    );
  }
}





