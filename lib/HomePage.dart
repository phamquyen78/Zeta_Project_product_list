import 'package:flutter/material.dart';
import './responsive.dart';
import 'homepage/pc.dart';
import 'homepage/mb.dart';
import 'homepage/tb.dart';
import 'homepage/ltb.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromRGBO(241, 243, 251, 1),
        body: Responsive(
            tiny: Container(),
            phone: HomePageMobile(),
            tablet: HomePageTablet(),
            largeTablet: HomePageLargeTablet(),
            computer: HomePagePC()));
  }
}
