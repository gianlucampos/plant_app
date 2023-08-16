import 'package:flutter/material.dart';
import 'package:plant_app/component/circle_avatar_component.dart';
import 'package:plant_app/core/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: AppColors.green,
        elevation: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
        ),
      ),
      backgroundColor: AppColors.background,
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
                    const Positioned(
                      top: 110,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Nome', style: TextStyle(fontSize: 18)),
                          Text('Penelope Coelho', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text('Email', style: TextStyle(fontSize: 18)),
                          Text('penelope10@@gmail.com', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text('Telefone', style: TextStyle(fontSize: 18)),
                          Text('11 9876-5478', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text('Localização', style: TextStyle(fontSize: 18)),
                          Text('Rua Flores de Mel, 69 - SP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
