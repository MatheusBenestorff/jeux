import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _valores = "";

  void _loginUsuario() {
    String usuario = _controllerUsuario.text;
    String senha = _controllerSenha.text;

    if (usuario.isEmpty) {
      setState(() {
        _valores = "*Campo Usuário em branco*";
      });
    } else if (senha.isEmpty) {
      setState(() {
        _valores = "*Campo Senha em branco*";
      });
    } else {
      _valores = "OK";
      Navigator.of(context).pushNamed('/tabs');
    }
    _limpaCampos();
  }

  void _limpaCampos() {
    _controllerSenha.text = "";
    _controllerUsuario.text = "";
  }

  void _navegarParaCadastro() {
    Navigator.of(context).pushNamed('/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30, top: 50),
                child: Image.asset("assets/images/JeuxLogo.jpg"),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "E-mail",
                ),
                style: TextStyle(fontSize: 30),
                controller: _controllerUsuario,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Senha"),
                style: TextStyle(fontSize: 30),
                controller: _controllerSenha,
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.all(35),
                    side: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  child: Text(
                    "Logar",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: _loginUsuario,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _valores,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.all(20),
                    side: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  child: Text(
                    "Cadastrar-se",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: _navegarParaCadastro,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
