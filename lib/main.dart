import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Psicóloga Alice Medeiros',
      home: const MyHomePage(title: 'Site Alice'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    double val = 0;
    if (swidth>1000)[val = 0.3];
    if (swidth>700)[
    if (swidth<1000)[val = 0.4]];
    if (swidth>600)[
    if (swidth<800)[val = 0.5]];
    if (swidth<600)[val = 0.85];
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(width: swidth*val, backgroundColor: Color.fromARGB(255, 210, 189, 221),
        child: Row(children: [
          Container(width: swidth*val*0.025, height: sheight, color: Color.fromARGB(255, 70, 41, 90)),
          Container(width: swidth*val*0.95, child: Column(children: [
            Container(margin: EdgeInsets.all(40), height: 250, width: 250, decoration: BoxDecoration(color: Color.fromARGB(255, 70, 41, 90), borderRadius: BorderRadius.circular(100)),
              child: CircleAvatar(radius: 100, backgroundImage: AssetImage('assets/pic.jpeg'))),
            Container(margin: EdgeInsets.only(left: 10), alignment: Alignment.centerLeft, child: Text('Sobre Alice', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, top: 15, bottom: 15), alignment: Alignment.centerLeft, child: Text('CRP: 17/3977', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10), alignment: Alignment.centerLeft, child: Text('Número: (84) 9123-3527', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, top: 15, bottom: 15), alignment: Alignment.centerLeft, child: Text('E-mail: psicologaalicemedeiros@gmail.com', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10), alignment: Alignment.centerLeft, child: Text('Agende já a sua consulta conosco via e-mail, WhatsApp, ou ligue, se preferir!', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w500))),  
        ])),
        Container(width: swidth*val*0.025, height: sheight, alignment: Alignment.centerRight, color: Color.fromARGB(255, 70, 41, 90)),
      ])),
      body: SingleChildScrollView( 
      physics: BouncingScrollPhysics(),
      child: Column(children: [
        if (swidth>500)...[
        Container(height: 50, width: swidth, 
          color:  Color.fromARGB(255, 70, 41, 90),
          child: Row(children: [
            Spacer(flex:3),
            Container(width: 135, height: 50, alignment: Alignment.centerLeft, child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), 
              child: Row(children: [
                Icon(Icons.menu, color: Colors.white, size: 25),
                Text(' Sobre mim', style: GoogleFonts.raleway(color: Colors.white, fontSize: 17))]))),
            Spacer(flex:100),
            Container(alignment: Alignment.centerRight, padding: EdgeInsets.only(left: swidth*0.025), child:
              TextButton (onPressed: _launchURL,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 18),
                  Text(' psi.alicemedeiros', style: TextStyle(color: Colors.white))
            ]))),
            Container(child:
              TextButton (onPressed: _launchURL1,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 18)),
                  Container(child: Text(' Converse conosco', style: TextStyle(color: Colors.white)))
            ]))),
            Spacer(flex:3),
          ])),
        ]else...[
          Container(height: 50, width: swidth, 
          color:  Color.fromARGB(255, 70, 41, 90),
          child: Row(children: [
            Spacer(flex:3),
            Container(width: 135, height: 50, alignment: Alignment.centerLeft, child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), 
              child: Row(children: [
                Icon(Icons.menu, color: Colors.white, size: 25),
                Text(' Sobre mim', style: GoogleFonts.raleway(color: Colors.white, fontSize: 17))]))),
            Spacer(flex:100),
            Container(alignment: Alignment.centerRight, padding: EdgeInsets.only(left: swidth*0.025), child:
              TextButton (onPressed: _launchURL,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 18),
            ]))),
            Container(child:
              TextButton (onPressed: _launchURL1,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 18)),
            ]))),
            Spacer(flex:3),
          ])),
        ],
        Center(child: Container(width: 700, height: 220, 
          child: Image.asset('assets/Logo2.png', fit: BoxFit.cover)
          )),
        if (swidth>800)...[
        Container(width: swidth, height: 600, color: Color.fromARGB(255, 70, 41, 90), 
          margin: EdgeInsets.only(bottom: 120), child: Column(children: [
            Center(child: ImageSlideshow(                
              width: swidth*0.95, /// Width of the [ImageSlideshow].
              height: 600, /// Height of the [ImageSlideshow].
              initialPage: 0, /// The page to show when first creating the [ImageSlideshow].
              indicatorColor: Color.fromARGB(255, 70, 41, 90), /// The color to paint the indicator.
              indicatorBackgroundColor: Colors.grey, 
              autoPlayInterval: 3500,
              isLoop: true,
              indicatorRadius: 5,
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              children: [
                Row(children: [
                  Container(width: swidth*(0.95/2), height: 600, child: Image.asset('assets/img1.jpeg', fit: BoxFit.cover)),
                  Container(width: swidth*(0.95/2), height: 600, child: Image.asset('assets/img4.jpeg', fit: BoxFit.cover))
                ]),
                Row(children: [
                  Container(width: swidth*(0.95/2), height: 600, child: Image.asset('assets/img5.jpeg', fit: BoxFit.cover)),
                  Container(width: swidth*(0.95/2), height: 600, child: Image.asset('assets/img3.jpeg', fit: BoxFit.cover))
                  ]) 
                ],
              ))  
            ])),
        ]else...[
          Container(width: swidth, height: 600, color: Color.fromARGB(255, 70, 41, 90), 
          margin: EdgeInsets.only(bottom: 120), child: Column(children: [
            Center(child: ImageSlideshow(                
              width: swidth*0.95, /// Width of the [ImageSlideshow].
              height: 600, /// Height of the [ImageSlideshow].
              initialPage: 0, /// The page to show when first creating the [ImageSlideshow].
              indicatorColor: Color.fromARGB(255, 70, 41, 90), /// The color to paint the indicator.
              indicatorBackgroundColor: Colors.grey, 
              autoPlayInterval: 3500,
              isLoop: true,
              indicatorRadius: 5,
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              children: [
                Row(children: [
                  Container(width: swidth*(0.95), height: 600, child: Image.asset('assets/img1.jpeg', fit: BoxFit.cover)),
                ]),
                Row(children: [
                  Container(width: swidth*(0.95), height: 600, child: Image.asset('assets/img4.jpeg', fit: BoxFit.cover))
                ]),
                Row(children: [
                  Container(width: swidth*(0.95), height: 600, child: Image.asset('assets/img5.jpeg', fit: BoxFit.cover)),
                  ]),
                 Row(children: [
                  Container(width: swidth*(0.95), height: 600, child: Image.asset('assets/img3.jpeg', fit: BoxFit.cover))
                  ]) 
                ],
              ))  
            ])),
          ],
          if (swidth>(1365))...[
            Container(height: 350, width: swidth,
              child: Row(children: [
                Container( height: 350, width: swidth*0.025, color: Color.fromARGB(255, 70, 41, 90)),
                  Container(width: swidth*0.30, height: 350, color: Color.fromARGB(255, 200, 180, 210),
                    child: Center(child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), child: 
                      Container(width: swidth*0.30, height: 350, child: Row(children: [
                        Container(width: 80, height: 80, child: Image.asset('assets/Logo1.png', fit: BoxFit.cover)),
                        Text('Quem sou eu?', style: GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 42)
                      )]
                    ))
                  ))),
                Container(height: 350, width: (16/9)*350, 
                  child: CustomVideo()),
              Container( height: 350, width: swidth*0.19445, color:Color.fromARGB(255, 200, 180, 210), padding: EdgeInsets.only(left: 20), alignment: Alignment.centerRight, child: Column(children: [
                Container(margin: EdgeInsets.only(top: 105), width:swidth*0.19, height: 120,
                  child: Text('“Desbravando a dor e a delícia de tornar-se adulto.”', style: 
                    GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 28, fontStyle: FontStyle.italic))),
                Container(width:swidth*0.19, height: 40, 
                  child: Text('Alice Medeiros', style: 
                    GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 24))),
                ])),
              Container( height: 350, width: swidth*0.025, color: Color.fromARGB(255, 70, 41, 90)),
            ])),
          ],if (swidth<(1365))...[
            Container(height: 140+180+351, width: swidth,
              child: Column(children: [
                Container(width: swidth, height: 140, color: Color.fromARGB(255, 200, 180, 210),
                    child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), child: 
                      Container(width: swidth, height: 140, alignment: Alignment.center, child: Row(children: [
                        Spacer(),
                        Container(width: 60, height: 60, margin: EdgeInsets.only(right: 10), child: Image.asset('assets/Logo1.png', fit: BoxFit.cover)),
                        Container(width: 300, height: 40, child: Text('Quem sou eu?', style: GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 40)
                      )),
                      Spacer(),
                      ]
                    ))
                  )),
                Container(height: 351, width: swidth, alignment: Alignment.center, color: Color.fromARGB(255, 70, 41, 90), 
                  child: Container(width: swidth, height: 351, color: Color.fromARGB(255, 70, 41, 90), child: CustomVideo())),
              Container( height: 180, width: swidth, color:Color.fromARGB(255, 200, 180, 210), child: Column(children: [
                Container(margin: EdgeInsets.only(top: 30, left: 30, right: 30), width: swidth, alignment: Alignment.center, height: 80,
                  child: Text('“Desbravando a dor e a delícia de tornar-se adulto.”', maxLines: 2, style: 
                    GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 24, fontStyle: FontStyle.italic))),
                Container(width:swidth, height: 30, margin: EdgeInsets.only(top: 10), alignment: Alignment.center,
                  child: Text('Alice Medeiros', style: 
                    GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 20))),
                ])),
            ])),
          ], if (swidth>1100)...[
          Container(margin: EdgeInsets.only(top: 50, bottom: 50), width: swidth, height: 810, child:
              Column( crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(margin: EdgeInsets.only(top: 70, bottom: 40),
                width: swidth*0.8, height: 220,  decoration: BoxDecoration(color: Color.fromARGB(255, 210, 189, 221),
                borderRadius: BorderRadius.circular(10), border: Border.all(width: 3, color: Color.fromARGB(255, 70, 41, 90))),         
                child: TextButton (onPressed: () {}, child:  Column(children: [
                    Container(margin: EdgeInsets.only(top: 30, right: 20, left: 20), child: Text('SERVIÇOS', style: 
                      GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 28))),
                    Container(margin: EdgeInsets.only(top: 25, right: 20, left: 20), child: AutoSizeText('Psicoterapia individual nas modalidades presencial e online através de plataforma segura. Ambas semanais com duração de até 60 minutos.  No primeiro caso, nos encontramos pessoalmente em meu consultório. Já para o atendimento online, você pode escolher onde estará no momento da sessão, basta ter um computador, celular ou tablet com acesso à internet.', textAlign: TextAlign.justify, style: 
                      GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 19), maxLines: 11),
                  )])
                )),
                Container(margin: EdgeInsets.only(bottom: 70), 
                width: swidth*0.8, height: 410,  decoration: BoxDecoration(color: Color.fromARGB(255, 210, 189, 221),
                borderRadius: BorderRadius.circular(10), border: Border.all(width: 3, color: Color.fromARGB(255, 70, 41, 90))),
                child: TextButton (onPressed: () {}, child:  Column(children: [
                    Container(margin: EdgeInsets.only(top: 30, right: 20, left: 20), child: Text('TEXTO EXPLICATIVO', style: 
                      GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 28))),
                    Container(margin: EdgeInsets.only(top: 25, right: 20, left: 20), child: AutoSizeText('Olhar para si mesmo é, muitas vezes, desafiador. Pode provocar medo, insegurança, aquele pensamento de “depois eu penso nisso, agora não”. Mas e quando aquilo que foi deixado para depois começa a nos atrapalhar, provocando ansiedade, tristeza e a sensação de que precisamos falar com alguém sobre aquele assunto? É a partir desse momento que a psicoterapia poderia ajudar. Pode parecer estranho falar sobre si com alguém que não conhecemos. Com o tempo, passamos a confiar no psicólogo que nos acompanha, nos sentimos à vontade para falar sobre os assuntos mais delicados, não nos sentimos julgados, mas acolhidos. Semana após semana percebemos as contribuições das sessões em nosso dia a dia, até que em conjunto com o nosso terapeuta decidimos que naquele momento já podemos seguir sem o acompanhamento profissional, que já conseguimos lidar melhor com os acontecimentos de nossas vidas. Deixamos de nos ver semanalmente, mas cientes de que podemos, a qualquer momento, escolher voltar. Essa é a beleza da psicoterapia.', textAlign: TextAlign.justify, style: 
                      GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 19), maxLines: 30),
              )])))
            ]),
          )
        ]else...[
          Column(children: [
              Container(margin: EdgeInsets.only(top: 80, bottom: 40), 
                width: swidth*0.95, height: sheight*0.21/(0.4),  decoration: BoxDecoration(color: Color.fromARGB(255, 210, 189, 221),
                borderRadius: BorderRadius.circular(10), border: Border.all(width: 3, color: Color.fromARGB(255, 70, 41, 90))),         
                child: TextButton (onPressed: () {}, child:  Column(children: [
                    Container(margin: EdgeInsets.only(top: 30, right: 20, left: 20), child: Text('SERVIÇOS', style: 
                      GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 28))),
                    Container(margin: EdgeInsets.only(top: 25, right: 20, left: 20), child: Text('Psicoterapia individual nas modalidades presencial e online através de plataforma segura. Ambas semanais com duração de até 60 minutos.  No primeiro caso, nos encontramos pessoalmente em meu consultório. Já para o atendimento online, você pode escolher onde estará no momento da sessão, basta ter um computador, celular ou tablet com acesso à internet.', textAlign: TextAlign.justify, style: 
                      GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 19)),
                  )])
                )),
              Container(margin: EdgeInsets.only(bottom: 80), 
                width: swidth*0.95, height: sheight*0.4/(0.35),  decoration: BoxDecoration(color: Color.fromARGB(255, 210, 189, 221),
                borderRadius: BorderRadius.circular(10), border: Border.all(width: 3, color: Color.fromARGB(255, 70, 41, 90))),
                child: TextButton (onPressed: () {}, child:  Column(children: [
                    Container(margin: EdgeInsets.only(top: 30, right: 20, left: 20), child: Text('TEXTO EXPLICATIVO', style: 
                      GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 28))),
                    Container(margin: EdgeInsets.only(top: 25, right: 20, left: 20), child: Text('Olhar para si mesmo é, muitas vezes, desafiador. Pode provocar medo, insegurança, aquele pensamento de “depois eu penso nisso, agora não”. Mas e quando aquilo que foi deixado para depois começa a nos atrapalhar, provocando ansiedade, tristeza e a sensação de que precisamos falar com alguém sobre aquele assunto? É a partir desse momento que a psicoterapia poderia ajudar. Pode parecer estranho falar sobre si com alguém que não conhecemos. Com o tempo, passamos a confiar no psicólogo que nos acompanha, nos sentimos à vontade para falar sobre os assuntos mais delicados, não nos sentimos julgados, mas acolhidos. Semana após semana percebemos as contribuições das sessões em nosso dia a dia, até que em conjunto com o nosso terapeuta decidimos que naquele momento já podemos seguir sem o acompanhamento profissional, que já conseguimos lidar melhor com os acontecimentos de nossas vidas. Deixamos de nos ver semanalmente, mas cientes de que podemos, a qualquer momento, escolher voltar. Essa é a beleza da psicoterapia.', textAlign: TextAlign.justify, style: 
                      GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 19)),
              )])))
          ]),
        ],
        if (swidth>800)...[
        Container(height: 600, child: 
          Row(children: [
            Container(width: swidth*0.5, height: 600, padding: EdgeInsets.all(5), color: Colors.grey, child:
              FlutterMap(
                options: MapOptions(
                    center: LatLng(-5.820560, -35.209990),
                    zoom: 17,
                ),
                layers: [
                    TileLayerOptions(
                        urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                        userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayerOptions(
                      markers: [
                          Marker(
                            point: LatLng(-5.820560, -35.209990),
                            width: 50,
                            height: 50,
                            builder: (context) => Icon(FontAwesomeIcons.locationDot, size: 30, color: Color.fromARGB(255, 70, 41, 90)),
                          ),
                      ],
                  ),
                ],
                nonRotatedChildren: [
                    AttributionWidget.defaultWidget(
                        source: 'OpenStreetMap contributors',
                        onSourceTapped: null,
                    ),
                ],
              )
            ),
            Column(children:[
              Container(width: swidth*0.5, padding: EdgeInsets.only(top: 5), height: 550, color: Color.fromARGB(255, 200, 180, 210), child:
                Column(children: [
                  Center(child: Container(width: 600, height: 200, 
                    child: Image.asset('assets/Logo2.png', fit: BoxFit.cover)
                  )),
                  Container(margin: EdgeInsets.only(left: 55, top: 20, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Endereço:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(left: 70, bottom: 30), alignment: Alignment.centerLeft, child: Text('Avenida Amintas Barros, 3700, Corporate Tower Center, Torre B', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(left: 55, top: 5, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Contatos para agendamento:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(left: 70), alignment: Alignment.centerLeft, child: Text('Número: (84) 9123-3527', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(left: 70, top: 15, bottom: 15), alignment: Alignment.centerLeft, child: Text('E-mail: psicologaalicemedeiros@gmail.com', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Row(children: [
                    Container(width: 30, height: 30, margin: EdgeInsets.only(left: 65), child:
                      TextButton (onPressed: _launchURL, child:
                        Icon(FontAwesomeIcons.instagram, color: Color.fromARGB(255, 18, 12, 81), size: 25))),
                    Container(width: 30, height: 30, margin: EdgeInsets.only(left: 5), child:
                      TextButton (onPressed: _launchURL1, child:   
                        Icon(FontAwesomeIcons.whatsapp, color: Color.fromARGB(255, 18, 12, 81), size: 25)))],
                  )]
                )),
              Container(width: swidth*0.5, height: 50, alignment: Alignment.center, color: Color.fromARGB(255, 70, 41, 90),
                child: Text('PsiAliceMedeiros © 2022 Designed by DSilva', style: TextStyle(color: Colors.white, fontSize: 16)))
            ])
          ])
        )]else...[
          Column(children:[
            Container(height: 200, child: 
            Container(width: swidth, height: 600, padding: EdgeInsets.all(8), color: Colors.grey, child:
              FlutterMap(
                options: MapOptions(
                    center: LatLng(-5.820560, -35.209990),
                    zoom: 17,
                ),
                layers: [
                    TileLayerOptions(
                        urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                        userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayerOptions(
                      markers: [
                          Marker(
                            point: LatLng(-5.820560, -35.209990),
                            width: 50,
                            height: 50,
                            builder: (context) => Icon(FontAwesomeIcons.locationDot, size: 30, color: Color.fromARGB(255, 70, 41, 90)),
                          ),
                      ],
                  ),
                ],
                nonRotatedChildren: [
                    AttributionWidget.defaultWidget(
                        source: 'OpenStreetMap contributors',
                        onSourceTapped: null,
                    ),
                ],
              )
            )),
              Container(width: swidth, padding: EdgeInsets.only(top: 5), height: 550, color: Color.fromARGB(255, 200, 180, 210), child:
                Column(children: [
                  Center(child: Container(width: 600, height: 200, 
                    child: Image.asset('assets/Logo2.png', fit: BoxFit.cover)
                  )),
                  Container(margin: EdgeInsets.only(left: 35, top: 20, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Endereço:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(left: 50, bottom: 30), alignment: Alignment.centerLeft, child: Text('Avenida Amintas Barros, 3700, Corporate Tower Center, Torre B', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(left: 35, top: 5, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Contatos para agendamento:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(left: 50), alignment: Alignment.centerLeft, child: Text('Número: (84) 9123-3527', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(left: 50, top: 15, bottom: 15), alignment: Alignment.centerLeft, child: Text('E-mail: psicologaalicemedeiros@gmail.com', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Row(children: [
                    Container(width: 30, height: 30, margin: EdgeInsets.only(left: 65), child:
                      TextButton (onPressed: _launchURL, child:
                        Icon(FontAwesomeIcons.instagram, color: Color.fromARGB(255, 18, 12, 81), size: 25))),
                    Container(width: 30, height: 30, margin: EdgeInsets.only(left: 5), child:
                      TextButton (onPressed: _launchURL1, child:   
                        Icon(FontAwesomeIcons.whatsapp, color: Color.fromARGB(255, 18, 12, 81), size: 25)))],
                  )]
                )),
              Container(width: swidth, height: 50, alignment: Alignment.center, color: Color.fromARGB(255, 70, 41, 90),
                child: Text('PsiAliceMedeiros © 2022 Designed by DSilva', style: TextStyle(color: Colors.white, fontSize: 16)))
            ])
        ]],
      )), 
    );
  }
}

_launchURL() async { //   <-- link 1 cabeçalho
  const url = 'https://www.instagram.com/psi.alicemedeiros/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL1() async { //   <-- link 2 cabeçalho
  const url = 'https://wa.me/message/Y77RBDYPCPXVC1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  
class CustomVideo extends StatelessWidget {
  final _controller = YoutubePlayerController(
  initialVideoId: 'oH3omNV9UUU',
  params: YoutubePlayerParams(
    autoPlay: true,
    mute: false,
  )
);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Color.fromARGB(255, 70, 41, 90), alignment: Alignment.center,
      child: YoutubePlayerIFrame(
        controller: _controller,
        aspectRatio: 16 / 9,
        )
    ));
  }
}
