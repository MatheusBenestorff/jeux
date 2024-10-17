import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  TextEditingController _controllerUser = TextEditingController();
  String _valores = "";

  void _loginUser() {
    if (_formKey.currentState!.validate()) {
      String user = _controllerName.text;
      String password = _controllerPassword.text;
      String name = _controllerUser.text;

      setState(() {
        _valores = "Cadastro realizado com sucesso!";
      });

      _limpaCampos();
    }
  }

  void _limpaCampos() {
    _controllerName.clear();
    _controllerUser.clear();
    _controllerPassword.clear();
  }

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "O campo e-mail não pode ficar vazio";
    }
    final emailRegex =
    RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
    if (!emailRegex.hasMatch(value)) {
      return "Por favor, insira um e-mail válido";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 50, top: 130),
                child: Image.asset("assets/images/JeuxLogo.jpg")
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white),
                controller: _controllerName,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "O campo nome não pode ficar vazio";
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white),
                controller: _controllerUser,
                validator: _emailValidator,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.white),
                ),
                obscureText: true,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),
                controller: _controllerPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "O campo senha não pode ficar vazio";
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.all(35),
                      side: BorderSide(color: Colors.white, width: 2.0)),
                  child: Text(
                    "Cadastrar-se",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: _loginUser,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _valores,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


