import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PersegiPanjang extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<PersegiPanjang> {
  final txttinggi = TextEditingController();
  final txtlebar = TextEditingController();

  String result = '';

  getTextInputData() {
    setState(() {
      var tinggi = int.parse(txttinggi.text);
      var lebar = int.parse(txtlebar.text);

      var luas = lebar * tinggi;
      result = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Persegi Panjang"),
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
                        InputDecoration(hintText: 'panjang persegi panjang'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtlebar,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'lebar persegi panjang'),
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
                  child: Text("Luas Persegi Panjang = $result",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}
