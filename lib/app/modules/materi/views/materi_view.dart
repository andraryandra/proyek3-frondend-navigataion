import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/materi_controller.dart';

class MateriView extends GetView<MateriController> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.HOMEPAGE),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          "My Ujian",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/pictures/calculating.png", width: 30, height: 30,),
                  title: "Matematika",
                  date: "Desember",
                  color: Color.fromARGB(255, 153, 150, 0),
                ),
                CardFolder(
                  image: Image.asset("assets/pictures/science.png", width: 30, height: 30),
                  title: "IPA",
                  date: "Desember",
                  color: Color(0xFFAC4040),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/pictures/parchment.png", height: 30, width: 30,),
                  title: "IPS",
                  date: "Desember",
                  color: Color.fromARGB(255, 100, 77, 0),
                ),
                CardFolder(
                  image: Image.asset("assets/pictures/religion.png", height: 30, width: 30,),
                  title: "Agama",
                  date: "Desember",
                  color: Color(0XFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/pictures/eng.png", height: 30, width: 30,),
                  title: "Bahasa Inggris",
                  date: "Desember",
                  color: Color.fromARGB(255, 109, 2, 91),
                ),
                CardFolder(
                  image: Image.asset("assets/pictures/sports.png", height: 30, width: 30,),
                  title: "Penjaskes",
                  date: "Desember",
                  color: Color.fromARGB(255, 204, 126, 9),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/pictures/book-stack.png", height: 30, width: 30,),
                  title: "PPKN",
                  date: "Desember",
                  color: Color.fromARGB(255, 37, 106, 255),
                ),
                CardFolder(
                  image: Image.asset("assets/pictures/paint-palette.png", height: 30, width: 30,),
                  title: "Seni Budaya",
                  date: "Desember",
                  color: Color.fromARGB(255, 30, 0, 78),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15),
          Text(title, style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: color,
          ),
          ),
          SizedBox(height: 5,),
          Text(
            date,
            style: TextStyle(
            fontSize: 16,
            color: color,
          ),
           ),
        ],
      ),
    );
  }
}

  
  