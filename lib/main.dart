import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/home/provider/homeprovider.dart';
import 'package:settingui/screen/home/view/homeandroid.dart';
import 'package:settingui/screen/home/view/homeios.dart';

void main()
{
  runApp(
    android(),
  );
}

Widget ios()
{
  return ChangeNotifierProvider(
    create: (context) => Homeprovider(),
    child: CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {

        '/' : (context) => HomeAndroid(),
        'ioss' : (context) => iosscreen(),
      },
      theme: MaterialBasedCupertinoThemeData(materialTheme: ThemeData.light()),
    ),
  );
}

Widget android() {
  return ChangeNotifierProvider(
    create: (context) => Homeprovider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeAndroid(),
        'ioss' : (context) => iosscreen(),
      },
    ),
  );
}