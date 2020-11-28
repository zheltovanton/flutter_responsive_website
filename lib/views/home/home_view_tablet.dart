import 'package:example/widgets/app_drawer/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../strings.dart' as s;
import '../../ui/common.dart';

class HomeMobileTablet extends StatefulWidget {
  BuildContext context;
  HomeMobileTablet(BuildContext context) {
    this.context = context;
  }

  @override
  State<StatefulWidget> createState() => new HomeMobileTabletState(context);
}

class HomeMobileTabletState extends State<HomeMobileTablet>
    with TickerProviderStateMixin {
  BuildContext context;

  HomeMobileTabletState(BuildContext _context) {
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
    print("width tablet "+
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
        scroll2.animateTo(scroll2.position.maxScrollExtent,
            duration: Duration(seconds: 200), curve: Curves.linear);
      });
    });
  }

  Widget _scroller2() {
    return Container(
        height:350,
        color: Colors.black,
        child: SingleChildScrollView(
            controller: scroll2,
            scrollDirection: Axis.horizontal,
            child:Row(
                children:<Widget>[
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/1.png"))),
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/2.png"))),
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/3.png"))),
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/4.png"))),
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/6.png"))),
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/7.png"))),
                  Container(
                      height:350,child:
                  Image(
                      fit: BoxFit.fitHeight,
                      image: new AssetImage("assets/tablet/8.png"))),
                ]
            )
        )
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
            child: Stack( children:<Widget>[
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
                  children: <Widget>[Image(
                      image: new AssetImage("assets/top_tablet.png"))

                  ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                      padding: EdgeInsets.fromLTRB(24,0,24,12),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 250,),
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(flex: 2,
                        child:
                        Container(
                          alignment: FractionalOffset.topCenter,
                          color: Colors.black,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 12,),
                                promoText2(),
                                SizedBox(height: 20,),
                                Image(
                                    fit: BoxFit.fitWidth,
                                    image: new AssetImage("assets/tablet/10.png")),
                                Image(
                                    fit: BoxFit.fitWidth,
                                    image: new AssetImage("assets/tablet/11.png")),

                              ]),
                        ),
                      ),
                      Expanded(flex: 1,
                          child:
                          Container(
                              color: Colors.white,
                              alignment: FractionalOffset.topCenter,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image(
                                        fit: BoxFit.fitWidth,
                                        image: new AssetImage("assets/tablet/9.png")),
                                    Image(
                                        fit: BoxFit.fitWidth,
                                        image: new AssetImage("assets/tablet/13.png")),
                                  ]
                              )
                          )
                      ),
                    ],)
                  ),
                  IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(flex: 4,
                            child:
                            Container(
                              alignment: FractionalOffset.topCenter,
                              color: Colors.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                    Image(
                                        fit: BoxFit.fitWidth,
                                        image: new AssetImage("assets/tablet/15.png")),
                                    Image(
                                        fit: BoxFit.fitWidth,
                                        image: new AssetImage("assets/tablet/16.png")),

                                  ]),
                            ),
                          ),
                          Expanded(flex: 7,
                              child:
                              Container(
                                  color: Colors.white,
                                  alignment: FractionalOffset.topCenter,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Image(
                                            fit: BoxFit.fitWidth,
                                            image: new AssetImage("assets/tablet/17.png")),
                                        Image(
                                            fit: BoxFit.fitWidth,
                                            image: new AssetImage("assets/tablet/18.png")),
                                        Image(
                                            fit: BoxFit.fitWidth,
                                            image: new AssetImage("assets/tablet/19.png")),

                                      ]
                                  )
                              )

                          ),
                        ],)
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
                  IntrinsicHeight(child:Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(flex: 1,
                            child:
                            Container(child: Image(
                                fit: BoxFit.fitWidth,
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
                  )
                ],
              )]
            )
            )
    );
  }
}
