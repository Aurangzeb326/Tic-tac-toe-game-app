import 'package:tictou_game/linker.dart';

class game_ui extends StatefulWidget {
  const game_ui({super.key});

  @override
  State<game_ui> createState() => _game_uiState();
}

int player = 1;
int count = 0;
List<String> assignval = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
];
List<bool> isclick = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

class _game_uiState extends State<game_ui> {
  @override
  var fnaa = fname.text;
  var snaa = sname.text;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tic toc Game"),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const shownames());
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 30,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  color: topcolor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  player == 1 ? Colors.green[300] : Colors.red,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              '$fnaa',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),

                            // Playerrr 2 Code Here
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // playerrr 2 Code Hereeeee startedd
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  player == 2 ? Colors.green[300] : Colors.red,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              '$snaa',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          player == 1
                              ? "Turn Player $fnaa"
                              : "Turn Player $snaa",
                          style: const TextStyle(
                              // decorationStyle: TextDecorationStyle.dashed,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 70,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                color: bottumcolor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            gamebutton(0),
                            gamebutton(1),
                            gamebutton(2),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            gamebutton(3),
                            gamebutton(4),
                            gamebutton(5),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            gamebutton(6),
                            gamebutton(7),
                            gamebutton(8),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  gamebutton(int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (isclick[index] == false) {
            isclick[index] = true;
            count = count + 1;
            if (player == 1) {
              assignval[index] = 'X';
              player = 2;
            } else {
              assignval[index] = '0';
              player = 1;
            }
          }
          setState(() {});
          checking();
        },
        child: Container(
          child: Center(
            child: Text(
              assignval[index],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // color: buttoncolor,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: buttoncolor,
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                )
              ]),
          margin: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }

  checking() {
    if (assignval[0] == 'X' && assignval[1] == 'X' && assignval[2] == 'X') {
      windDialog("Player $fnaa Win");
    } else if (assignval[3] == 'X' &&
        assignval[4] == 'X' &&
        assignval[5] == 'X') {
      windDialog("Player $fnaa  Win");
    } else if (assignval[6] == 'X' &&
        assignval[7] == 'X' &&
        assignval[8] == 'X') {
      windDialog("Player $fnaa  Win");
    } else if (assignval[0] == 'X' &&
        assignval[3] == 'X' &&
        assignval[6] == 'X') {
      windDialog("Player $fnaa  Win");
    } else if (assignval[1] == 'X' &&
        assignval[4] == 'X' &&
        assignval[7] == 'X') {
      windDialog("Player $fnaa  Win");
    } else if (assignval[2] == 'X' &&
        assignval[5] == 'X' &&
        assignval[8] == 'X') {
      windDialog("Player $fnaa  Win");
    } else if (assignval[0] == 'X' &&
        assignval[4] == 'X' &&
        assignval[8] == 'X') {
      windDialog("Player $fnaa  Win");
    } else if (assignval[2] == 'X' &&
        assignval[4] == 'X' &&
        assignval[6] == 'X') {
      windDialog("Player $fnaa  Win");
    }

    /////////// Playerrrr Two0000  Conditionnnnnn///////////////////
    else if (assignval[0] == '0' &&
        assignval[1] == '0' &&
        assignval[2] == '0') {
      windDialog("Player $snaa Win");
    } else if (assignval[3] == '0' &&
        assignval[4] == '0' &&
        assignval[5] == '0') {
      windDialog("Player  $snaa Win");
    } else if (assignval[6] == '0' &&
        assignval[7] == '0' &&
        assignval[8] == '0') {
      windDialog("Player  $snaa Win");
    } else if (assignval[0] == '0' &&
        assignval[3] == '0' &&
        assignval[6] == '0') {
      windDialog("Player  $snaa Win");
    } else if (assignval[1] == '0' &&
        assignval[4] == '0' &&
        assignval[7] == '0') {
      windDialog("Player  $snaa Win");
    } else if (assignval[2] == '0' &&
        assignval[5] == '0' &&
        assignval[8] == '0') {
      windDialog("Player  $snaa Win");
    } else if (assignval[0] == '0' &&
        assignval[4] == '0' &&
        assignval[8] == '0') {
      windDialog("Player  $snaa Win");
    } else if (assignval[2] == '0' &&
        assignval[4] == '0' &&
        assignval[6] == '0') {
      windDialog("Player  $snaa Win");
    } else if (count == 9) {
      windDialog("Match Draw");
    }
  }

  windDialog(String winner) {
    Get.defaultDialog(
        backgroundColor: bottumcolor,
        title: "Result",
        titleStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        content: Column(
          children: [
            Text(
              winner,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                assignval = [
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                ];
                isclick = [
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                ];
                count = 0;
                Get.back();
                setState(() {});
              },
              child: Container(
                child: Center(
                    child: Text(
                  "Ok",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: topcolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ));
  }
}
