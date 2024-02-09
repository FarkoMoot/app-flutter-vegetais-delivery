import 'package:flutter/material.dart';
import 'package:projeto_frutas/app/Widget/box_sell.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        leadingWidth: 68,
        toolbarHeight: 68,
        leading:Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
          child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF3F5F7),
                borderRadius: BorderRadius.circular(44),
                
              ),
              child: const Image(
                image: AssetImage('images/home_screen/people.png'),
              ),
            ),
        ),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bom dia',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color:  Color(0xff979899),
              ),
            ),  
            Text(
              'Juze Carlus',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff06161C),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: const Color(0xffffffff),

              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: Color(0xff23AA49),
                      size: 28,
                    ),
                    SizedBox(width: 8,),
                    Text(
                      'Endereço',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff06161C),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff979899),
                      size: 28,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                children: [
                  const SizedBox(width: 12,),
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(width: 6,),
                  Text(
                    'Buscar por categoria.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff979899),
                    ),
                  )
                ]
              ),
            ),
          ),
          const SizedBox(height: 16,),
          

          SizedBox(
            // width: 342,
            height: 176,
            
            child: ListView(
              scrollDirection: Axis.horizontal,
              //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
              padding: EdgeInsets.fromLTRB(18, 0, 18, 18),
              
              children: <Widget>[
                BoxTopo(),
                SizedBox(width: 12,),
                BoxTopo(),
                SizedBox(width: 12,),

                BoxTopo(),
                
              ],
            ),
          ),


          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      child: const Row(
                        children: [
                          Text(
                            'Categorias',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Image(
                            image: AssetImage('images/home_screen/face.png'),
                            width: 17,
                            height: 17,
                          )
                        ],
                      )
                    ),
                    const Text(
                      'Veja mais',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff23AA49),
                      ),  
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Categoryes(name: 'Frutas', img: AssetImage('images/home_screen/apple.png')),
                    Categoryes(name: 'Vegetais', img: AssetImage('images/home_screen/broccoli.png')),
                    Categoryes(name: 'Laticionios', img: AssetImage('images/home_screen/cheese.png')),
                    Categoryes(name: 'Carne', img: AssetImage('images/home_screen/meat.png')),
                  ],
                ),
                const SizedBox(height: 24,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      child: const Row(
                        children: [
                          Text(
                            'Mais Vendidos',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Image(
                            image: AssetImage('images/home_screen/fire.png'),
                            width: 17,
                            height: 17,
                          )
                        ],
                      )
                    ),
                    const Text(
                      'Veja mais',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff23AA49),
                      ),  
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                const Row(
                  children: [
                    BoxSell(
                      product: 'Pimentao',
                      price: '8',
                      img: AssetImage('images/box_sell/pimentao.png'),
                    ),
                    SizedBox(width: 16,),
                    BoxSell(
                      product: 'Carne',
                      price: '45',
                      img: AssetImage('images/box_sell/carne.png'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

class Categoryes extends StatelessWidget {
  const Categoryes({
    super.key,
    required this.name,
    required this.img,
  });

  final String name;
  final AssetImage img;

  @override
  Widget build(BuildContext context){

    return Column(
      children: [
        Container(
          height: 73,
          width: 73,
          decoration: BoxDecoration(
            color: const Color(0xffF3F5F7),
            borderRadius: BorderRadius.circular(40)
          ),
          child: Image(
            height: 35,
            width: 35,
            image: img,
          ),
        ),
        const SizedBox(height: 8,),
        Text(
          '$name',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class BoxTopo extends StatelessWidget {
  const BoxTopo({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 342,
      height: 158,
    
      decoration: BoxDecoration(
        color: const Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(1,3),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children:[
          const Image(
            fit: BoxFit.cover,
            image: AssetImage('images/home_screen/image_container1.png'),
          ),
          const SizedBox(width: 10,),
          Container(
            width: 161,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff23AA49),
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(40, 350),
                bottomLeft: Radius.elliptical(40, 350),
                topRight: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
            ),
            child: Column(
              
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Oferta do Dia',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff),
                  ),
                ),
                const Text(
                  '25% off',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff),
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  width: 108,
                  height: 30,
    
                  decoration: BoxDecoration(
    
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffffffff),
                  ),
                  child: 
                    const Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Comprar',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6BA821),
                          ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xff6BA821),
                          )
                        ],
                      )
                    ),
                  )
              ],
            )
          ),
        ],
      ),
    );
  }
}