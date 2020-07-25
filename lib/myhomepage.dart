import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget>[
            cardBuild(context: context,title: 'معرف اشتراكات',colors: Color(0xff4b1235), icon: FontAwesomeIcons.userCircle),
            cardBuild(context: context,title: 'تسوق',colors: Color(0xff851334), icon: FlutterIcons.shop_ent),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Padding cardBuild({BuildContext context, String title, Color colors, IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.bottomRight,
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            )),
        child: Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
               icon,
                color: Colors.white,

                size: 50,
              ),
              Text(
                title,
                style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
