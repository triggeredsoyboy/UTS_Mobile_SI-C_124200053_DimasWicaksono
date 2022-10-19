import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Segitiga extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<Segitiga> {
  final txttinggi = TextEditingController();
  final txtalas = TextEditingController();

  String result = '';

  getTextInputData() {
    setState(() {
      var tinggi = int.parse(txttinggi.text);
      var alas = int.parse(txtalas.text);

      var luas = alas * tinggi / 2;
      result = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Segitiga"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txttinggi,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'panjang tinggi segitiga'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtalas,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'panjang alas segitiga'),
                  )),
              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Proses'),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Luas Segitiga = $result",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}
