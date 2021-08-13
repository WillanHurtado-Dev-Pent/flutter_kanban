import 'package:flutter/material.dart';
import 'package:flutter_app_si2/usuario/login.dart';
import 'package:flutter_app_si2/usuario/actividades.dart';

class SideNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Menu',style: TextStyle(fontSize: 21,color: Theme.of(context).primaryColor),),
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          ListTile(
            title: Text('Actividades'),
            leading: Icon(Icons.date_range),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Actividades()
                  )
              );
            },
          ),
          ListTile(
            title: Text('Pendientes'),
            leading: Icon(Icons.pending_actions),
            trailing: Icon(Icons.chevron_right),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Cerrar sesion'),
            leading: Icon(Icons.logout),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginScreen()), (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }

}