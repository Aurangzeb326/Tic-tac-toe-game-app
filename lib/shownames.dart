import 'package:tictou_game/linker.dart';

class shownames extends StatefulWidget {
  const shownames({super.key});

  @override
  State<shownames> createState() => _shownamesState();
}

TextEditingController fname = TextEditingController();
TextEditingController sname = TextEditingController();
var formkey = GlobalKey<FormState>();

class _shownamesState extends State<shownames> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: const Text(''),
          title: Center(child: const Text("Entriess")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Form(
            key: formkey,
            child: Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please provide First_Name";
                        }
                      },
                      controller: fname,
                      decoration: InputDecoration(
                          hintText: 'Enter First_Name',
                          labelText: 'First_Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please provide the Second_Name";
                        }
                      },
                      controller: sname,
                      decoration: InputDecoration(
                          hintText: 'Enter Second_Name',
                          labelText: 'Second_Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            Get.to(const game_ui());
                          }
                        },
                        child: const Text("Click"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
