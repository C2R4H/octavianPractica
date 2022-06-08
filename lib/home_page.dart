import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'locatii_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          topBar(),
          const SizedBox(height: 20),
          topSocial(),
          const SizedBox(height: 20),
          logo(),
          const SizedBox(height: 80),
          topMenu(context),
          const SizedBox(height: 25),
          mainImage(height, width),
          const SizedBox(height: 80),
          aboutUs(height, width),
          const SizedBox(height: 200),
          bottomInfo(height, width),
        ],
      ),
    );
  }

  Widget bottomInfo(double height, double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width / 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('logo_image.png'),
                        ),
                        Text(
                          'SNMAN',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Sneakers Man este o companie permium de restaurare si curatearea a incalamintei, infiintata in 2022 si cu sediu in Chisinau/Buiucani, la SNMAN ne stradui sa ofermin cea main buna ingrijire a sneakerilor,oferind servce premium curatarea profundal,lustruire,revopsire si mutle altele. Folosim doar cele mai bune produse pentru a ne asigura ca serviciile si calitatea noastra repecta standardele clientele noastre cele mai exagente.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acasa',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Magazin',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Servicii',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Expediati catre noi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Locatii',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contacteaza-ne',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Termeni si conditii',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'FAQ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Livrare',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Corporate',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Carrers',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(color: Color(0xff212121)),
          const SizedBox(height: 20),
          Row(
            children: [
              Text('Copyright SNMAN 2022'),
              Spacer(),
              Icon(Icons.facebook),
              Icon(Icons.snapchat),
            ],
          ),
          const SizedBox(height: 50),
          Icon(Icons.paypal),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget aboutUs(double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Wrap(
        spacing: 50,
        runSpacing: 15, // gap between lines
        children: [
          Container(
            constraints: const BoxConstraints(
              minWidth: 300,
              minHeight: 300,
            ),
            height: width / 3,
            width: width / 3,
            child: Image.asset('about_image.png', fit: BoxFit.cover),
          ),
          const SizedBox(width: 30),
          Container(
            constraints: const BoxConstraints(
              minWidth: 400,
              minHeight: 300,
            ),
            width: width / 2.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Suntem aici pentru a va ajuta',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff212121),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Sneakers Man este o comapnie premium de restaurare si curatare a incaltamintei, infiintat in 2022 si cu sediu in Chisinau,Buiucani.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff313131),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "La Sneakers Man ne straduim sa  oferim cea mai buna ingrijire a sneakerșilor oferind service precum curatarea profundal,lustruire,revopsire si multe altele. Folosim doar cele mai bune produse pentru a ne asigura ca calitatea si maiestria noastra respecta standard clientii nostrii cele mai exigente.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff313131),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Expertii nostril sunt instruiti in toate tipurile de sneakersi,de la Jordan1 s pina la alergatorii Louis Vuitto Experienta si intelegerea noastra asigura faptu ca sneakersi dvs., indifferent de aceea ce ar putea fii,sau intotdeauna bine ingrijiti.",
                  style: TextStyle(
                    color: Color(0xff313131),
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Abia asteptamam sa lucram cu dumnevoastra.",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff313131),
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    onSurface: Colors.white,
                  ),
                  onPressed: () async {
                    const url =
                        'https://www.youtube.com/watch?v=2KPlbZW9I6s&list=PLnPJ0b7fh_aasuYCPAV72ll30o0a8SnZo&index=27';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text(
                    'Despre noi',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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

  Widget topMenu(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'ACASA',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'MAGAZIN',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'SERVICII',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'EXPEDIATI CATRE NOI',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationPage()),
                  );
            },
            child: Text(
              'LOCATII',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Sneakers Man',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 70,
          width: 70,
          child: Image.asset('logo_image.png'),
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
