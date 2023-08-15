import 'package:flutter/material.dart';
import 'package:plant_app/component/elevated_button_component.dart';
import 'package:plant_app/pages/login_page.dart';
import 'package:plant_app/component/input_text_component.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Criar Conta',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      inputText(label: 'Nome'),
                      inputText(label: 'Email'),
                      inputText(label: 'Telefone'),
                      inputText(label: 'Senha'),
                    ],
                  ),
                ),
              ),
              elevatedButton(
                label: 'Cadastrar',
                onPressedAction: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                ),
              ),
              const Divider(color: Colors.transparent, height: 5),
              const Center(
                  child: Text(
                'Já tem conta ? ENTRAR',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ));
  }
}
