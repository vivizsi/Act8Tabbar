import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff547eb5),
        title: Text('Cuadrado'),
      ),
      drawer: DrawerMenu(),
      body: Container(
        //  padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff5f8ff4),
          border: Border.all(width: 5, color: Color(0xff96caed)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(5.0, 5.0),
              blurRadius: 20.0,
              spreadRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black,
              offset: Offset(2.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        width: 250,
        height: 300,
        child: Text(
          "Soy un contenedor",
          style: TextStyle(fontSize: 25, color: Color(0xfffbfbfa)),
        ),
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 100,
          maxHeight: 300,
          maxWidth: 300,
        ),
        transform: Matrix4.skew(0.2, -0.2)..rotateZ(0.9),
        transformAlignment: Alignment.center,
        foregroundDecoration: BoxDecoration(),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff546ab5),
        title: Text('Rectangulo'),
      ),
      body: Container(
        //  padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff0084ff),
          border: Border.all(width: 5, color: Color(0xff2683c1)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Color(0xff91a4b4),
              offset: Offset(5.0, 5.0),
              blurRadius: 20.0,
              spreadRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black,
              offset: Offset(2.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        width: 250,
        height: 200,

        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 100,
          maxHeight: 300,
          maxWidth: 300,
        ),
        transform: Matrix4.skew(0.2, -0.2)..rotateZ(0.9),
        transformAlignment: Alignment.center,
        foregroundDecoration: BoxDecoration(),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff546ab5),
        title: Text('circulo'),
      ),
      body: Container(
        //  padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff446fa9),
          border: Border.all(width: 5, color: Color(0xff2863b2)),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xff91a4b4),
              offset: Offset(5.0, 5.0),
              blurRadius: 20.0,
              spreadRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black,
              offset: Offset(2.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        width: 150,
        height: 400,
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 100,
          maxHeight: 300,
          maxWidth: 300,
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'UII Act 8 Tabbar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.scale),
            title: Text('Cuadrado'),
            onTap: () {
              Navigator.pop(context); // Cerrar el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.curtains),
            title: Text('Rectangulo'),
            onTap: () {
              Navigator.pop(context); // Cerrar el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.circle),
            title: Text('Circulo'),
            onTap: () {
              Navigator.pop(context); // Cerrar el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
          ),
        ],
      ),
    );
  }
}
