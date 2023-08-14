import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';

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
                      _inputText(label: 'Nome'),
                      _inputText(label: 'Email'),
                      _inputText(label: 'Telefone'),
                      _inputText(label: 'Senha'),
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.greenSecondary)),
                    onPressed: () {},
                    // onPressed: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => CreateAccountPage())),
                    child: const Text('Cadastrar'),
                  ),
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

  Widget _inputText({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const Divider(color: Colors.transparent, height: 15),
        TextFormField(
          decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 3, color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 3, color: Colors.black),
            ),
            fillColor: Colors.white,
          ),
        ),
        const Divider(color: Colors.transparent, height: 15),
      ],
    );
  }
}
