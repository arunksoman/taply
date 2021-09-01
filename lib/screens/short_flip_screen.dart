import 'package:flutter/material.dart';

class ShortFlipContent extends StatefulWidget {
  ShortFlipContent({Key? key}) : super(key: key);

  @override
  _ShortFlipContentState createState() => _ShortFlipContentState();
}

class _ShortFlipContentState extends State<ShortFlipContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onVerticalDragUpdate: (details) {
                    int sensitivity = 1;
                    if (details.delta.dy > sensitivity) {
                      print("Swipe down detected");
                    } else if (details.delta.dy < -sensitivity) {
                      print("Swipe up detected");
                    }
                  },
                  child: Align(
                    alignment: Alignment.topCenter,
                    // heightFactor: 1.0,
                    child: Image.network(
                        'https://d27bygd3qv5fha.cloudfront.net/Aug-31-2021/612e2c6796e1654038924e58/August-31-1569-Jahangir-is-born-2021-Aug-31-18-47-43-general.jpeg'),
                  ),
                ),
                GestureDetector(
                  onVerticalDragUpdate: (details) {
                    int sensitivity = 5;
                    if (details.delta.dy > sensitivity) {
                      print("Swipe down detected");
                    } else if (details.delta.dy < -sensitivity) {
                      print("Swipe up detected");
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          // heightFactor: 1.0,
                          child: Text(
                            '1569 ആഗസ്റ്റ് 31, ജഹാംഗീറിന്റെ ജനനം',
                            style: TextStyle(
                              fontFamily: 'Gayathri',
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              height: 1.4,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          heightFactor: 1.0,
                          child: Text(
                            'മുഗൾ സാമ്രാജ്യത്തിലെ നാലാമത്തെ ചക്രവർത്തിയാണ്‌ ജഹാംഗീർ (പൂർണ്ണനാമം:നൂറുദ്ദീൻ സലീം ജഹാംഗീർ) (1569 ഓഗസ്റ്റ് 31 – 1627 ഒക്ടോബർ 28). 1605 മുതൽ തന്റെ മരണം വരെ മുഗൾ സാമ്രാജ്യത്തിന്റെ ചക്രവർത്തിയായിരുന്നു. ലോകജേതാവ് എന്നാണ്‌ ജഹാംഗീർ എന്ന പേരിന്റെ അർത്ഥം.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Gayathri',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
