import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mukthi/screens/home_screen/home_Screen.dart';

import '../../constants/strings.dart';

class SplashService{
  BuildContext _ctx;

  void initSplash(BuildContext ctx)async{
    _ctx=ctx;
    var _duration = Duration(seconds: kSplashDelay);
    Timer(_duration,_timerClosed);
  }
  void _timerClosed(){
    Navigator.of(_ctx).pushReplacementNamed(HomeScreen.routeName);
  }
}