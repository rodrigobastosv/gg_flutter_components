import 'package:flutter/material.dart';
import 'package:gg_flutter_components/container/gg_icon_label_container.dart';
import 'package:gg_flutter_components/button/gg_rounded_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GGIconLabelContainer(
              width: 200,
              height: 200,
              icon: Icon(Icons.info, size: 80,),
              text: Text(''),
              onTap: () => print('aaa'),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('aaaaaaaaa'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GGRoundedButton(
              borderColoredOnly: true,
              onPressed: () {},
              borderColor: Colors.green,
              child: Text('aaaaaaaaa'),
            ),
          ),
        ],
      ),
    );
  }
}
