import 'package:flutter/material.dart';

void main() => runApp(VivebusApp());

class VivebusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Estacion de vivebus',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/autobuses": (BuildContext context) => Autobuses(),
          "/contacto": (BuildContext context) => Contactos(),
        },
        home: Inicio());
  }
}

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('EMPRESA- VIVEBUS CIUDAD JUAREZ'),
      ),
      body: Center(
        child: Text("Seccion Empresa de katia"),
      ),
    );
  }
}

class Autobuses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Autobuses VIVEBUS'),
      ),
      body: Center(
        child: Text("Seccion de autobuses de katia"),
      ),
    );
  }
}

class Contactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('CONTACTOS DE VIVEBUS'),
      ),
      body: Center(
        child: Text("Seccion Contactos de katia"),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(color: Colors.green, image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/sarahiriojas/Mis-Imagenes/main/vivebus.jpg"), alignment: Alignment.topCenter) //fin de decoration image
            ),
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.amber[200],
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "INICIO",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.amber[200],
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("EMPRESA", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.amber[200],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/autobuses");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("AUTOBUSES", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.amber[200],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
