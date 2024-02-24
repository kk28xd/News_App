import 'package:flutter/material.dart';
import 'package:new_flutter_project/Pages/Home_Page.dart';


class CatCard extends StatefulWidget {
  const CatCard({super.key});

  @override
  State<CatCard> createState() => _CatCardState();
}

class _CatCardState extends State<CatCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: element.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home_Page(catt: element[i]['text'],)));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 100,
            width: 180,
            alignment: Alignment.center,
            child: Text(element[i]['text'],
                style: const TextStyle(
                    color: Colors.white, fontFamily: 'Pacifico', fontSize: 26)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: AssetImage(element[i]['photo']), fit: BoxFit.fill),
            ),
          ),
        );
      },
    );
  }
}

List element = [
  {'text': 'General', 'photo': 'assets/general.avif'},
  {'text': 'Sports', 'photo': 'assets/sports.avif'},
  {'text' : 'Gaming' , 'photo' : 'assets/Gaming.webp'},
  {'text': 'Business', 'photo': 'assets/business.avif'},
  {'text': 'Entertainment', 'photo': 'assets/entertaiment.avif'},
  {'text': 'Health', 'photo': 'assets/health.avif'},
  {'text': 'Technology', 'photo': 'assets/technology.jpeg'},
  {'text': 'Science', 'photo': 'assets/science.avif'},
];
