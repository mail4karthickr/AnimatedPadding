import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  @override
  _AnimatedPaddingWidgetState createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.import_export), onPressed: () {
            if (paddingValue == 10) {
              paddingValue = 30;
            } else {
              paddingValue = 10;
            }
            setState(() {
              paddingValue = paddingValue;
            });
          },)
        ],
      ),
      body: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(paddingValue),
          duration: Duration(seconds: 1),
          curve: Curves.linear,
          child: Image.network('https://source.unsplash.com/random/800x600'),
        ),
      ),
    );
  }
}
