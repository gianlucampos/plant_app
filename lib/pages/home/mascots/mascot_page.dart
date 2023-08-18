import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';

class MascotPage extends StatelessWidget {
  const MascotPage({Key? key, required this.saplingImage}) : super(key: key);

  final String saplingImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Cerejinha',
                    style: Theme.of(context).textTheme.headlineLarge!.merge(
                          const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(width: 10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: '5\n',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .merge(const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'meses',
                            style: Theme.of(context).textTheme.bodySmall!.merge(
                                const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.arrow_circle_up_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(width: 10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: '15\n',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .merge(const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'cm',
                            style: Theme.of(context).textTheme.bodySmall!.merge(
                                const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.8,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Informações',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .merge(const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Text(
                          'Seu mascote verdinho está se desenvolvendo a cada dia!',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.titleLarge,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Local de plantio: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'Rua Martina Afonso da silva, 69!'),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.titleLarge,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Espécie: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Guanhuma - Cordia superba'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -250,
                  child: Image.asset(saplingImage, height: 325),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
