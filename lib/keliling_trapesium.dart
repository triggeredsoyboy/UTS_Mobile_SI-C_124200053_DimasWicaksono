import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KelilingTrapesium extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<KelilingTrapesium> {
  final txtsa = TextEditingController();
  final txtsb = TextEditingController();
  final txttinggi = TextEditingController();

  String result = '';

  getTextInputData() {
    setState(() {
      var sisibawah = int.parse(txtsb.text);
      var sisiatas = int.parse(txtsa.text);
      var tinggi = int.parse(txttinggi.text);

      var luas = ((sisiatas + sisibawah) * tinggi) * 0.5;
      result = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Trapesium"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtsa,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'panjang sisi bawah trapesium'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtsb,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'panjang sisi atas trapesium'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txttinggi,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'panjang tinggi trapesium'),
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
                  child: Text("Keliling Trapesium = $result",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}
