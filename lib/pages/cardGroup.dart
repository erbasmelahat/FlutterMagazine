import 'package:flutter/material.dart';

import 'magazineCard.dart';
class MagazineCardGroup extends StatelessWidget {
  const MagazineCardGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(             
      child: Column(
        children: [
          SizedBox(
            child: GridView.count(
               padding: const EdgeInsets.only(
                 top: 40
               ),
             scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 0,
              childAspectRatio: 0.756,
              mainAxisSpacing: 40,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: <Widget>[
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
                MagazineCard(
                image: "assets/1.PNG",
                title: "Samantha",
                writer: "Writer",
                press: (){},),
               
              ] 
            ),
          ),
        ],
      ),
    );
  }
}