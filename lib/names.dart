import 'package:tictou_game/linker.dart';

class names extends StatefulWidget {
  const names({super.key});

  @override
  State<names> createState() => _namesState();
}

class _namesState extends State<names> {
  var formkey = GlobalKey<FormState>();
  // var firstname, secondname;
  TextEditingController firstuser = TextEditingController();
  TextEditingController seconduser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 200, 216),
        body: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "lib/assets/tic_toe.jpg",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: firstuser,
                  decoration: InputDecoration(
                      hintText: "Enter First  Name",
                      labelText: "FirstName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please provide the Name";
                    }
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: seconduser,
                  decoration: InputDecoration(
                      hintText: "Enter second Name",
                      labelText: "SecondName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please provide the Name";
                    }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      // var fname = firstuser.text;
                      // var sname = seconduser.text;
                      if (formkey.currentState!.validate()) {
                        Get.to(const game_ui());
                      }
                    },
                    child: const Text("Click")),
              ],
            ),
          ),
        ));
  }

  naems() {
    return 'this is sahi';
  }
}
