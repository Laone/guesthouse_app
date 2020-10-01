import 'package:flutter/material.dart';
import 'package:guest_house/models/room.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List<Room> rooms = [
    Room(roomId: 'one', occupancy: 3),
    Room(roomId: 'two', occupancy: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Room availability for Month'),
          centerTitle: true,
        ),
        body: Table(
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              for (var i = 1; i < 31; i++)
                TableCell(
                    child: Text(
                  i.toString(),
                ))
            ]),
            for (var room in rooms)
              TableRow(
                  decoration: BoxDecoration(color: Colors.lightBlue[300]),
                  children: [
                    for (var i = 0; i < 30; i++)
                      TableCell(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 5),
                            child: Text(
                              'Room ${room.roomId}',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                      )
                  ])
          ],
        ));
  }
}
