import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KelilingSegitiga extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<KelilingSegitiga> {
  final txtss1 = TextEditingController();
  final txtss2 = TextEditingController();
  final txtalas = TextEditingController();



  String resultkeliling = '';

  getTextInputData() {
    setState(() {
      var ss1 = int.parse(txtss1.text);
      var ss2 = int.parse(txtss2.text);
      var alas = int.parse(txtalas.text);

      var keliling = ss1 + ss2 + alas;
      resultkeliling = keliling.toString();
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
                    controller: txtss1,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'panjang sisi samping kanan segitiga'),
                  )),

              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtss2,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'panjang sisi samping kiri segitiga'),
                  )),

              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtalas,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'panjang alas segitiga'),
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
                  child: Text("Keliling Segitiga = $resultkeliling", style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}