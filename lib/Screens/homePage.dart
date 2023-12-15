import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorStrings.backgroundColor,
        body: Container(
          alignment: Alignment.center,
          child: Text("Hi"),
        ),
      ),
    );
  }
}
