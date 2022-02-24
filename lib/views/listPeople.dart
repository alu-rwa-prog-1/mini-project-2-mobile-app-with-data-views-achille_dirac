import 'package:flutter/material.dart';

class ListPeople extends StatelessWidget {
  const ListPeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          DataItem(),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}


class DataItem extends StatelessWidget {
  const DataItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return         Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage("https://ui-avatars.com/api/?name=Dirac+Murairi"),
              ),
              const SizedBox(width: 20.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Dirac",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0
                    ),
                  ),
                  Text(
                    "+250788782735",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 2.0
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}