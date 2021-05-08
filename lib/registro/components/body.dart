import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashpark_client/registro/components/background.dart';
import 'package:flashpark_client/components/rounded_button.dart';
import 'package:flashpark_client/components/rounded_input_field_general.dart';
import 'package:flashpark_client/mapScreen/map.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  String email, password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.02),
            CircleAvatar(
              child: Image.asset(
                "assets/images/avatar.png",
                //width: size.width*0.8,
              ),
              minRadius: 50,
              maxRadius: 75,
            ),
            RoundedInputFieldGeneral(
              hintText: "Correo",
              onChanged: (value) {
                email = value.trim();
              },
            ),
            RoundedInputFieldGeneral(
              hintText: "Contraseña",
              onChanged: (value) {
                password = value.trim();
              },
            ),
            RoundedInputFieldGeneral(
              hintText: "Nombre",
              onChanged: (value) {},
            ),
            RoundedInputFieldGeneral(
              hintText: "Apellido",
              onChanged: (value) {},
            ),
            RoundedInputFieldGeneral(
              hintText: "Celular",
              onChanged: (value) {},
            ),
            RoundedInputFieldGeneral(
              hintText: "Tipo de Vehiculo",
              onChanged: (value) {},
            ),
            RoundedInputFieldGeneral(
              hintText: "Placa",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Registrarse",
              press: () {
                auth.createUserWithEmailAndPassword(
                    email: email, password: password);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MapScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
