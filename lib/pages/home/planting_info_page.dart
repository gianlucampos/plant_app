import 'package:flutter/material.dart';
import 'package:plant_app/core/app_labels.dart';

class PlantingInfoPage extends StatelessWidget {
  const PlantingInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        bottom: PreferredSize(
          preferredSize: const Size(0, 60),
          child: SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                'Como fazer o plantio corretamente',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .merge(const TextStyle(color: Colors.white, fontSize: 28)),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fazer o berço de plantio',
                  style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: 15),
              Text(
                AppLabels.plantioInfo,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .merge(const TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 15),
              Text('Retire o saquinho ou embalagem que está no entorno do torrão',
                  style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: 15),
              Text(
                AppLabels.plantioInfo2,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .merge(const TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
