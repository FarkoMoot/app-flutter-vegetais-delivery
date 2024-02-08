import 'package:flutter/material.dart';


class BoxSell extends StatelessWidget  {
  const BoxSell({
    super.key,
    required this.product,
    required this.price,
    required this.img,
  });

  final String product;
  final String price;
  final AssetImage img;

  @override
  Widget build(BuildContext context ){
    return Container(
      width: 163,
      height: 214,
      decoration: BoxDecoration(
        color: const Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            child: Center(
              child: Image(
                height: 110,
                width: 100,
                image: img,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                      Text(
                        '$product',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '1kg, ${price}R\$',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFF324B),
                        ),
                      ),
                    ]
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xff23AA49),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            )
          ),
        ]
      ),
    );
  }
}

            