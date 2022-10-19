import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Lingkaran extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<Lingkaran> {
  final txtjari = TextEditingController();

  String resultluas = '';
  String resultKeliling = '';

  getTextInputData() {
    setState(() {
      var jari = int.parse(txtjari.text);

      var luas = jari * jari * 3.14;
      resultluas = luas.toString();

      var keliling = (jari * 2) * 3.14;
      resultKeliling = keliling.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Lingkaran"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtjari,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'panjang jari-jari'),
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
                  child: Text("Luas Lingkaran = $resultluas",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}
