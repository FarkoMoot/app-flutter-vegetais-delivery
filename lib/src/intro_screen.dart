import 'package:flutter/material.dart';



class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   elevation: 0,
        //   title: Text('Title app', textAlign: TextAlign.center,),
        // ),
        //backgroundColor: Colors.amber,
        // LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: <Color>[
        //       Color(0x1C23AA49),
        //       Color(0xffffffff),
        //     ],
        //   ),
        // decoration: const BoxDecoration(
        //   color: Color(0xffffffff)
        // ),
        body: Stack(
          children: 
          [Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0x1C23AA49),
                      Colors.transparent,
                    ]
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox( height: 61,),
                    const Image(
                      width: 66,
                      height: 66,
                      image: AssetImage('images/logo1.png'),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(36, 0, 36, 0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Peça seus vegetais por delivery!',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(36, 0, 36, 0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'O melhor aplicativo de delivery de vegetais, vegetais frescos e colhidos na hora!',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(169, 166, 167, 1),
                        ),
                      ),
                    ),
                    Stack(
                      children: [SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 48, 100, 48),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(0, 153, 89, 1),
                              borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                            child: const Text(
                              'Comprar Agora!',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 330,
                        top: 77,
                        width: 90,
                        height: 74,
                        child: Image(
                          image: AssetImage('images/leap2.png'),
                        ),
                      ),
                      ]
                    ),
                  ],
                )
              ),
              const Stack(
                children: [
                  Image(
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: AssetImage('images/imgIntroScreen.png'),
                  ),
                  Positioned(
                    top: 0,
                    left: 36,
                    height: 28,
                    width: 33,
                    child:
                    Image(
                      image: AssetImage('images/leap1.png'),
                    ),
                  ),
                ]
              ),
            ],
          ),
          const Positioned(
            top: 31,
            left: 316,
            child: 
              Image(
                image: AssetImage('images/leap3.png'),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
