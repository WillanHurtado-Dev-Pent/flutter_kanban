import 'package:flutter/material.dart';
import 'package:flutter_app_si2/usuario/widgets.dart';


class Actividad extends StatefulWidget{
  @override
  State<Actividad> createState() {
    return ActividadState();
  }

}

class ActividadState extends State<Actividad>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(title: Text('ACTIVIDAD'),backgroundColor: Colors.blue.shade900,),
      drawer: SideNav(),
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: todo(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget todo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: Column(
        children: <Widget>[

        ],
      ),
    );
  }


}

