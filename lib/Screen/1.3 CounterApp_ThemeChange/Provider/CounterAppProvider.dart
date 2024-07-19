
import 'package:flutter/material.dart';
class Counterappprovider extends ChangeNotifier
{
  bool isdarkTheme = false;
  int count =0;
  void counterAppTheme()
  {
    isdarkTheme=!isdarkTheme;
    notifyListeners();
  }
  void add()
  {
    count++;
    notifyListeners();
  }
}