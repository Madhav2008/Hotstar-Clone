import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        // '/': (context) => LoginPage(),
        // '/homepage': (context) => MyApp(),
        '/marvel': (context) => Marvel(),
        '/disney': (context) => Disney(),
        '/pixar': (context) => Pixar(),
        '/starwars': (context) => Star(),
        '/natgeo': (context) => Nat(),
        '/marvel/ironman': (context) => Ironman(),
        '/languages': (context) => Lang(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
        drawer: MyDrawer(),
        bottomNavigationBar: BotNav(),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "../assets/images/dishot.png",
                height: 100,
                width: 100,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.search),
                backgroundColor: Colors.black,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData querydta = MediaQuery.of(context);
    return ListView(
      padding: EdgeInsets.all(0),
      shrinkWrap: true,
      children: [
        // Text('Madhav', style: TextStyle(color: Colors.red, fontSize: 20),),
        CarouselSlider(
          items: [
            Image.asset(
              '../assets/images/banner1.webp',
            ),
            Image.asset(
              '../assets/images/banner2.webp',
            ),
            Image.asset(
              '../assets/images/banner3.webp',
            ),
            Image.asset(
              '../assets/images/banner4.webp',
            ),
          ],
          options: CarouselOptions(
            autoPlay: true, viewportFraction: 0.8, disableCenter: true,
            enlargeCenterPage: true,
            // autoPlayAnimationDuration: Duration(seconds: 1),
            // autoPlayInterval: Duration(milliseconds: 1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/disney');
              },
              backgroundColor: Colors.blue[900],
              child: Image.asset(
                'assets/images/viewers-disney.png',
              ),
            ),
            FloatingActionButton(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              backgroundColor: Colors.blue[900],
              onPressed: () {
                Navigator.pushNamed(context, '/pixar');
              },
              child: Image.asset(
                'assets/images/viewers-pixar.png',
                width: 100,
                height: 100,
              ),
            ),
            FloatingActionButton(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              backgroundColor: Colors.blue[900],
              onPressed: () {
                Navigator.pushNamed(context, '/marvel');
              },
              child: Image.asset(
                'assets/images/viewers-marvel.png',
                width: 100,
                height: 100,
              ),
            ),
            FloatingActionButton(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              backgroundColor: Colors.blue[900],
              onPressed: () {
                Navigator.pushNamed(context, '/starwars');
              },
              child: Image.asset(
                'assets/images/viewers-starwars.png',
                width: 100,
                height: 100,
              ),
            ),
            FloatingActionButton(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              backgroundColor: Colors.blue[900],
              onPressed: () {
                Navigator.pushNamed(context, '/natgeo');
              },
              child: Image.asset(
                'assets/images/viewers-national.png',
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended For You',
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: Text('More'),
            )
          ],
        ),
        CarouselSlider(
          items: [
            TextButton(
              onPressed: () {},
              child: Image.asset('assets/images/rec1.webp'),
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: Image.asset('assets/images/rec2.webp'),
            // ),
            TextButton(
              onPressed: () {},
              child: Image.asset('assets/images/rec3.webp'),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset('assets/images/rec4.webp'),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset('assets/images/rec5.webp'),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset('assets/images/rec6.webp'),
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: Image.asset('assets/images/rec7.webp'),
            // ),
            TextButton(
              onPressed: () {},
              child: Image.asset('assets/images/rec8.webp'),
            ),
          ],
          options: CarouselOptions(viewportFraction: 0.3),
        )
      ],
    );
  }
}

class Disney extends StatefulWidget {
  const Disney({Key? key}) : super(key: key);

  @override
  _DisneyState createState() => _DisneyState();
}

class _DisneyState extends State<Disney> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Disney page',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class Marvel extends StatefulWidget {
  const Marvel({Key? key}) : super(key: key);

  @override
  _MarvelState createState() => _MarvelState();
}

class _MarvelState extends State<Marvel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'I..........AM.......Madhav',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          backgroundColor: Colors.black,
          body: ListView(
            children: [
              Image.asset('assets/images/marvelbanner.webp'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Marvel Cinematic Universe',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'more',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              CarouselSlider(
                items: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/blackwidow.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/whatif.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/endgame.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/fws.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/wv.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/loki.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/capmar.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/antman2.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/infinity.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/bp.webp'),
                  ),
                ],
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.3,
                  initialPage: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MCU phase 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'more',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              CarouselSlider(
                  items: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/marvel/ironman');
                      },
                      child: Image.asset('assets/images/ironman1.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/ironman2.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/thor2.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/cap2.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/avengers.webp'),
                    ),
                  ],
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.3,
                      initialPage: 1)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'MCU phase 2',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'more',
                      style: TextStyle(color: Colors.white),
                    ))
              ]),
              CarouselSlider(
                items: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/ironman3.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/thor1.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/cap1.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/gog.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/ultron.webp'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/antman1.webp'),
                  ),
                ],
                options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 0.3,
                    initialPage: 1),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'MCU phase 3&4',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'more',
                      style: TextStyle(color: Colors.white),
                    ))
              ]),
              CarouselSlider(
                  items: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/civil.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/doc.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/gog2.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/ragnarok.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/bp.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/infinity.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/antman2.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/capmar.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/endgame.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/wv.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/fws.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/loki.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/whatif.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/blackwidow.webp'),
                    ),
                  ],
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.3,
                      initialPage: 1)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Marvel Legacy Animation',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'more',
                      style: TextStyle(color: Colors.white),
                    ))
              ]),
              CarouselSlider(
                  items: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim1.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim2.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim3.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim4.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim5.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim6.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim7.webp'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/anim8.webp'),
                    ),
                  ],
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.3,
                      initialPage: 1)),
            ],
          ),
        ));
  }
}

class Pixar extends StatefulWidget {
  const Pixar({Key? key}) : super(key: key);

  @override
  _PixarState createState() => _PixarState();
}

class _PixarState extends State<Pixar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              )
            ],
          ),
          backgroundColor: Colors.black,
          body: Center(
              child: Text('Pixar page', style: TextStyle(color: Colors.red))),
        ));
  }
}

class Star extends StatefulWidget {
  const Star({Key? key}) : super(key: key);

  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              )
            ],
          ),
          backgroundColor: Colors.black,
          body: Center(
              child:
                  Text('StarWars page', style: TextStyle(color: Colors.red))),
        ));
  }
}

class Nat extends StatefulWidget {
  const Nat({Key? key}) : super(key: key);

  @override
  _NatState createState() => _NatState();
}

class _NatState extends State<Nat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              )
            ],
          ),
          backgroundColor: Colors.black,
          body: Center(
              child: Text('Natgeo page', style: TextStyle(color: Colors.red))),
        ));
  }
}

class Ironman extends StatefulWidget {
  const Ironman({Key? key}) : super(key: key);

  @override
  _IronmanState createState() => _IronmanState();
}

class _IronmanState extends State<Ironman> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'I.......AM....Madhav',
            style: TextStyle(color: Colors.red),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image.asset('assets/images/banironman.webp'),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    Text(
                      'Watch Movie',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            Text('Iron Man'),
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text('Superhero.')),
                TextButton(onPressed: () {}, child: Text('English.')),
                Text(
                  '2008.U/A 13+',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Text(
              'An industrialist constructs a high-tech armoured and decides to use his suit to fight against evil forces and save the world.',
              style: TextStyle(color: Colors.white),
            ),
            Row(children: [
              Icon(Icons.add, color: Colors.white),
              Icon(Icons.facebook, color: Colors.white),
              Icon(Icons.link, color: Colors.white),
            ]),
            Text(
              'Trailers & Extras',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 200,
              height: 100,
              child: Image.asset(
                'assets/images/banironman.webp',
              ),
            ),
            Text(
              'More Like This',
              style: TextStyle(color: Colors.white),
            ),
            CarouselSlider(items: [
              TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/ironman3.webp'),
              ),
              TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/thor1.webp'),
              ),
              TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/cap1.webp'),
              ),
              TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/gog.webp'),
              ),
              TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/ultron.webp'),
              ),
              TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/antman1.webp'),
              ),
            ], options: CarouselOptions(viewportFraction: 0.3)),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            TextButton(
              onPressed: () {},
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Image.asset('assets/images/ironman1.webp'),
                  radius: 20,
                ),
                title: Text(
                  'Madhav Arora',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Logged in via Phone',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: ListTile(
                  leading: Text(
                    'Watchlist',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: ListTile(
                  leading: Text(
                    'KIDS Safe',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Switch(
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    value: val,
                  ),
                )),
            TextButton(
              onPressed: () {},
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Icon(Icons.slideshow, color: Colors.white),
                title: Text('Channels', style: TextStyle(color: Colors.white)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/languages');
              },
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Icon(Icons.translate, color: Colors.white),
                title: Text('Languages', style: TextStyle(color: Colors.white)),
              ),
              style: TextButton.styleFrom(primary: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Icon(Icons.theater_comedy, color: Colors.white),
                title: Text('Genres', style: TextStyle(color: Colors.white)),
              ),
              style: TextButton.styleFrom(primary: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class Lang extends StatefulWidget {
  const Lang({Key? key}) : super(key: key);

  @override
  _LangState createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: ListView(children: [
            Wrap(
              spacing: 30,
              alignment: WrapAlignment.spaceAround,
              children: [
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang1.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-hindi.png',
                      ),
                      Text('Hindi', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang2.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-Bengali.png',
                      ),
                      Text('Bengali', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang3.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-telugu.png',
                      ),
                      Text('Telugu', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang4.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-marathi.png',
                      ),
                      Text('Marathi', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang5.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-tamil.png',
                      ),
                      Text('Tamil', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang6.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-malayalam.png',
                      ),
                      Text('Malayalam', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang7.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-english.png',
                      ),
                    ],
                  )
                ]),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    child: Image.asset('assets/images/lang8.webp'),
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/PCTV-kannada.png',
                      ),
                      Text('Kannada', style: TextStyle(color: Colors.white))
                    ],
                  )
                ]),
              ],
            ),
          ]),
          drawer: MyDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/dishot.png",
                  height: 100,
                  width: 100,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.search),
                  backgroundColor: Colors.black,
                )
              ],
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   late String username;
//   late String password;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: ListView(
//       children: [
//         TextFormField(
//           initialValue: 'enter your email',
//           onFieldSubmitted: (value) {
//             setState(() {
//               username = value;
//             });
//           },
//         ),
//         TextFormField(
//           initialValue: 'enter your password',
//           onFieldSubmitted: (value) {
//             setState(() {
//               password = value;
//             });
//           },
//         )
//       ],
//     ));
//   }
// }
class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  _BotNavState createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: Colors.red,
      currentIndex: 2,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.tv), label: 'TV', backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: ImageIcon(AssetImage(
                'assets/images/disicon.png',
              )),
            ),
            label: 'Disney+'),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_cricket_rounded,
            ),
            label: 'Sports'),
      ],
    );
  }
}
