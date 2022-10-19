import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KelilingPersegiPanjang extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<KelilingPersegiPanjang> {
  final txttinggi = TextEditingController();
  final txtlebar = TextEditingController();

  String resultkeliling = '';

  getTextInputData() {
    setState(() {
      var tinggi = int.parse(txttinggi.text);
      var lebar = int.parse(txtlebar.text);

      var keliling = (lebar + tinggi) * 2;
      resultkeliling = keliling.toString();
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
                  child: Text("Keliling Persegi Panjang = $resultkeliling",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}
