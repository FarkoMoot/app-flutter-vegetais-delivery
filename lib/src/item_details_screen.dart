import 'package:flutter/material.dart';
import 'package:projeto_frutas/src/cart_screen.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

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
      body: 
        Column(
          children: [
            Center(
              child: Image(
                image: AssetImage('images/box_sell/carne.png'),
                fit: BoxFit.contain,
                width: 235,
                height: 235,
              )
            ),
            Container(
              child:
              Column(
                children: [
                  RowBoxSell(
                    img: AssetImage('images/box_sell/carne.png'),
                    price: '40',
                    product: 'Carne',
                    screen: 'item_details',
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(36, 8, 36, 0),
                    child: Text(
                      'O gengibre é uma planta com flores cujo rizoma, raiz de gengibre ou gengibre, é amplamente utilizado como tempero e remédio popular.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979899),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 32,),
            Container(
              width: 342,
              height: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      CardItemsDetails(
                        title: '100%',
                        subTitle: 'Organico',
                        img: AssetImage('images/details_screen/earb.png'),
                      ),
                      SizedBox(width: 16,),
                      CardItemsDetails(
                        title: '1 ano',
                        subTitle: 'Vencimento',
                        img: AssetImage('images/details_screen/calendar.png'),
                      ),
                    ],
                  ),
                 SizedBox(height: 16,),  
                  Row(
                    children: [
                      CardItemsDetails(
                        title: '4.8',
                        subTitle: 'Avaliaçoes',
                        img: AssetImage('images/details_screen/star.png'),
                      ),
                      SizedBox(width: 16,),
                      CardItemsDetails(
                        title: '80Kcal',
                        subTitle: '100g',
                        img: AssetImage('images/details_screen/fire.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32,),
            BigButton(nameButton: 'Adicionar ao Carrinho'),
          ],
        ),
    );
  }
}

class CardItemsDetails extends StatelessWidget {
  const CardItemsDetails({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
  });

  final AssetImage img; 
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromARGB(106, 151, 152, 153),
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      width: 163,
      height: 67,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16,0,0,0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image(
                image: img,
                width: 35,
                height: 35,
                fit: BoxFit.contain,
              )
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff23AA49),
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff979899),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}