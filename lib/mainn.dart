import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),
            Cardw(),

          ],
        ),
      ),
    );
  }
}

class Cardw extends StatelessWidget {
  const Cardw({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Stack(
          children: <Widget>[
            Text('center'),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('b'),
            ),
          ],
        ),
      ),
    );
  }
}
