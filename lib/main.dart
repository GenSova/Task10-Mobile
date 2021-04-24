// Done By Baimbet Daurzhan

import 'package:flutter/material.dart';
import 'package:task_10/second%20page.dart';

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
      ),
      home: MyHomePage(title: 'Screen 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  String email;
  String gender;
  String phone;

  void _handleRadioValueChanged(String value) {
    setState(() {
      gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Container(
              child: Column(
              children: <Widget>[
              TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.account_circle),
                hintText: 'Enter your name'
              ),
              autofocus: false,
              keyboardType: TextInputType.name,
              onChanged: (text){
                name = text;
              },
            ),
              ],
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Enter your phone number'
                      ),
                      autofocus: false,
                      keyboardType: TextInputType.phone,
                      onChanged: (text){
                        phone = text;
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon: Icon(Icons.alternate_email),
                          hintText: 'Enter your e-mail address'
                      ),
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (text){
                        email = text;
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Radio(
                    activeColor: Colors.blue,
                    value: 'Male',
                    groupValue: gender,
                    onChanged: _handleRadioValueChanged,
                    ),
                    Text('Male'),
                    Radio(

                      activeColor: Colors.red,
                      value: 'Female',
                      groupValue: gender,
                      onChanged: _handleRadioValueChanged,
                    ),
                  Text('Female'),
                    Radio(
                      activeColor: Colors.black,
                      value: 'Other',
                      groupValue: gender,
                      onChanged: _handleRadioValueChanged,
                    ),
                  Text('Other'),
                  ],
                ),
                    SizedBox(height: 20),
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => secondScreen(name : name, email : email, gender : gender, phone : phone),
                        ));
                      },
                      child: Text(
                          "Transfer Data to Screen 2"
                      ),
                    ),
                  ]),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
