import 'package:flutter/material.dart';

import 'Global.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text("Details Page"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.network(
                    Global.animalI.elementAt(Global.value),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("${Global.animalD.elementAt(Global.value)}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
