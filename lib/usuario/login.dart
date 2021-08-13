import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final controllerEmail = TextEditingController();
  final controllerPass = TextEditingController();
  String email = "";
  String pass = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controllerEmail.addListener(() {
      email = controllerEmail.text;
    });
    controllerPass.addListener(() {
      pass = controllerPass.text;
    });
    return Scafold(context);
  }



  Widget Scafold(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
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
          Image.asset(
            "assets/logo.png",
            alignment: Alignment.center,
            height: 300,
            width: 300,
          ),
          CustomInputField(
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              "USUARIO",
              controllerEmail,
              false),
          SizedBox(
              height: 20.0), //esta es la clase customInputo de la carpeta UI
          CustomInputField(
              Icon(
                Icons.lock,
                color: Colors.white,
              ),
              "CONTRASEÑA",
              controllerPass,
              true),
          SizedBox(height: 20.0),
          botonIngresar(context),
          SizedBox(height: 20.0),
          //botonRegistro(context),
        ],
      ),
    );
  }

  Widget botonIngresar(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: RaisedButton(
        onPressed: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Menu()
              )
          );
        },
        color: Colors.deepPurple,
        disabledColor: Colors.deepPurple,
        disabledTextColor: Colors.white,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Text(
          "INGRESAR",
          style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),
        ),
      ),
    );
  }
}

Widget botonRegistro(BuildContext context) {
  return Container(
    width: 300,
    height: 60,
    child: RaisedButton(
      onPressed: () {

      },
      color: Colors.blueAccent,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Text(
        "REGISTRARME",
        style: TextStyle(fontSize: 20.0),
      ),
    ),
  );
}


class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hinText;
  var controller;
  bool obscure;
  //CONSTRUCTOR//
  CustomInputField(this.fieldIcon, this.hinText, this.controller, this.obscure);

  @override
  Widget build(BuildContext context) {
    return Container(
      //hasta aca copio//
      //ESTE CONTENEDOR TIENE TOODO EL PRIMER TEXTFIEL DE MANERA CENTRADA
      width: 300,
      child: Material(
        //ESTE TEXTFIEL VENDRIA SIENDO PARA EL USUARIO HASTA LA LIN:33
        elevation: 5.0,
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)), //ESTO HACE CIRCULAR AL TEXTFIELD
        color: Colors.black, //ESTE ES EL COLOR DE FONDO DEL TEXTO
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: fieldIcon,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
              width: 250,
              height: 60,
              child: Padding(

                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: obscure,
                  controller: controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hinText,
                      fillColor: Colors.white,
                      filled: true),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ); //hasta aca debo copiar el container
  }
}
