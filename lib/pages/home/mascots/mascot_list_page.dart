import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';
import 'package:plant_app/core/app_images.dart';
import 'package:plant_app/pages/home/mascots/mascot_page.dart';

class MascotListPage extends StatelessWidget {
  const MascotListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Meus mascotes',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .merge(const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                  children: List.generate(6,
                      (index) => _mascotCard(index: index, context: context))),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _mascotCard({required int index, required BuildContext context}) {
  const List<Color> colors = [
    AppColors.green,
    AppColors.greenSecondary,
    AppColors.darkGreen
  ];
  List<String> sapplings = [AppImages.plant1, AppImages.plant2, AppImages.plant3];
  String choosedSapling = sapplings[index % 3];

  return Padding(
    padding: const EdgeInsets.only(right: 50, bottom: 10),
    child: SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width * 0.9,
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MascotPage(saplingImage: choosedSapling)),
        ),
        child: Card(
          elevation: 5,
          color: colors[index % 3],
          shadowColor: Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 75),
                child: Text(
                  'Nome da mascote',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                child: SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Image.asset(sapplings[index % 3]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
