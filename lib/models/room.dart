import 'package:flutter/material.dart';

class Room {
  String roomId;
  int occupancy;
  bool isAvail = false;

  Room({this.roomId, this.occupancy, this.isAvail});
}
