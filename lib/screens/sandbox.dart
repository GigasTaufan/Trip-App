import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0.0;
  double _opacity = 1.0;
  Color _color = Colors.blue;
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(milliseconds: 500),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _margin = 50.0;
                });
              },
              child: Text('Animate Margin'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.purple;
                });
              },
              child: Text('Animate Update Color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 500;
                });
              },
              child: Text('Animate Width'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('Animate Opacity'),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 500),
              child: Text(
                'Hide Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
