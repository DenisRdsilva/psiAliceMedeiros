import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Psicóloga Alice Medeiros',
      home: const MyHomePage(title: 'Psicóloga Alice Medeiros'),
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
  bool _customTileExpanded = true;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    double val = 0;
    double exp = 0;
    double pad = 60;
    double pad2 = 60;
    if (swidth>1000)[val = 0.3, exp = 1400];
    if (swidth<=1000)[
    if (swidth>800)[val = 0.4, exp = 1330, pad2 = 45]];
    if (swidth<=800)[
    if (swidth>700)[val = 0.5, exp = 1200, pad2 = 45]];
    if (swidth<=700)[
    if (swidth>600)[val = 0.6, exp = 1175, pad2 = 45]];
    if (swidth<=600)[val = 0.85, exp = 1150, pad = 50, pad2 = 45];
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(width: swidth*val, backgroundColor: Color.fromARGB(255, 229, 204, 201),
        child: Row(children: [
          Container(width: swidth*val*0.025, height: sheight, color: Color.fromARGB(255, 70, 41, 90)),
          Container(width: swidth*val*0.95, child: Column(children: [
            Spacer(),
            Container(margin: EdgeInsets.only(top: 25, bottom: 25), height: 250, width: 250, decoration: BoxDecoration(color: Color.fromARGB(255, 70, 41, 90), borderRadius: BorderRadius.circular(100)),
              child: CircleAvatar(radius: 100, backgroundImage: AssetImage('assets/pic.jpeg'))),
            Container(margin: EdgeInsets.only(left: 10, right: 10), alignment: Alignment.centerLeft, child: Text(
              'Realizo psicoterapia individual voltada ao público adulto jovem. Tem alguma dúvida ou deseja alguma informação? Entre em contato comigo, quem sabe eu posso lhe auxiliar?',
              style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 15, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, right: 10), alignment: Alignment.centerLeft, child: Text(
              'Até breve! ',
              style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 15, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, top: 15, bottom: 10, right: 10), alignment: Alignment.centerLeft, child: Text('CRP: 17/3977', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 15, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, right: 10), alignment: Alignment.centerLeft, child: Text('Telefone: (84) 99123-3527', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 15, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10), alignment: Alignment.centerLeft, child: Text('E-mail: psicologaalicemedeiros@gmail.com', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 15, fontWeight: FontWeight.w500))),
            Container(margin: EdgeInsets.only(left: 10, right: 10), alignment: Alignment.centerLeft, child: Text('Clique no ícone do WhatsApp para informações e agendamentos.', textAlign: TextAlign.left, style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 15, fontWeight: FontWeight.w500))),  
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Spacer(),
              Center(child: Container(margin: EdgeInsets.only(top: 20), alignment: Alignment.center,
                width: 60, height: 60, decoration: BoxDecoration(color: Color.fromARGB(255, 70, 41, 90), borderRadius: BorderRadius.circular(25)), 
                child: TextButton (onPressed: _launchURL1,
                  child: Image.asset('assets/whats.png', fit: BoxFit.fill)))),
              Spacer()
            ]),
            Spacer()
        ])),
        Container(width: swidth*val*0.025, height: sheight, alignment: Alignment.centerRight, color: Color.fromARGB(255, 70, 41, 90)),
      ])),
      body: SingleChildScrollView( 
        physics: BouncingScrollPhysics(),
        child: Column(children: [
        if (swidth>550)...[
        Container(height: 50, width: swidth, 
          color:  Color.fromARGB(255, 70, 41, 90),
          child: Row(children: [
            Spacer(flex:3),
            Container(width: 135, height: 50, alignment: Alignment.centerLeft, child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), 
              child: Row(children: [
                Icon(Icons.menu, color: Colors.white, size: 25),
                Text(' Sobre mim', style: TextStyle(color: Colors.white, fontSize: 17))]))),
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
                  Container(child: Text(' Informações e Agendamentos', style: TextStyle(color: Colors.white)))
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
                Text(' Sobre mim', style: TextStyle(color: Colors.white, fontSize: 17))]))),
            Spacer(flex:100),
            Container(alignment: Alignment.centerRight, width: 40, child:
              TextButton (onPressed: _launchURL,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 18),
            ]))),
            Container(width: 40, child:
              TextButton (onPressed: _launchURL1,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 18)),
            ]))),
            Spacer(flex:3),
          ])),
        ],
        if (swidth>700)...[
        Center(child: Container(width: 700, height: 220, 
          child: Image.asset('assets/Logo2.png', fit: BoxFit.cover)
          )),
        ] else...[
          Row(children: [
            Center(child: Container(width: swidth, height: 220,
              child: Image.asset('assets/Logo2.png', fit: BoxFit.cover))),
          ])
        ],
        if (swidth>800)...[
        Container(width: swidth, height: 600, color: Color.fromARGB(255, 70, 41, 90), 
          child: Column(children: [
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
          child: Column(children: [
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
              )),
            ])),
          ],
          Container(height: 2*pad2), 
          if (swidth>(1365))...[
            Container(height: 350, width: swidth, 
              child: Row(children: [
                Container( height: 350, width: swidth*0.02, color: Color.fromARGB(255, 70, 41, 90)),
                  Container(width: swidth*0.28, height: 350, color: Color.fromARGB(255, 229, 204, 201),
                    child: Center(child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), child: 
                      Container(width: swidth*0.28, height: 350, child: Row(children: [
                        Container(width: 80, height: 80, child: Image.asset('assets/Logo1.png', fit: BoxFit.cover)),
                        Text('Quem sou eu?', style: GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 37)
                      )]
                    ))
                  ))),
              Container(height: 350, width: swidth*0.015, color: Color.fromARGB(255, 70, 41, 90)),
              Container(height: 350, width: (16/9)*350, 
                child: CustomVideo()),
              Container(height: 350, width: swidth*0.015, color: Color.fromARGB(255, 70, 41, 90)),
              Container( height: 350, width: swidth*0.19445, color: Color.fromARGB(255, 229, 204, 201), padding: EdgeInsets.only(left: 15, right: 10), alignment: Alignment.centerRight, child: Column(children: [
                Container(margin: EdgeInsets.only(top: 105), width:swidth*0.19, height: 120,
                  child: Text('“Desbravando a dor e a delícia de tornar-se adulto.”', style: 
                    GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 26, fontStyle: FontStyle.italic))),
                Container(width:swidth*0.19, height: 40, 
                  child: Text('Alice Medeiros', style: 
                    GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 22))),
                ])),
              Container( height: 350, width: swidth*0.02, color: Color.fromARGB(255, 70, 41, 90)),
            ])),
          ],
          if (swidth<=(1365))...[
            if (swidth>600)...[
              Container(height: 701, width: swidth, 
                child: Column(children: [
                Container(height: 5, width: swidth, color: Color.fromARGB(255, 70, 41, 90)),    
                  Container(width: swidth, height: 150, color: Color.fromARGB(255, 229, 204, 201),
                    child: Center(child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), child: 
                      Container(width: swidth, height: 150, child: Row(children: [
                        Spacer(flex: 1),
                        Container(width: 60, height: 60, child: Image.asset('assets/Logo1.png', fit: BoxFit.cover)),
                        Text('Quem sou eu?', style: GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 30)),
                        Spacer(flex: 10)]))))),
                  Container(height: 351, width: swidth, color: Color.fromARGB(255, 70, 41, 90),
                    child: CustomVideo()),
                  Container(height: 130, width: swidth, color: Color.fromARGB(255, 229, 204, 201), child:
                    Row(children: [
                      Spacer(flex: 5),
                      Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                        Container(width: 561, height: 45, margin: EdgeInsets.only(right: 20, top: 10, left: 20),
                          child: Text('“Desbravando a dor e a delícia de tornar-se adulto.”', style: 
                            GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 24, fontStyle: FontStyle.italic), maxLines: 2)),
                        Container(width: 178, height: 30, margin: EdgeInsets.only(left: 20),
                          child: Text('Alice Medeiros', style: 
                            GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 22)))]),
                      Spacer(flex: 5),
                    ])),
                  Container( height: 5, width: swidth, color: Color.fromARGB(255, 70, 41, 90)),
                ]))
                ],if (swidth<=600)...[
                Container(height: 601, width: swidth,
                  child: Column(children: [
                  Container(height: 5, width: swidth, color: Color.fromARGB(255, 70, 41, 90)),
                  Container(width: swidth, height: 100, color: Color.fromARGB(255, 229, 204, 201),
                    child: Center(child: TextButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), child: 
                      Container(width: swidth, height: 100, child: Row(children: [
                        Spacer(flex: 1),
                        Container(width: 50, height: 50, child: Image.asset('assets/Logo1.png', fit: BoxFit.cover)),
                        Text('Quem sou eu?', style: GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 24)), 
                      Spacer(flex: 10)]))))),
                  Container(height: 351, width: swidth, color: Color.fromARGB(255, 70, 41, 90),
                    child: CustomVideo()),
                  Container(height: 100, width: swidth, color: Color.fromARGB(255, 229, 204, 201), child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                      Container(width: swidth, height: 60, margin: EdgeInsets.only(right: 20, left: 20),
                        child: Center(child: Text('“Desbravando a dor e a delícia de tornar-se adulto.”', style: 
                          GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontStyle: FontStyle.italic), maxLines: 2))),
                      Container(width: swidth, height: 30, margin: EdgeInsets.only(left: 20),
                        child: Text('Alice Medeiros', style: 
                          GoogleFonts.firaSans(color: Color.fromARGB(255, 18, 12, 81), fontSize: 16))),
                          ]
                        )
                      ),
                    Container(height: 5, width: swidth, color: Color.fromARGB(255, 70, 41, 90)),
                  ]
                )
              ),  
            ]],
        if (swidth>1100)...[
          Container(margin: EdgeInsets.only(top: pad*2, bottom: pad*2), child: 
            serv(context)),
        ]else...[
          Container(margin: EdgeInsets.only(top: pad*2, bottom: pad*2), child: 
            serv(context)),
          ],
        if (swidth>800)...[
        Container(height: 600, child: 
          Row(children: [
            Container(width: swidth*0.5, height: 600, padding: EdgeInsets.all(5), color: Colors.grey, child:
              FlutterMap(
                options: MapOptions(
                    center: LatLng(-5.820560, -35.209990),
                    minZoom: 15,
                    zoom: 17,
                    maxZoom: 18,
                    enableScrollWheel: false,
                    pinchZoomThreshold: 0.5,
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
              Container(width: swidth*0.5, padding: EdgeInsets.only(top: 5), height: 550, color:  Color.fromARGB(255, 229, 204, 201), child:
                Column(children: [
                  Center(child: Container(width: 600, height: 200, 
                    child: Image.asset('assets/Logo2.png', fit: BoxFit.cover)
                  )),
                  Container(margin: EdgeInsets.only(left: 55, top: 20, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Endereço:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(left: 70, bottom: 30), alignment: Alignment.centerLeft, child: Text('Avenida Amintas Barros, 3700, Corporate Tower Center, Torre B', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(left: 55, top: 5, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Contatos para agendamento:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(left: 70), alignment: Alignment.centerLeft, child: Text('Telefone: (84) 9123-3527', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
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
            Container(height: 200, margin: EdgeInsets.only(top: 20), child: 
            Container(width: swidth, height: 600, padding: EdgeInsets.all(8), color: Colors.grey, child:
              FlutterMap(
                options: MapOptions(
                    center: LatLng(-5.820560, -35.209990),
                    minZoom: 15,
                    zoom: 17,
                    maxZoom: 18,
                    enableScrollWheel: false,
                    pinchZoomThreshold: 0.5,
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
              Container(width: swidth, padding: EdgeInsets.only(top: 5), height: 550, color: Color.fromARGB(255, 229, 204, 201), child:
                Column(children: [
                  Center(child: Container(width: 600, height: 200, 
                    child: Image.asset('assets/Logo2.png', fit: BoxFit.cover)
                  )),
                  Container(margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Endereço:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(right: 20, left: 20, bottom: 30), alignment: Alignment.centerLeft, child: Text('Avenida Amintas Barros, 3700, Corporate Tower Center, Torre B', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 15), alignment: Alignment.centerLeft, child: Text('> Contatos para agendamento:', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.bold))),
                  Container(margin: EdgeInsets.only(right: 20, left: 20), alignment: Alignment.centerLeft, child: Text('Telefone: (84) 99123-3527', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Container(margin: EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15), alignment: Alignment.centerLeft, child: Text('E-mail: psicologaalicemedeiros@gmail.com', style: GoogleFonts.raleway(color: Color.fromARGB(255, 18, 12, 81), fontSize: 18, fontWeight: FontWeight.w600))),
                  Row(children: [
                    Container(width: 30, height: 30, margin: EdgeInsets.only(left: 45), child:
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
  initialVideoId: 'Jz8QbVS2BSA',
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

Widget serv(BuildContext context) {
  double swidth = MediaQuery.of(context).size.width;
  double sheight = MediaQuery.of(context).size.height;
  double pad = 0;
  if (swidth>600)[pad = 60];
  else[pad = 50];
return Column(
  children: [
    Container(width: swidth*0.95, decoration: BoxDecoration(color: Color.fromARGB(255, 229, 204, 201),
      border: Border.all(width: 3, color: Color.fromARGB(255, 70, 41, 90))), child:
      ExpansionTile(tilePadding: EdgeInsets.only(right: 30, left: 30), title: Row(
        children:[
          Spacer(flex: 1),
          Container(width: swidth*0.5, height: 50, alignment: Alignment.centerLeft, child:
          Text('SERVIÇOS', style: 
          GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 20))),
          Spacer(flex: 24)
          ]),
      children: [
        Container(margin: EdgeInsets.only(bottom: 15), child: ListTile(
          title: Text(
          "        Psicoterapia individual nas modalidades presencial e online através de plataforma segura. Ambas semanais com duração de até 60 minutos.  No primeiro caso, nos encontraremos pessoalmente em meu consultório. Já para o atendimento online, você pode escolher onde estará no momento da sessão, basta ter um computador, celular ou tablet com acesso à internet.", textAlign: TextAlign.justify, style: 
          TextStyle(height:1.5, color: Color.fromARGB(255, 18, 12, 81)))))
    ])),
    Container(height:20, width: 10),
    Container(width: swidth*0.95, decoration: BoxDecoration(color: Color.fromARGB(255, 229, 204, 201),
      border: Border.all(width: 3, color: Color.fromARGB(255, 70, 41, 90))), child:
      ExpansionTile(tilePadding: EdgeInsets.only(right: 30, left: 30), title: Row(
        children:[
          Spacer(flex: 1),
          Container(width: swidth*0.5, height: 50, alignment: Alignment.centerLeft, child:
          Text('POR QUE FAZER TERAPIA?', style: 
          GoogleFonts.courierPrime(color: Color.fromARGB(255, 18, 12, 81), fontSize: 20))),
          Spacer(flex: 24)
      ]),
      children: [
        Container(margin: EdgeInsets.only(bottom: 15), child: ListTile(
          title: Column(children: [ 
          Text(
            '        Olhar para si mesmo é, muitas vezes, desafiador. Pode provocar medo, insegurança, aquele pensamento de “depois eu penso nisso, agora não”. Mas e quando aquilo que foi deixado para depois começa a nos atrapalhar, provocando ansiedade, tristeza e a sensação de que precisamos falar com alguém sobre aquele assunto? É a partir desse momento que a psicoterapia poderia ajudar. Pode parecer estranho falar sobre si com alguém que não conhecemos.', textAlign: TextAlign.justify, style:  
          TextStyle(height:1.5, color: Color.fromARGB(255, 18, 12, 81))),
          Text(
            '        Com o tempo, passamos a confiar no psicólogo que nos acompanha, nos sentimos à vontade para falar sobre os assuntos mais delicados, não nos sentimos julgados, mas acolhidos. Semana após semana percebemos as contribuições das sessões em nosso dia a dia, até que em conjunto com o nosso terapeuta decidimos que naquele momento já podemos seguir sem o acompanhamento profissional, que já conseguimos lidar melhor com os acontecimentos de nossas vidas. Deixamos de nos ver semanalmente, mas cientes de que podemos, a qualquer momento, escolher voltar. Essa é a beleza da psicoterapia.', textAlign: TextAlign.justify, style:  
          TextStyle(height:1.5, color: Color.fromARGB(255, 18, 12, 81)))
          ]))),
    ]))
  ])
;}

