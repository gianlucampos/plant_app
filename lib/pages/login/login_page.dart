import 'package:flutter/material.dart';
import 'package:plant_app/component/elevated_button_component.dart';
import 'package:plant_app/component/input_text_component.dart';
import 'package:plant_app/pages/home/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Bem vindo de volta',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Center(
              child: Text(
                'Reveja seus mascotinhos e plant!',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            const Divider(color: Colors.transparent, height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    inputText(label: 'Email'),
                    inputText(label: 'Senha'),
                  ],
                ),
              ),
            ),
            elevatedButton(
              label: 'Entrar',
              onPressedAction: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
