import 'package:flutter/material.dart';
import 'package:pr_7_2/Views/Screens/Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Global.value = Global.r1.nextInt(4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Image.network(
          Global.animalI.elementAt(Global.value),
          fit: BoxFit.fill,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'D');
        },
        child: Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
