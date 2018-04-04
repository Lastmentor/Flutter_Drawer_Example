import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green[900],
        accentColor: Colors.white,
      ),
      home: DrawerDeneme(),
    );
  }
}

class DrawerDeneme extends StatefulWidget {
  @override
  _DrawerDenemeState createState() => new _DrawerDenemeState();
}

class _DrawerDenemeState extends State<DrawerDeneme> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("News"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Rıza Özonuk",style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              accountEmail: new Text("riza.gs1905@hotmail.com",style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              currentAccountPicture: new GestureDetector(
                onTap: null,
                child: new CircleAvatar(
                    backgroundImage: new NetworkImage("https://lh3.googleusercontent.com/-NAJQZx506go/WsPYrJvsz7I/AAAAAAAAANE/a9kFTe1NYBU0eNB-09S6Ohm8EONqJB4SACEwYBhgL/w140-h140-p/632075.jpg")
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage("https://www.duvarkapla.com/media/catalog/product/cache/9/image/750x/17f82f742ffe127f42dca9de82fb58b1/T/R/TR0149.jpg"),
                  )
              ),
            ),
            new ListTile(
              trailing: new Icon(Icons.add),
              title: new Text("Add Notes"),
            ),
            new Divider(color: Colors.deepOrange),
            new ListTile(
              trailing: new Icon(Icons.kitchen,color: Colors.amber),
              title: new Text("Foods",style: new TextStyle(color: Colors.amber)),
            ),
            new ListTile(
              trailing: new Icon(Icons.info,color: Colors.amber),
              title: new Text("Announcements",style: new TextStyle(color: Colors.amber)),
            ),
            new ListTile(
              trailing: new Icon(Icons.drive_eta,color: Colors.amber),
              title: new Text("Travel",style: new TextStyle(color: Colors.amber)),
            ),
            new ListTile(
              trailing: new Icon(Icons.feedback,color: Colors.amber),
              title: new Text("Informations",style: new TextStyle(color: Colors.amber)),
            ),
            new Divider(color: Colors.deepOrange),
            new ListTile(
              title:  new Text("Settings"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title:  new Text("Exit"),
              trailing: new Icon(Icons.power_settings_new),
            ),
          ],
        ),
      ),
    );
  }
}