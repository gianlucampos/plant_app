import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';
import 'package:plant_app/pages/login/create_account_page.dart';
import 'package:plant_app/component/elevated_button_component.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Plant!',
                textScaleFactor: 2,
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(flex: 2),
            const Text('Bem-Vindo',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            const Spacer(flex: 4),
            const Text(
                'Seja um voluntário e ajude o mundo a ficar um pouco mais verde e tenha seu mascote verdinho'),
            const Spacer(flex: 16),
            Center(
              child: elevatedButton(
                label: 'Quero meu mascote verdinho',
                onPressedAction: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccountPage()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
