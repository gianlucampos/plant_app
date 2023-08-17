import 'package:flutter/material.dart';
import 'package:plant_app/component/elevated_button_component.dart';
import 'package:plant_app/pages/login/login_page.dart';
import 'package:plant_app/component/input_text_component.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Criar Conta',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .merge(const TextStyle(fontWeight: FontWeight.bold))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              textStyle: Theme.of(context).textTheme.titleMedium!.merge(
                  const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              label: 'Cadastrar',
              onPressedAction: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              ),
            ),
            const Divider(color: Colors.transparent, height: 5),
            Center(
                child: Text(
              'Já tem conta ? ENTRAR',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .merge(const TextStyle(fontWeight: FontWeight.bold)),
            ))
          ],
        ),
      ),
    ));
  }
}
