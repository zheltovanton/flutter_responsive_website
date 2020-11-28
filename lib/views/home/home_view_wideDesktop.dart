import 'dart:math';
import 'package:example/widgets/app_drawer/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../strings.dart' as s;
import '../../ui/common.dart';

class HomeMobileDesktopWide extends StatefulWidget {
  BuildContext context;
  HomeMobileDesktopWide(BuildContext context) {
    this.context = context;
  }

  @override
  State<StatefulWidget> createState() => new HomeMobileDesktopWideState(context);
}

class HomeMobileDesktopWideState extends State<HomeMobileDesktopWide>
    with TickerProviderStateMixin {
  BuildContext context;

  HomeMobileDesktopWideState(BuildContext _context) {
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
    print("width wide desktop "+
        MediaQuery.of(context).size.width.toString());

    scrollController.addListener(_scrollListener);
    scroll1.addListener(_scrollListener);
    scroll2.addListener(_scrollListener);
    init();
    super.initState();
  }

  @override
  void dispose() {
//    scrollController.dispose();
//    scroll1.dispose();
    scroll2.dispose();
    super.dispose();
  }


  void init ()async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
//        scroll1.animateTo(scroll1.position.maxScrollExtent,
//            duration: Duration(seconds: 200), curve: Curves.linear);
//        scroll2.animateTo(scroll2.position.maxScrollExtent,
//            duration: Duration(seconds: 200), curve: Curves.linear);
      });
    });
  }

  Widget _scroller2() {
    return SingleChildScrollView(
      controller: scroll2,
      scrollDirection: Axis.horizontal,
      child:
      Container(
          height:350,
          child: Image(
              fit: BoxFit.fitHeight,
              image: new AssetImage("assets/tablet/scroller.jpg")
          )
      ),
    );

  }

  Widget promoText1(){
    return  Container(
        color: Colors.black,
        child:Row(
            children: <Widget>[
              Expanded(
                  child:Align(
                      alignment: Alignment.topLeft,
                      child:  Padding(
                          padding: EdgeInsets.fromLTRB(24, 12, 12, 12),
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
    );
  }

  Widget promoText2(){
    return  Container(
        color: Colors.black,
        child:Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  child:Align(
                      alignment: Alignment.topLeft,
                      child:  Padding(
                          padding: EdgeInsets.fromLTRB(24, 12, 12, 12),
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                SizedBox(height: 20,),
                                s.textHeader(s.clBackDefault,"Почему у нас получается?"),
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
                  )
              )
            ]
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: s.clBackDefault,
        body: SingleChildScrollView(
            controller: scrollController,
            child: SafeArea(
                child: Stack(
                    alignment:Alignment.topCenter,
                    children:<Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            // SizedBox(height: 500,),
                            SizedBox(height: pos>1? pos/4 : 0),
                            Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/desktop/top.jpg",
                                  alignment: Alignment(-1, -1),
                                  fit: BoxFit.fill,
                                  width: MediaQuery.of(context).size.width,
                                  height: 6200-pos/2,
                                  //height: MediaQuery.of(context).size.height+pos,
                                )
                            )

                          ]
                      ),


//              Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    SizedBox(height: pos>1? pos/2 : 0),
//                    Image.asset(
//                      "assets/mob_back_layer1.png",
//                      alignment: Alignment(-1, -1),
//                      fit: BoxFit.fitWidth,
//                      width: MediaQuery.of(context).size.width,
//                    ),
//                  ]
//              ),
                      Container(
                          width:900,

                          child:Image(
                              image: new AssetImage("assets/top_tablet.png"))
                      ),
                      Container(
                          width:1200,
                          alignment: Alignment.center,
                          child:Column(
                              children:<Widget>[

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                    Padding(
                                        padding: EdgeInsets.fromLTRB(24,0,24,12),
                                        child:Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 230,),
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

                                    IntrinsicHeight(child:Row(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(flex: 1,
                                            child:
                                            Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("assets/tablet/5.png"),
                                                      fit: BoxFit.fitWidth,
                                                      alignment: Alignment.topCenter
                                                  ),
                                                ),
                                                child: null
                                            )
                                        ),
                                        Expanded(flex: 2,
                                          child: Container(
                                            alignment: FractionalOffset.topCenter,
                                            color: Colors.black,
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(height: 12,),
                                                  promoText1(),

                                                  SizedBox(height: 20,),

                                                ]),
                                          ),
                                        ),
                                      ],)
                                    ),

                                    _scroller2(),

                                    IntrinsicHeight(child:Row(
                                      mainAxisSize: MainAxisSize.max,
                                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(flex: 2,
                                          child:
                                          Container(
                                            width: double.infinity,
                                            //alignment: FractionalOffset.topCenter,
                                            color: Colors.black,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                //mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
//                                          SizedBox(height: 12,),
                                                  promoText2(),
                                                  SizedBox(height: 20,),
                                                  Image(
                                                      fit: BoxFit.fitWidth,
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 600,
                                                      image: new AssetImage("assets/tablet/10.jpg")),
//                                                  Image(
//                                                      fit: BoxFit.fitWidth,
//
//                                                      width: MediaQuery.of(context).size.width,
//                                                      image: new AssetImage("assets/tablet/11.png")),

                                                ]),
                                          ),
                                        ),

                                        Expanded(flex: 1,
                                            child:
                                            Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("assets/tablet/9.jpg"),
                                                      fit: BoxFit.fitWidth,
                                                      alignment: Alignment.topCenter
                                                  ),
                                                ),
                                                child: null
                                            )
                                        ),
                                      ],)
                                    ),
                                    Image(
                                        fit: BoxFit.fitWidth,
                                        width: MediaQuery.of(context).size.width,
                                        image: new AssetImage("assets/tablet/20.jpg")

                                    ),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(24,20,24,20),
                                        child:s.textHeader(Colors.black,"Наша формула проста - XDEV")),

                                    Padding(
                                        padding: EdgeInsets.fromLTRB(24,0,24,12),
                                        child:Image(
                                            fit: BoxFit.fitWidth,
                                            image: new AssetImage("assets/tablet/solution.png")
                                        )
                                    ),
                                    SendFormHoriz(),
                                    Row(
                                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(flex: 1,
                                              child:
                                              Container(child: Image(
                                                  fit: BoxFit.fitHeight,
                                                  height: 400,
                                                  image: new AssetImage("assets/tablet/chair.png")),)
                                          ),
                                          Expanded(flex: 2,
                                            child:
                                            Container(child:Padding(
                                                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                                child:Column(children: [
                                                  Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Expanded(
                                                          flex: 3,
                                                          child: Column(children: [
                                                            s.menuItem2(s.txtCrossPlatform),
                                                            s.menuItem2(s.txtServer),
                                                            s.menuItem2(s.txtAutoSys),
                                                            s.menuItem2(s.txtIPtel),

                                                          ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Column(children: [
                                                            s.menuItem2(s.txtApi),
                                                            s.menuItem2(s.txtScenario),
                                                            s.menuItem2(s.txtProto),
                                                            s.menuItem2(s.txtDesign)
                                                          ],
                                                          ),
                                                        ),

                                                      ]
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
                                            )
                                            ),
                                          )]
                                    )

                                  ],
                                )]
                          ))
                    ]
                )
            )
        )
    );
  }
}
