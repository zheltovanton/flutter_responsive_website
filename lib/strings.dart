import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
const String txtVersion = "3.3";
const int Build = 36;

const String txtNothingFind = "Нет записей";
const String txtLoading = "Загрузка";
const String txtCrossPlatform = "Кросс-платформенные приложения";
const String txtServer = "Серверная архитектура";
const String txtAutoSys = "Автоматизированные системы";
const String txtApi = "API";
const String txtIPtel = "IP-телефония";
const String txtScenario = "Сценарии";
const String txtProto = "Прототипы";
const String txtDesign = "Дизайн";
const String txtHow = "Как мы это реализуем?";

const Color clTextDefault = Color(0xFFf8f7fc);
const Color clBackDefault = Color(0xFFFFF500);
const Color clColor1 = Color(0xFF75fa7a);
const Color clColor2 = Color(0xFF6dedfc);
const Color clColor3 = Color(0xFFea39de);
const Color clColor4 = Color(0xFF7c1c98);
const Color clColor5 = Color(0xFFdd6c2b);
const Color clCodeText = Color(0xFF707070);

MaterialColor clMatBack = const MaterialColor(0xFF462fbd,
    const {
      50 : const Color(0xFF462fbd),
      100 : const Color(0xFF462fbd),
      200 : const Color(0xFF462fbd),
      300 : const Color(0xFF462fbd),
      400 : const Color(0xFF462fbd),
      500 : const Color(0xFF462fbd),
      600 : const Color(0xFF462fbd),
      700 : const Color(0xFF462fbd),
      800 : const Color(0xFF462fbd),
      900 : const Color(0xFF462fbd)});

Map<int,String> strMonth =  {
  1 : "январь",
  2 : "февраль",
  3 : "март",
  4 : "апрель",
  5 : "май",
  6 : "июнь",
  7 : "июль",
  8 : "август",
  9 : "сентябрь",
  10 : "октябрь",
  11 : "ноябрь",
  12 : "декабрь"
};

const TextStyle tsMenuMobile = TextStyle(
  fontFamily: "AnonymousPro",
  fontWeight: FontWeight.w700,
  fontSize: 24,
);
const TextStyle tsMenuMobileW = TextStyle(
  fontFamily: "AnonymousPro",
  fontWeight: FontWeight.w700,
  fontSize: 18,
);

const TextStyle tsMenuMobile2 = TextStyle(
  fontFamily: "AnonymousPro",
  fontWeight: FontWeight.w700,
  fontSize: 18,
);

const TextStyle tsCodeNumStr = TextStyle(
  fontFamily: "AnonymousPro",
  color: clCodeText,
  fontWeight: FontWeight.w500,
  fontSize: 15,
);


Widget menuItem(String str){
  return Align(
      alignment: Alignment.topLeft,
      child:  Padding(
          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child:new SelectableText(str,
              textAlign: TextAlign.left,
              //softWrap: true,
              style: tsMenuMobile
          )
      )
  );
}
Widget menuItemW(String str){
  return Align(
      alignment: Alignment.topLeft,
      child:  Padding(
          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child:new SelectableText(str,
              textAlign: TextAlign.left,
              //softWrap: true,
              style: tsMenuMobileW
          )
      )
  );
}
Widget menuItem2(String str){
  return Align(
      alignment: Alignment.topLeft,
      child:  Padding(
          padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
          child:new SelectableText(str,
              textAlign: TextAlign.left,
              //softWrap: true,
              style: tsMenuMobile2
          )
      )
  );
}

Widget textHeader(Color color,String str){
  return  new SelectableText(str,
      textAlign: TextAlign.left,
      //softWrap: true,
      style: TextStyle(
        fontFamily: "AnonymousPro",
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 48,
      )
  );
}
Widget textHeaderW(Color color,String str){
  return  new SelectableText(str,
      textAlign: TextAlign.left,
      //softWrap: true,
      style: TextStyle(
        fontFamily: "AnonymousPro",
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      )
  );
}

Widget textCodeStyle(Color color,  String str){
  return Align(
      alignment: Alignment.topLeft,
      child:Padding(
          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child:SelectableText(str,
              textAlign: TextAlign.left,
              //softWrap: true,
              style: TextStyle(
                fontFamily: "AnonymousPro",
                color: color,
                height: 1.3,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              )
          )
      )
  );
}

Widget textCodeStyleW(Color color,  String str){
  return Align(
      alignment: Alignment.topLeft,
      child:Padding(
          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child:SelectableText(str,
              textAlign: TextAlign.left,
              //softWrap: true,
              style: TextStyle(
                fontFamily: "AnonymousPro",
                color: color,
                height: 1.3,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              )
          )
      )
  );
}