import 'package:flutter/material.dart';
import './editingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String editableText;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(editableText);
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(editableText != null ? editableText : "Want To Change Text?"),
            RaisedButton(
                color: Colors.blue,
                child: Text("Next Page"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditingPage((value) {
                                setState(() {
                                  editableText = value;
                                });
                                return editableText;
                              })));
                }),
          ],
        ),
      ),
    );
  }
}
