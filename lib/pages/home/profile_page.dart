import 'package:flutter/material.dart';
import 'package:plant_app/component/circle_avatar_component.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(35)),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: -40,
                      child: SizedBox(child: circleAvatar(size: 50)),
                    ),
                    const Positioned(
                      top: 65,
                      child: Text(
                        'Pepe',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Positioned(
                      top: 65,
                      left: 200,
                      child: Icon(Icons.edit_outlined),
                    ),
                    Positioned(
                      top: 110,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Nome', style: Theme.of(context).textTheme.bodyLarge),
                          Text('Penelope Coelho', style: Theme.of(context).textTheme.labelLarge),
                          const SizedBox(height: 20),
                          Text('Email', style: Theme.of(context).textTheme.bodyLarge),
                          Text('penelope10@@gmail.com', style: Theme.of(context).textTheme.labelLarge),
                          const SizedBox(height: 20),
                          Text('Telefone', style: Theme.of(context).textTheme.bodyLarge),
                          Text('11 9876-5478', style: Theme.of(context).textTheme.labelLarge),
                          const SizedBox(height: 20),
                          Text('Localização', style: Theme.of(context).textTheme.bodyLarge),
                          Text('Rua Flores de Mel, 69 - SP', style: Theme.of(context).textTheme.labelLarge),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // _buildForm()
            ],
          ),
        ),
      ),
    );
  }


}
