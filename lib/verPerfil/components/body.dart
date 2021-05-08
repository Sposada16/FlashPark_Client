import 'package:flashpark_client/components/rounded_button.dart';
import 'package:flashpark_client/components/rounded_input_field_general.dart';
import 'package:flashpark_client/editarPerfil/editar.dart';
import 'package:flashpark_client/mapScreen/map.dart';
import 'package:flashpark_client/verPerfil/components/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            CircleAvatar(
              child: Image.asset(
                "assets/images/avatar.png",
                //width: size.width*0.8,
              ),
              minRadius: 50,
              maxRadius: 75,
            ),
            SizedBox(height: size.height * 0.08),
            Text(
              "Sergio Posada Henao",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Text(
              "3209410506",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Text(
              "Camioneta",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Text(
              "sposada16@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Editar",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EditarPerfil();
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
