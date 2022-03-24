import 'package:flutter/material.dart';

import 'TelaCadastro.dart';
import 'TelaListagem.dart';

class TelaLogin extends StatefulWidget {
  @override
  _PrimeiraTelaState createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<TelaLogin> {
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Você está na Tela de Login",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Login"),
              style: TextStyle(fontSize: 24),
              controller: _emailEditingController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Senha"),
              obscureText: true,
              style: TextStyle(
                fontSize: 24,
              ),
              controller: _passwordEditingController,
            ),
            const SizedBox(
              height: 24,
            ),
            // CustomFormField(
            //   headingText: "Email",
            //   hintText: "Email",
            //   obsecureText: false,
            //   suffixIcon: const SizedBox(),
            //   controller: _emailEditingController,
            //   maxLines: 1,
            //   textInputAction: TextInputAction.done,
            //   textInputType: TextInputType.emailAddress,
            // ),
            ElevatedButton(
                child: Text("Ir para tela de listagem"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TelaListagem(valor: _emailEditingController.text)),
                  );
                }),
            ElevatedButton(
                child: Text("Ir para tela de cadastro"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaCadastro()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
