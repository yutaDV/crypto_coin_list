import 'package:flutter/material.dart';

final dartTheme = ThemeData(
    primarySwatch: Colors.lime,
    scaffoldBackgroundColor: const Color(0x3B3D3D4D),
    dividerColor: Colors.white10,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0x3B3D3D4D),
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        labelSmall: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w700,
        )));
