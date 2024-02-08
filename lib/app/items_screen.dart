import 'package:flutter/material.dart';
import 'package:projeto_frutas/app/Widget/box_sell.dart';


class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context){

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
              'Vegetais ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image(
              width: 16,
              height: 16,
              image: AssetImage('images/milho.png'),
            ),
          ],
        ),
        actions: [
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: Color(0xffcccccc)),
            ),
            child: Icon(
              Icons.search
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 0),
        child: Column(
          children: [
            Row(
              children: [
                BoxSell(
                  product: 'Pimentao',
                  price: '6',
                  img: AssetImage('images/box_sell/pimentao.png'),
                ),
                SizedBox(width: 16,),
                BoxSell(
                  product: 'Gengibre',
                  price: '4',
                  img: AssetImage('images/box_sell/gengibre.png'),
                ),
              ]
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                BoxSell(
                  product: 'Couve',
                  price: '2',
                  img: AssetImage('images/box_sell/couve.png'),
                ),
                SizedBox(width: 16,),
                BoxSell(
                  product: 'Abobora',
                  price: '8',
                  img: AssetImage('images/box_sell/abobora.png'),
                ),
              ]
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                BoxSell(
                  product: 'Cenoura',
                  price: '4',
                  img: AssetImage('images/box_sell/cenoura.png'),
                ),
                SizedBox(width: 16,),
                BoxSell(
                  product: 'Brocolis',
                  price: '2',
                  img: AssetImage('images/box_sell/brocolis.png'),
                ),
              ]
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}