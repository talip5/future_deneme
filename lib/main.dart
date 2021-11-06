import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'futureBuilderList.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
future1 futureGet=future1();
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String isim = 'Future';

  void getData() {
    Future<QuerySnapshot> querySnapshot =
        FirebaseFirestore.instance.collection('data').get();
    querySnapshot.then((value) {
      print(value.size);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isim),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 10.0),
          Text(
            'Future',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(height: 25.0),
          RaisedButton(
              child: Text('getData1'),
              color: Colors.green,
              onPressed: () {
                print('getData1');
             // widget.futureGet.addData1();
                var task=<String,dynamic>{
                  'name':'dynamic'
                };
                //widget.futureGet.addData2({'name':'yenidynamic35'});
                //widget.futureGet.addData2(task);
                widget.futureGet.addData2({'name':isim});
              }),
        ]),
      ),
    );
  }
}
