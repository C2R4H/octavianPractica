import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          topBar(),
          topSocial(),
          logo(),
          const SizedBox(height: 80),
          topMenu(),
          const SizedBox(height: 10),
          mainImage(height, width),
        ],
      ),
    );
  }

  Widget mainImage(double height, double width) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          height: 400,
          child: Image.asset(
            'home_image.png',
            width: width,
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          height: 150,
          width: 500,
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.85),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Compania Premium pentru ingrijirea sneakersilor',
                    style: TextStyle(
                        fontSize: 20,
                        ),
                    ),
                SizedBox(height: 10),
                Text(
                    'Servicii de restaurarea si curatare a sneakersilor. SNMAN',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff414141),
                        ),
                    ),
                Spacer(),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5),
                        ),
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                    child: Text(
                        'Meniul de servicii',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            ),
                        ),
                    ),
              ],
              ),
        ),
      ],
    );
  }

  Widget topMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'ACASA',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'MAGAZIN',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'SERVICII',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'EXPEDIATI CATRE NOI',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'LOCATII',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }

  Widget logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Sneakers Man',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.snowmobile,
          size: 40,
        ),
      ],
    );
  }

  Widget topSocial() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: const [
          Icon(
            Icons.facebook,
            color: Color(0xff212121),
            size: 30,
          ),
          Icon(
            Icons.snapchat,
            color: Color(0xff212121),
            size: 30,
          ),
          Spacer(),
          Icon(
            Icons.person_outlined,
            color: Color(0xff212121),
            size: 30,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xff212121),
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget topBar() {
    return Container(
      color: const Color(0xff313131),
      alignment: Alignment.center,
      height: 50,
      child: const Text(
        'TRANSPORT GRATUIT PENTRU TOATE COMENZILE IN VALOARE DE 600 LEI!',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
