import 'dart:ffi';

import 'package:flutter/material.dart';


class CartScreen extends  StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 44,
          width: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: Color(0xffcccccc)),
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Carrinho ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image(
              width: 16,
              height: 16,
              image: AssetImage('images/carrinho.png'),
            ),
          ],
        ),
        actions: [
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Icon(
              Icons.search,
              color: Colors.transparent,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
        child: Column(
          children: [
            RowBoxSell(
              img: AssetImage('images/box_sell/carne.png'),
              price: '40',
              product: 'Carne',
            ),
            RowBoxSell(
              img: AssetImage('images/box_sell/pimentao.png'),
              price: '7',
              product: 'Pimentao',
            ),
            RowBoxSell(
              img: AssetImage('images/box_sell/brocolis.png'),
              price: '4',
              product: 'Brocolis',
            ),
            Spacer(),
            
            BigButton(nameButton: 'Comprar',),
          ]
        ),
      ),
    );
  }
}

class RowBoxSell extends StatelessWidget {
  const RowBoxSell({
    super.key,
    required this.product,
    required this.price,
    required this.img,
    this.screen = 'none',
  });

  final String screen;
  final String product;
  final String price;
  final AssetImage img;

  @override
  Widget build(BuildContext  context){

    return Container( // Widget que sera externalizado

      margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
      width: 390,
      height: (this.screen == 'item_details' ) ? 70 : 62,
      decoration: BoxDecoration(
        border: (this.screen == 'item_details' ) ? 
          Border(
            bottom: BorderSide.none,
          )
          : Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xffcccccc),
              ),
        ),
      ),
      child: 
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Container(
              child: Row(
                children:[

                  (this.screen == 'item_details' )
                  ?
                    Container()
                  : Row(
                    children: [
                      Image(
                        image: img,
                        width: 42,
                        height: 42,
                      ),
                      SizedBox(width: 16,),
                    ]
                  ),
                  

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(
                            product,
                            style: (this.screen == 'item_details' ) ? TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )
                            : TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )
                            ,
                          ),
                          Text(
                            '1kg, ${price}R\$',
                            style: (this.screen == 'item_details' ) ?  TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF324B),
                            )
                            : TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF324B),
                            ),
                          ),
                        ],
                    ),
                  ),
                ]
              ),
            ),

            Container(
              width: 116,
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffF3F5F7),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Color(0xff979899),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    child: Text(
                      '1',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff23AA49),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Color(0xffffffff),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    ); // Widget que sera externalizado
  }
}

class BigButton extends StatelessWidget {
  const BigButton({
    super.key,
    required this.nameButton,
  });

  final String nameButton;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 340,
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0xff23AA49),
      ),
      child: Text(
        nameButton,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xffffffff),
        ),
      ),
    );
  }
}