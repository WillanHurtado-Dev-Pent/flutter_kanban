import 'package:flutter/material.dart';
import 'package:flutter_app_si2/administrador/add_usuario.dart';
import 'package:flutter_app_si2/administrador/edit_usuario.dart';
import 'package:flutter_app_si2/administrador/widgets.dart';

class Usuarios extends StatefulWidget{
  @override
  __UsuariosState createState() {
    return __UsuariosState();
  }

}

class __UsuariosState extends State<Usuarios>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(title: Text('USUARIOS'),backgroundColor: Colors.blue.shade900,),
      drawer: SideNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: todo(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddUsuario()
              )
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }

  Widget todo(BuildContext context) {
    return Column(
      children: [
        cardUsuario(context,'Nombre Usuario','otro valor'),
        cardUsuario(context,'Nombre Usuario','otro valor'),
        cardUsuario(context,'Nombre Usuario','otro valor'),
        cardUsuario(context,'Nombre Usuario','otro valor'),
      ],
    );
  }

  Widget cardUsuario(BuildContext context,String nombre,String valor){
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('nombre: '+nombre),
            subtitle: Text(':'+valor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('EDITAR'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditUsuario()
                      )
                  );
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('ELIMINAR'),
                onPressed: () {
                  ///////////////////codigo para eliminar usuario
                },
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }

}