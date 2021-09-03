import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';

class ShortFlipContent extends StatefulWidget {
  ShortFlipContent({Key? key}) : super(key: key);

  @override
  _ShortFlipContentState createState() => _ShortFlipContentState();
}

class _ShortFlipContentState extends State<ShortFlipContent> {
  String htmlData = """<div>
  മല­യാള­‌ത്തില്‍ തിര­മൊഴി എന്ന പദം‌കൊണ്ടും ഏറെ­ക്കുറെ സാധി­ക്കാ­മെന്നു വിചാരി­ക്കുന്നു. ഭാഷ­യുടെ പരിണാമ­ചരിത്രം. ഭാഷ‌യ്‌ക്ക്‌ വാമൊഴി‌­യെന്നും വരമൊഴി‌­യെന്നും രണ്ടു വക­ഭേദ‌ങ്ങള്‍ എന്നാണ്‌ ഭാഷാ­വിദ്യാര്‍ത്ഥികളുടെ ആദ്യപാഠ­ങ്ങളിലൊന്ന്‌. വാ­കൊണ്ടു മൊഴി­യുന്നത്‌ വാമൊഴി. വരച്ചു­കാട്ടുന്നത്‌ വരമൊഴി. <a href='https://github.com'>കംപ്യൂട്ടറിന്റെ</a> സഹായ‌­ത്തോടെ ഭാഷ­യ്‌ക്കു ലഭിക്കുന്ന അധിക‌‌­മാന­ത്തെ­യാണ്.‌',
  ഇവിടെ തിര­മൊഴി എന്ന പദംകൊണ്ട്‌ വിവ­ക്ഷിക്കുന്നത്‌. ഒരൊറ്റമതമുണ്ടുലകിന്നുയിരാം പ്രേമ,മതൊന്നല്ലോ പരക്കെ നമ്മെ പാലമൃതൂട്ടും പാർവണശശിബിംബം.
</div>""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Flexible(
                flex: 4,
                child: GestureDetector(
                  onVerticalDragUpdate: (details) {
                    int sensitivity = 1;
                    if (details.delta.dy > sensitivity) {
                      print("Swipe down detected");
                    } else if (details.delta.dy < -sensitivity) {
                      print("Swipe up detected");
                    }
                  },
                  child: Container(
                    // flex: 4,
                    // constraints: BoxConstraints(),
                    child: Image.network(
                      'https://d27bygd3qv5fha.cloudfront.net/Aug-31-2021/612e2c6796e1654038924e58/August-31-1569-Jahangir-is-born-2021-Aug-31-18-47-43-general.jpeg',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 6,
                child: Container(
                  // color: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 8.0,
                  ),
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onVerticalDragUpdate: (details) {
                      int sensitivity = 8;
                      if (details.delta.dy > sensitivity) {
                        print("Swipe down detected");
                      } else if (details.delta.dy < -sensitivity) {
                        print("Swipe up detected");
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.blue,
                          child: Text(
                            '1569 ആഗസ്റ്റ് 31, ജഹാംഗീറിന്റെ ജനനം',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Gayathri',
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        new Html(
                          data: htmlData,
                          onLinkTap: (String? url,
                              RenderContext context,
                              Map<String, String> attributes,
                              dom.Element? element) {
                            launch(
                              'http://github.com',
                            );
                            //open URL in webview, or launch URL in browser, or any other logic here
                          },
                          style: {
                            "body": Style(
                              fontFamily: 'Gayathri',
                              fontSize: FontSize(18.0),
                              lineHeight: LineHeight(1.4),
                              textOverflow: TextOverflow.ellipsis,
                              maxLines: 10,
                            )
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
