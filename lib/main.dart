import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileOne(),
    );
  }
}


class ProfileOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'View Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.orange
                      ]
                  )
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                        child: IconButton(
                          icon: Icon(Icons.call, color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50)
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://cdn6.f-cdn.com/ppic/146683235/logo/45075066/atm23/profile_logo_.jpg'),
                          radius: 40,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                        child: IconButton(
                          icon: Icon(Icons.message, color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                              'Vishal Singh',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                          Text(
                              'Maharashtra, Mumbai',
                            style: TextStyle(
                                color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: (){},
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          color: Colors.orange[600],
                          child: Column(
                            children: <Widget>[
                              Text('50895',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text('FOLLOWERS'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: (){},
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          color: Colors.red[600],
                          child: Column(
                            children: <Widget>[
                              Text('34524',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text('FOLLOWING'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Email', style: TextStyle(color: Colors.red),),
              subtitle: Text('vishalsync.dev@gmail.com'),
            ),
            Divider(),

            ListTile(
              title: Text('Phone', style: TextStyle(color: Colors.red),),
              subtitle: Text('+91 8955713466'),
            ),
            Divider(),

            ListTile(
              title: Text('Twitter', style: TextStyle(color: Colors.red),),
              subtitle: Text('@vishal_sync'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

