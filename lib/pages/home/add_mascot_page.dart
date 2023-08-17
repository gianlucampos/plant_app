import 'package:flutter/material.dart';
import 'package:plant_app/component/elevated_button_component.dart';

const String linkQRCode =
    '''https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/800px-QR_code_for_mobile_English_Wikipedia.svg.png''';

class AddMascotPage extends StatelessWidget {
  const AddMascotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(35)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Confirmação',
                      style: Theme.of(context).textTheme.displaySmall!.merge(
                            const TextStyle(fontWeight: FontWeight.bold),
                          ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Informações sobre seu novo mascote:',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .merge(const TextStyle(fontWeight: FontWeight.bold))),
                  const SizedBox(height: 20),
                  const Text('Local de plantação: Rua Francisco da Cunha'),
                  const Text('Tipo : Aroeira'),
                  const Text('Código: 234765'),
                  const Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(image: NetworkImage(linkQRCode)),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: const Text(
                            'Apresente o qrCode para retirar a sua mudinha.')),
                  ),
                  const SizedBox(height: 20),
                  elevatedButton(
                    label: 'Confirmar',
                    onPressedAction: () {},
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .merge(const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
