

import 'package:flutter/material.dart';
import 'package:flutter_app_si2/administrador/widgets.dart';

class CardsWorkflow extends StatefulWidget{
  @override
  __CardsWorkflowState createState() {
    return __CardsWorkflowState();
  }

}

class __CardsWorkflowState extends State<CardsWorkflow> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'TODO',),
                Tab(text: 'HACIENDO',),
                Tab(text: 'HECHO',),
              ],
            ),
              title: const Text('CARDS WORKFLOW'),
              backgroundColor: Colors.blue.shade900
          ),
          drawer: SideNav(),
          body: TabBarView(
            children: [
              cardsTodo(context),
              cardsHaciendo(context),
              cardsHecho(context),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.orange,
          ),
        ),
      ),
    );
  }


  Widget cardsTodo(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
            cardTodo(context,'Nombre Actividad'),
          ],
        )
      ),
    );
  }

  Widget cardTodo(BuildContext context,String nombre){
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

              },
            ),
          ),
        ],
      );
  }



  Widget cardsHaciendo(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
            children: [
              cardHaciendo(context,'Nombre Actividad'),
              cardHaciendo(context,'Nombre Actividad'),
              cardHaciendo(context,'Nombre Actividad'),
              cardHaciendo(context,'Nombre Actividad'),
            ],
          )
      ),
    );
  }

  Widget cardHaciendo(BuildContext context,String nombre){
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

              },
            ),
          ),
        ],
      );
  }



  Widget cardsHecho(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
            children: [
              cardHecho(context,'Nombre Actividad'),
              cardHecho(context,'Nombre Actividad'),
              cardHecho(context,'Nombre Actividad'),
              cardHecho(context,'Nombre Actividad'),
              cardHecho(context,'Nombre Actividad'),
            ],
          )
      ),
    );
  }

  Widget cardHecho(BuildContext context,String nombre){
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

              },
            ),
          ),
        ],
      );
  }

}