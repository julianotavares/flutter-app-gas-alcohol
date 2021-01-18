import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:newapp/widgets/logo.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        Row(
          children: <Widget>[
            Container(
              width: 100,
              alignment: Alignment.centerRight,
              child:   Text("Álcool",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: "Big Shoulders Display",
              )
              ),
            ),
            Expanded(child:  TextFormField(
          controller: _gasCtrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            )),
            ),
          ],
        )
        Row(
          children: <Widget>[
            Text("Gasolina")
            Expanded(child:  TextFormField(
          controller: _gasCtrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            )),
            ),
          ],
        )
       
      ]),
    );
  }
}
