import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        title: Text(
          'Restful Stays Guesthouse',
        ),
        centerTitle: true,
      ),
      body: Container(
          child: FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              icon: Icon(Icons.calendar_today),
              label: Text('go to calendar'))),
    );
  }
}
