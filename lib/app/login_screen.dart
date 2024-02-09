
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto_frutas/routes.dart';
import 'package:routefly/routefly.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController inputcontroller = new TextEditingController();
  var tellNumber = '+55 (038) 8899-8899'; 
  // var activiteTextFild = false; 

  void _mudaNum(String str) {
    if( tellNumber == '+55 (038) 8899-8899' ){
      setState(() {
        tellNumber = str;
      });
    } else if(str == '*') {
        var stringNew = tellNumber.substring(0, (tellNumber.length - 1));
      setState(() {
        //tellNumber.indexOf(tellNumber.length - 2)
        tellNumber = stringNew;
      });
    } else {
      setState(() {
        tellNumber = tellNumber+str;
      });
    }
  }

  void nextScreen() {
    if( tellNumber == '123456789' ){
      Routefly.navigate(routePaths.home);
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
          child: Container(
            alignment: Alignment.center,
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xfff1f1f5), ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
                child: Container(
                  child: Column(children: <Widget>[
                    Container (
                      alignment: Alignment.center,
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xffebf8ee),
                      ),
                      child: const Image(
                        image: AssetImage('images/leaps.png'),
                      ),
                    ),
                      const SizedBox(height: 16),
                      const Text(
                        'Digite seu numero de telefone',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Nos enviaremos um codigo de verificaçao',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffccccccc)
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        tellNumber,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffE0E0E0),
                        ),
                      ),
                      // TextField(
                      //   textInputAction: ,
                      //   controller: inputcontroller,
                      //   autofocus: true,
                      //   keyboardType: TextInputType.none,
                      //   textAlign: TextAlign.center,
                      //   decoration: InputDecoration(
                      //     hintText: '+55 (038) 8899-8899',
                      //     border: InputBorder.none, 
                      //     hintStyle: TextStyle(
                      //       fontSize: 24,
                      //       fontWeight: FontWeight.bold,
                      //       color: Color(0xffE0E0E0),
                      //     ),
                      //   ),
                      //   //onChanged: (value) => { value },
                      // ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          nextScreen();
                        },
                        child: Container(
                          width: 318,
                          height: 52,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff23AA49),
                            borderRadius: BorderRadius.circular(40), 
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Clicando em "Continuar" voce aceitas os termos de uso.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff979899)
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  width: double.infinity,
                  height: 264,
                  decoration: BoxDecoration(
                    color: const Color(0xffF3F5F7),
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row1(first: '1', second: '2', third: '3', func: _mudaNum,),
                      Row1(first: '4', second: '5', third: '6', func: _mudaNum,),
                      Row1(first: '7', second: '8', third: '9', func: _mudaNum,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text('aa',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.transparent,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              _mudaNum('0'),
                            },
                            child: const Text('0',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              _mudaNum('*'),
                            },
                            child: const Icon(
                              Icons.backspace_outlined,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    super.key,
    required this.first,
    required this.second,
    required this.third,
    required this.func,
  });

  final String first;
  final String second;
  final String third;
  final Function func;

  @override
  Widget build(BuildContext context) {

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => {
              func(first),
            },
            child: Text('$first',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              func(second),
            },
            child: Text('$second',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              func(third),
            },
            child: Text('$third',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );
  }
}
