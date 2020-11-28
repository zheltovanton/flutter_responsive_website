import 'dart:ui';
import "../../network/feedback.dart";
import "../../ui/common.dart";
import 'package:flutter/material.dart';
import '../../strings.dart' as s;


class HomeMobilePortrait extends StatefulWidget {
  BuildContext context;
  HomeMobilePortrait(BuildContext context) {
    this.context = context;
  }

  @override
  State<StatefulWidget> createState() => new HomeMobilePortraitState(context);
}

class HomeMobilePortraitState extends State<HomeMobilePortrait>
    with TickerProviderStateMixin {
  BuildContext context;

  HomeMobilePortraitState(BuildContext _context) {
    this.context = _context;
  }

  ScrollController scrollController = new ScrollController();
  ScrollController scroll1 = new ScrollController();
  ScrollController scroll2 = new ScrollController();

  double pos = 0;


  _scrollListener() {
    setState(() {
      pos = scrollController.offset;
      //print(pos.toString());
    });
  }


  @override
  void initState() {
    print("width "+
        MediaQuery.of(context).size.width.toString());

    scrollController.addListener(_scrollListener);
    scroll1.addListener(_scrollListener);
    scroll2.addListener(_scrollListener);
    init();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    scroll1.dispose();
    scroll2.dispose();
    super.dispose();
  }


  void init ()async {

    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        scroll1.animateTo(scroll1.position.maxScrollExtent,
            duration: Duration(seconds: 200), curve: Curves.linear);
        scroll2.animateTo(scroll2.position.maxScrollExtent,
            duration: Duration(seconds: 200), curve: Curves.linear);
      });
    });


  }

  Widget _scroller1() {
    return Container(
        height:150,
        child: SingleChildScrollView(
            controller: scroll1,
            scrollDirection: Axis.horizontal,
            child:Row(
                children:<Widget>[
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                ]
            )
        )
    );

  }
  Widget _scroller2() {
    return Container(
        height:150,
        child: SingleChildScrollView(
            controller: scroll2,
            scrollDirection: Axis.horizontal,
            child:Row(
                children:<Widget>[
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle1.png")),
                  Image(
                      image: new AssetImage("assets/mob_middle2.png")),
                ]
            )
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: s.clBackDefault,
        body: SingleChildScrollView(
            controller: scrollController,
            child: SafeArea(child: Stack( children:<Widget>[
//              Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    SizedBox(height: pos>1? pos/4 : 0),
//                    Image.asset(
//                      "assets/mob_back_layer1.png",
//                      alignment: Alignment(-1, -1),
//                      fit: BoxFit.fitWidth,
//                      width: MediaQuery.of(context).size.width,
//                    ),
//                  ]
//              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: pos>1? pos/2 : 0),
                    Image.asset(
                      "assets/mob_back_layer2.png",
                      alignment: Alignment(-1, -1),
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ]
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                      padding: EdgeInsets.fromLTRB(12,12,12,12),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[Image(
                              image: new AssetImage("assets/top_mobile.png")),

                            s.menuItem(s.txtCrossPlatform),
                            s.menuItem(s.txtServer),
                            s.menuItem(s.txtAutoSys),
                            s.menuItem(s.txtApi),
                            s.menuItem(s.txtIPtel),
                            s.menuItem(s.txtScenario),
                            s.menuItem(s.txtProto),
                            s.menuItem(s.txtDesign)
                          ]
                      )
                  ),
                  Container(
                      color: Colors.black,
                      child:Row(
                          children: <Widget>[
                            Expanded(
                                child:Align(
                                    alignment: Alignment.topLeft,
                                    child:  Padding(
                                        padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                                        child:Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 20,),
                                              s.textHeader(s.clBackDefault,s.txtHow),
                                              SizedBox(height: 12,),
                                              s.textCodeStyle(s.clCodeText,"--------------------------"),
                                              s.textCodeStyle(s.clColor1,"Анализируем,"),
                                              s.textCodeStyle(s.clCodeText,"что нужно клиентам и пользователям его продукта, на основании этого пишем ТЗ"),
                                              s.textCodeStyle(s.clCodeText," "),
                                              s.textCodeStyle(s.clCodeText,"--------------------------"),
                                              s.textCodeStyle(s.clColor2,"Прототипируем:"),
                                              s.textCodeStyle(s.clCodeText,"на ранних этапах прорабатываем логику приложения, примеряем целесообразность примеряемых архитектурных концепций"),
                                              s.textCodeStyle(s.clCodeText," "),
                                              s.textCodeStyle(s.clCodeText,"--------------------------"),
                                              s.textCodeStyle(s.clColor3,"Дизайним:"),
                                              s.textCodeStyle(s.clCodeText,"если есть фирменный стиль, адаптируем  его к интерфейсу приложения, если нет, сами его создаем"),
                                              s.textCodeStyle(s.clCodeText,""),
                                              s.textCodeStyle(s.clCodeText,"--------------------------"),
                                              s.textCodeStyle(s.clColor4,"Тестируем:"),
                                              s.textCodeStyle(s.clCodeText,"постоянно тестируем, на каждом этапе разработки  тестируем на реальных девайсах"),
                                              s.textCodeStyle(s.clCodeText,""),
                                              s.textCodeStyle(s.clCodeText,"--------------------------"),
                                              s.textCodeStyle(s.clColor5,"Поддерживаем:"),
                                              s.textCodeStyle(s.clCodeText,"следим за бесперебойностью работы приложения, обновляем под новые версии программного обеспечения, отслеживаем отзывы пользователей."),
                                              s.textCodeStyle(s.clCodeText,""),
                                              s.textCodeStyle(s.clCodeText,"Наша команда готова подхватить ваш проект на любой из стадий."),
                                              SizedBox(height: 20,),
                                            ]
                                        )
                                    )
                                )
                            )
                          ]
                      )
                  ),
                  _scroller1(),
                  Row(
                      children: <Widget>[
                        SizedBox(width: 15,),
                        Expanded(child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 20,),
                              s.textHeader(Colors.black,"Почему у нас получается?"),
                              SizedBox(height: 12,),
                              s.textCodeStyle(s.clColor4,"Мы оптимизируем "),
                              s.textCodeStyle(s.clCodeText,"временной ресурс за счет постоянного взаимодействия с заказчиком. Заранее  договариваемся о каналах общения и передаче информации, определяем контактную группу, регулярно встречаемся и предоставляем проектную документацию заказчику. Когда заказчик максимально вовлечен, он больше знает, и, соответственно, ему легче принять решение."),
                              s.textCodeStyle(s.clCodeText,"--------------------------"),
                              s.textCodeStyle(s.clColor1,""),
                              s.textCodeStyle(s.clColor3,"Мы заранее продумываем проблемы, "),
                              s.textCodeStyle(s.clCodeText,"которые могут возникнуть. Чем многозадачнее проект, тем больше сложностей возникает — проектные  риски. Они выявляются на любой стадии  реализации проекта, поэтому мы анализируем и заранее готовимся к устранению последствий."),
                              SizedBox(height: 20,),
                            ]
                        )
                        )
                      ]
                  ),
                  _scroller2(),
                  SizedBox(height: 20,),
                  SendForm(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(24,12,12,12),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                            s.menuItem(s.txtCrossPlatform),
                            s.menuItem(s.txtServer),
                            s.menuItem(s.txtAutoSys),
                            s.menuItem(s.txtApi),
                            s.menuItem(s.txtIPtel),
                            s.menuItem(s.txtScenario),
                            s.menuItem(s.txtProto),
                            s.menuItem(s.txtDesign),
                            SizedBox(height: 20,),
                            SizedBox(
                                width: 150,
                                child: Image(
                                    image: new AssetImage("assets/top_mobile.png")
                                )
                            ),
                            SizedBox(height: 20,),
                            s.textCodeStyle(Colors.black,"XDEV.team - команда профессиональных разработчиков"),
                            s.textCodeStyle(Colors.black,"Москва, Горбунова,2 стр. 3"),
                            s.textCodeStyle(Colors.black,"+7 800 1000-657"),
                            s.textCodeStyle(Colors.black,"help@xdev.team"),
                            SizedBox(height: 20,),
                            s.textCodeStyle(s.clCodeText,"© ООО «КРИТ», 2017-2020 г. Все права защищены."),
                          ]
                      )
                  ),

                ],
              )]
            )
            )
        )
    );
  }
}


