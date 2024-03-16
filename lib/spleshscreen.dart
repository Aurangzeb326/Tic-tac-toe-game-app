import 'dart:async';

import 'package:tictou_game/linker.dart';

class spleshcreen extends StatefulWidget {
  const spleshcreen({super.key});

  @override
  State<spleshcreen> createState() => _spleshcreenState();
}

class _spleshcreenState extends State<spleshcreen> {
  @override
  void initState() {
    // TODO: implement initState
    time();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "lib/assets/mypic.jpg",
            height: 550,
            width: 550,
          ),
        ),
       const  SizedBox(
          height: 45,
        ),
        const CircularProgressIndicator(),
        // time()
      ],
    );
  }

  time() async {
    Timer(const Duration(seconds: 3), () => Get.to(const shownames()));
  }
}
