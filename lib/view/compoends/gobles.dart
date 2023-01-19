import 'dart:io';

import 'package:flutter/material.dart';

class Goldes {
  static String? name;
  static String? dec;
  static String? cont;
  static File? imge;
  static bool isIos = false;
  static int k = 0;
  static int l1 = 0;
 static List mon_name = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
 static DateTime cuurentdate = DateTime.now();
 static TimeOfDay cuurentTime =
      TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
  static List<Map<String, dynamic>> l = [
    {
      "n": "Salman Khan",
      "d": "today",
      "c": 9909346081,
      "i": "assets/images/u1.png",
      "t":"2:40",
      "dy": "Yesterday,2:40 PM"
    },
    {
      "n": "Narendra Modi",
      "d": "typeing...",
      "c": 8140535450,
      "i": "assets/images/u2.png",
      "t":"8:40",
      "dy": "Today,8:40 PM"
    },
    {
      "n": "MC Stan",
      "d": "seen",
      "c": 9313433309,
      "i": "assets/images/u3.png",
      "t":"5:30",
      "dy": "March 22,5:30 PM"
    },
    {
      "n": "Virat Kohli",
      "d": "typeing...",
      "c": 8143526152,
      "i": "assets/images/u4.png",
      "t":"12:40",
      "dy": "Yesterday,12:40 PM"
    },
    {
      "n": "Sundar Pichai",
      "d": "hi",
      "c": 8651236920,
      "i": "assets/images/u5.png",
      "t":"2:40",
      "dy": "Dec 31,2:40 PM"
    },
    
    {
      "n": "Komal Dhameliya",
      "d": "ok",
      "c": 1523123652,
      "i": "assets/images/u6.jpg",
      "t":"10:40",
      "dy": "Dec 31,2:40 PM"
    },
    {
      "n": "Parth Dhameliya",
      "d": "no",
      "c": 8651236920,
      "i": "assets/images/u7.jpg",
      "t":"10:40",
      "dy": "jan 14,2:40 PM"
    },
    {
      "n": "Meet Dhameliya",
      "d": "ok",
      "c": 8651236920,
      "i": "assets/images/u8.jpg",
      "t":"10:40",
      "dy": "jan 1,2:40 PM"
    },
    {
      "n": "Zeel",
      "d": "Typeing ...",
      "c": 8651236920,
      "i": "assets/images/u9.jpg",
      "t":"10:40",
      "dy": "Dec 1,2:40 PM"
    },
    {
      "n": "Aksha",
      "d": "ok",
      "c": 9235624162,
      "i": "assets/images/u10.jpg",
      "t":"10:40",
      "dy": "Dec 12,2:40 PM"
    },
    {
      "n": "Sujal r and w",
      "d": "ok",
      "c": 8651236920,
      "i": "assets/images/u11.jpg",
      "t":"10:82",
      "dy": "Dec 31,9:40 PM"
    },
  ];
}
