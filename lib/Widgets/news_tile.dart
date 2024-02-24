import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile(
      {super.key,
      required this.img,
      required this.date,
      required this.title,
      required this.sub});

  final img;
  final date;
  final title;
  final sub;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(img ?? 'https://th.bing.com/th/id/OIP.0CmwBP9lCkbH2ompYJWoSgHaE8?w=250&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'), fit: BoxFit.fitWidth)),
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  sub,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue Reading',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List neww (N) {
  return List.generate(
      N.length,
      (i) => NewsTile(
          img: N[i].img, date: N[i].date, title: N[i].title, sub: N[i].des));
}

