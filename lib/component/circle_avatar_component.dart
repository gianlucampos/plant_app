import 'package:flutter/material.dart';

const linkAvatar = '''
https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnLaFPMPSwjs6J-eESrFLRymDkDBQQ_Q7Wpw&usqp=CAU
''';

CircleAvatar circleAvatar({double? size}) {
  return CircleAvatar(
    radius: size ??= 20,
    backgroundImage: const NetworkImage(linkAvatar),
    backgroundColor: Colors.transparent,
  );
}
