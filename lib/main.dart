import 'package:flutter/material.dart';
import 'package:porovider/drawer.dart';
import 'package:porovider/provider.dart';
import 'dashboard.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => MyProvider(),
          )
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Provider.of<MyProvider>(context).tm,
      theme: ThemeData(primaryColor: Colors.white),
      darkTheme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: CounterPro(),
    );
  }
}

class CounterPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Dashboard(),
      ),
     /* Selector<MyProvider,int>(
        selector: (ctx,val ) =>val.num ,
        builder: (ctx, vali,child) => Text("${vali}"),
      ),*/
      //Text("${context.select<MyProvider,int>((value) => value.num)}"),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.read<MyProvider>().increment(),
      ),
      drawer: Mydrawer(),
    );
  }
}
