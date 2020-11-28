import 'package:flutter/material.dart';
import '../network/feedback.dart';
import '../strings.dart' as s;

class SendForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendFormState();
}

class SendFormState extends State<SendForm> {

  String userPhone = '';
  bool tapped = false;
  Duration _animationDuration = Duration(milliseconds: 500);

  TextStyle _textStyle1 = TextStyle(
    fontFamily: "AnonymousPro",
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 24,
  );

  TextStyle _textStyle2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: "AnonymousPro",
    color: s.clBackDefault,
    fontSize: 24,
  );

  TextStyle _textStyle = TextStyle(
    fontFamily: "AnonymousPro",
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 24,
  );

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(25, 12, 25, 12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new TextField(
                enableInteractiveSelection: false,
                obscureText: false,
                textAlign: TextAlign.left,
                // focusNode: _focusNode,
                style: s.tsMenuMobile,
                onChanged: (val) {
                  setState(() {
                    userPhone = val;
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Ваш номер телефона",
                  border: InputBorder.none,
                  hintStyle:
                  const TextStyle(color: s.clCodeText, fontSize: 24.0),
                  contentPadding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
                ),
              ),
              SizedBox(height: 20,),
              AnimatedContainer(
                height: 50.0,
                color: tapped ? Colors.black54 : Colors.black,
                alignment: Alignment.center,
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                child: InkWell(
                  onTapDown: (s) {
                    setState(() {
                      tapped = true;
                      _textStyle = _textStyle2;
                    });
                  },
                  onTapCancel: () {

                  },
                  onTap: () {
                    FeedbackSend().send(
                        "contact from xdev.team site : " + userPhone);
                    showDialog(
                      context: context,
                      builder: (_) => FunkyOverlay(),
                    );
                    setState(() {
                      tapped = false;
                      _textStyle = _textStyle1;
                    });
                  },
                  child: new Container(
                    height: 50,
                    alignment: FractionalOffset.center,

                    child: AnimatedDefaultTextStyle(
                      duration: _animationDuration,
                      child: Text("Свяжитесь со мной"),
                      style: _textStyle,
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}
class SendFormW extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendFormStateW();
}

class SendFormStateW extends State<SendFormW> {

  String userPhone = '';
  bool tapped = false;
  Duration _animationDuration = Duration(milliseconds: 500);

  TextStyle _textStyle1 = TextStyle(
    fontFamily: "AnonymousPro",
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 18,
  );

  TextStyle _textStyle2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: "AnonymousPro",
    color: s.clBackDefault,
    fontSize: 18,
  );

  TextStyle _textStyle = TextStyle(
    fontFamily: "AnonymousPro",
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 18,
  );

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(25, 12, 25, 12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new TextField(
                enableInteractiveSelection: false,
                obscureText: false,
                textAlign: TextAlign.left,
                // focusNode: _focusNode,
                style: s.tsMenuMobile,
                onChanged: (val) {
                  setState(() {
                    userPhone = val;
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Ваш номер телефона",
                  border: InputBorder.none,
                  hintStyle:
                  const TextStyle(color: s.clCodeText, fontSize: 18.0),
                  contentPadding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
                ),
              ),
              SizedBox(height: 20,),
              AnimatedContainer(
                height: 50.0,
                color: tapped ? Colors.black54 : Colors.black,
                alignment: Alignment.center,
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                child: InkWell(
                  onTapDown: (s) {
                    setState(() {
                      tapped = true;
                      _textStyle = _textStyle2;
                    });
                  },
                  onTapCancel: () {

                  },
                  onTap: () {
                    FeedbackSend().send(
                        "contact from xdev.team site : " + userPhone);
                    showDialog(
                      context: context,
                      builder: (_) => FunkyOverlay(),
                    );
                    setState(() {
                      tapped = false;
                      _textStyle = _textStyle1;
                    });
                  },
                  child: new Container(
                    height: 50,
                    alignment: FractionalOffset.center,

                    child: AnimatedDefaultTextStyle(
                      duration: _animationDuration,
                      child: Text("Свяжитесь со мной"),
                      style: _textStyle,
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}

class SendFormHoriz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendFormStateHoriz();
}

class SendFormStateHoriz extends State<SendFormHoriz> {

  String userPhone = '';
  bool tapped = false;
  Duration _animationDuration = Duration(milliseconds: 500);

  TextStyle _textStyle1 = TextStyle(
    fontFamily: "AnonymousPro",
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 24,
  );

  TextStyle _textStyle2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: "AnonymousPro",
    color: s.clBackDefault,
    fontSize: 24,
  );

  TextStyle _textStyle = TextStyle(
    fontFamily: "AnonymousPro",
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 24,
  );

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24.0),
    child:Row(
        children: <Widget>[
    Flexible(
    child: TextField(
            enableInteractiveSelection: false,
            obscureText: false,
            textAlign: TextAlign.left,
            // focusNode: _focusNode,
            style: s.tsMenuMobile,
            onChanged: (val) {
              setState(() {
                userPhone = val;
              });
            },
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Ваш номер телефона",
              border: InputBorder.none,
              hintStyle: const TextStyle(color: s.clCodeText, fontSize: 24.0),
              contentPadding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            ),
          )),
          SizedBox(width: 40,),
          AnimatedContainer(
            height: 50.0,
            color: tapped ? Colors.black54 : Colors.black,
            alignment: Alignment.center,
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            child: InkWell(
              onTapDown: (s) {
                setState(() {
                  tapped = true;
                  _textStyle = _textStyle2;
                });
              },
              onTapCancel: () {

              },
              onTap: () {
                FeedbackSend().send(
                    "contact from xdev.team site : " + userPhone);
                showDialog(
                  context: context,
                  builder: (_) => FunkyOverlay(),
                );
                setState(() {
                  tapped = false;
                  _textStyle = _textStyle1;
                });
              },
              child: new Container(
                width: 250,
                alignment: FractionalOffset.center,

                child: AnimatedDefaultTextStyle(
                  duration: _animationDuration,
                  child: Text("Свяжитесь со мной"),
                  style: _textStyle,
                ),
              ),
            ),
          ),
        ]
    ));
  }
}


class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: s.clBackDefault,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: s.textHeader(Colors.black,"Сообщение отправлено"),
            ),
          ),
        ),
      ),
    );
  }
}

