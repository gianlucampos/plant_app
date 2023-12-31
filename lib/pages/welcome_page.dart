import 'package:flutter/material.dart';
import 'package:plant_app/component/elevated_button_component.dart';
import 'package:plant_app/pages/login/create_account_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Plant!',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .merge(const TextStyle(fontWeight: FontWeight.bold))),
          const Spacer(flex: 2),
          Text(
            'Bem-Vindo',
            style: Theme.of(context).textTheme.titleLarge!.merge(
                const TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
          ),
          const Spacer(flex: 2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              'Seja um voluntário e ajude o mundo a ficar um pouco mais verde e tenha seu mascote verdinho',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
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
    );
  }
}
