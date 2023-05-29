import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Color textcolor = Colors.white;
Color backcolor = Color.fromARGB(255, 30, 30, 30);

enum skillType {
  photoShop,
  lightRoom,
  afterEffect,
  illustrator,
  adobeXd,
}

class _MyAppState extends State<MyApp> {
  skillType skilltype = skillType.photoShop;
  void updateselectedskill(skillType type) {
    setState(() {
      this.skilltype = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    // LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', '1'), // English, no country code
        Locale('fa', '98'), // Spanish, no country code
      ],
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        //brightness: Brightness.dark,
        // scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            bodyText2: TextStyle(fontSize: 16),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backcolor,
        appBar: AppBar(
          title: Text(
            "curriculum vitae",
          ),
          actions: [
            Icon(Icons.chat_bubble_outline_rounded),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                setState(() {
                  if (textcolor == Colors.black) {
                    textcolor = Colors.white;
                    backcolor = Color.fromARGB(255, 30, 30, 30);
                  } else if (textcolor == Colors.white) {
                    textcolor = Color.fromARGB(255, 0, 0, 0);
                    backcolor = Colors.white;
                  }
                });
              },
              icon: Icon(CupertinoIcons.ellipsis_vertical),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("images/profile.png",
                          height: 60, width: 60),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brice Seraphin",
                            style: TextStyle(
                              fontSize: 13,
                              color: textcolor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Product and Print Designer",
                            style: TextStyle(
                              color: textcolor,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 18,
                                color: Color.fromARGB(200, 255, 255, 255),
                              ),
                              Text(
                                "Paris , France",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(200, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(CupertinoIcons.heart, color: Colors.pink.shade500),
                    SizedBox(width: 5),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 8, 0),
                child: Text(
                  "Enthusiastic young computer Geek, FreelanceDesigner in love of independence, I have alot ofexperience in graphical projects, and always givethe best of myself to bring you to success.",
                  style: TextStyle(
                    color: textcolor,
                  ),
                ),
              ),
              Divider(thickness: 1.2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Text(
                      "Skills",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: textcolor),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.chevron_down,
                    size: 10,
                    color: textcolor,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 10,
                  direction: Axis.horizontal,
                  children: [
                    skill(
                      ontap: () {
                        updateselectedskill(skillType.photoShop);
                      },
                      type: skillType.photoShop,
                      title: "Photoshop",
                      imagepath: "images/app1.png",
                      shadowcolor: Colors.blueAccent,
                      isactive: skilltype == skillType.photoShop,
                    ),
                    skill(
                      ontap: () {
                        updateselectedskill(skillType.lightRoom);
                      },
                      type: skillType.lightRoom,
                      title: "Lightroom",
                      imagepath: "images/app2.png",
                      shadowcolor: Colors.lightBlueAccent,
                      isactive: skilltype == skillType.lightRoom,
                    ),
                    skill(
                      ontap: () {
                        updateselectedskill(skillType.afterEffect);
                      },
                      type: skillType.afterEffect,
                      title: "After Effect",
                      imagepath: "images/app3.png",
                      shadowcolor: Colors.blue,
                      isactive: skilltype == skillType.afterEffect,
                    ),
                    skill(
                      ontap: () {
                        updateselectedskill(skillType.illustrator);
                      },
                      type: skillType.illustrator,
                      title: "Illustrator",
                      imagepath: "images/app4.png",
                      shadowcolor: Colors.orangeAccent,
                      isactive: skilltype == skillType.illustrator,
                    ),
                    skill(
                      ontap: () {
                        updateselectedskill(skillType.adobeXd);
                      },
                      type: skillType.adobeXd,
                      title: "Adobe Xd",
                      imagepath: "images/app5.png",
                      shadowcolor: Colors.pinkAccent,
                      isactive: skilltype == skillType.adobeXd,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class skill extends StatelessWidget {
  final skillType type;
  final Function() ontap;
  final String title;
  final String imagepath;
  final Color shadowcolor;
  final bool isactive;
  const skill({
    super.key,
    required this.ontap,
    required this.type,
    required this.title,
    required this.imagepath,
    required this.shadowcolor,
    required this.isactive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: ontap,
      child: Container(
        width: 90,
        height: 90,
        decoration: isactive
            ? BoxDecoration(
                color: Color.fromARGB(30, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: isactive
                    ? BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: shadowcolor.withOpacity(0.7),
                            blurRadius: 11,
                          ),
                        ],
                      )
                    : null,
                child: Image.asset(imagepath, width: 50, height: 50)),
            SizedBox(height: 2.5),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: textcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
