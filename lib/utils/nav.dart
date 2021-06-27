
import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

Future push2(BuildContext context, Widget page) {
  return Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

