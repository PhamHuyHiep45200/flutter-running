import 'package:flutter/material.dart';
import 'package:working_app/mock/dataCart.dart';
import 'package:working_app/widgets/common/_cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: cardDataMock.map((e) => CardCommon(infoCard: e)).toList(),
        ),
      ),
    );
  }
}
