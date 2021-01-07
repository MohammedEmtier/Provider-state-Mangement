import 'package:flutter/material.dart';
import 'package:porovider/provider.dart';
import 'package:provider/provider.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [
          Text("light"),
          Switch(
              onChanged: (bool val) {
                context.read()<MyProvider>().switcsh(val);
              },
              value: context.watch()<MyProvider>().valueswithch),
          Text("dark"),
        ],
      ),
    );
  }
}
