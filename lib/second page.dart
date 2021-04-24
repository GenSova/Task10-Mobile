import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget{

  String name;
  String email;
  String gender;
  String phone;
  secondScreen({this.name, this.email, this.gender, this.phone});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Screen 2",
        ),
      ),
          body: Center(
      child: Column(
    children: <Widget>[
      Card(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Column(
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.perm_identity, size: 50),
                title: Text('User Information'),
                subtitle: Text('About'),
              ),
              SizedBox(height: 25),
              Text(
                  'Name',
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.left,
              ),
              Row(
               children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 30.0,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Text(
                   name,
                  style: TextStyle(fontSize: 20),
                 ),
              ]
              ),
              SizedBox(height: 30),
              Text(
                'Phone number',
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.left,
              ),
              Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]
              ),
              SizedBox(height: 30),
              Text(
                'E-mail',
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.left,
              ),
              Row(
                  children: <Widget>[
                    Icon(
                      Icons.alternate_email,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Text(
                      email,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]
              ),
              SizedBox(height: 30),
              Text(
                'Gender',
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.left,
              ),
              Row(
                  children: <Widget>[
                    Icon(
                      Icons.accessibility,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Text(
                      gender,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]
              ),
            ],
          ),
        ),
      ),
      ]),
    ),
    );
  }
}