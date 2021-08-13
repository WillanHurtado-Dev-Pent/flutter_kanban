import 'package:flutter/material.dart';
import 'package:flutter_app_si2/administrador/cards_workflow.dart';
import 'package:flutter_app_si2/administrador/login.dart';
import 'package:flutter_app_si2/administrador/usuarios.dart';

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
            title: Text('Usuarios'),
            leading: Icon(Icons.account_box),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Usuarios()
                  )
              );
            },
          ),
          ListTile(
            title: Text('Cards Workflow'),
            leading: Icon(Icons.card_membership),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CardsWorkflow()
                  )
              );
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