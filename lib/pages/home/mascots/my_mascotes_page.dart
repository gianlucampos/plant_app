import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';

const String linkSappling =
    '''https://www.designi.com.br/images/preview/10001885.jpg''';
const String linkSappling2 =
    '''https://img1.gratispng.com/20180319/sew/kisspng-tree-computer-icons-tree-png-available-in-different-size-5ab0397d6b48e7.4235455515214984934395.jpg''';
const String linkSappling3 =
    '''https://w7.pngwing.com/pngs/515/167/png-transparent-tree-nature-natural-transparent-background-thumbnail.png''';

class MyMascotesPage extends StatelessWidget {
  const MyMascotesPage({Key? key}) : super(key: key);

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
  const List<String> sapplings = [linkSappling, linkSappling2, linkSappling3];

  return Padding(
    padding: const EdgeInsets.only(right: 50, bottom: 10),
    child: SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width * 0.9,
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
              padding: EdgeInsets.only(left: 20,top: 75),
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
                  child: Image(image: NetworkImage(sapplings[index % 3])),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
