import 'package:flutter/material.dart';
import 'package:porovider/provider.dart';
import 'package:provider/provider.dart';

class Counter1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Consumer<MyProvider>(builder: (ctx, val, child) {
            return Text("${val.counter}",
                style: TextStyle(fontSize: 40));
          }),
        ),
      ),
    );
  }
}
