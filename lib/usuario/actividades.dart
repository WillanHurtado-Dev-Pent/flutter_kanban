import 'package:flutter/material.dart';
import 'package:flutter_app_si2/usuario/widgets.dart';
import 'actividad.dart';

class Actividades extends StatefulWidget{
  @override
  __ActividadesState createState() {
    return __ActividadesState();
  }

}

class __ActividadesState extends State<Actividades>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(title: Text('ACTIVIDADES'),backgroundColor: Colors.blue.shade900,),
      drawer: SideNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: todo(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }

  Widget todo(BuildContext context) {
    return Column(
      children: [
        cardActividad(context,'Nombre Actividad'),
        cardActividad(context,'Nombre Actividad'),
        cardActividad(context,'Nombre Actividad'),
        cardActividad(context,'Nombre Actividad'),
      ],
    );
  }

  Widget cardActividad(BuildContext context,String nombre){
    return
      Column(
        children: [
          SizedBox(height: 10,),
          Card(
            child:
              ListTile(
                title: Text(nombre),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Actividad()
                      )
                  );
                },
              ),
          ),
        ],
      );
  }

}