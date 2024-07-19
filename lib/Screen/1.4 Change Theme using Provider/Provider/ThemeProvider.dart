import 'package:flutter/material.dart';
class ThemeChangeProvider extends ChangeNotifier
{
  bool isdark = false;
  void ChangeTheme()
  {
    isdark=!isdark;
    notifyListeners();
  }
}