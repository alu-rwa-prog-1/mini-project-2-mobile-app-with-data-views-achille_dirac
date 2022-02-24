import 'package:flutter/material.dart';
import 'package:smart_wallet/views/listPeople.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text (
          "Your Balance",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 10.0,),
          const Text(
            'ETH 8.250.000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Scaffold(
                                  body: const ListPeople(),
                                  appBar: AppBar(
                                    backgroundColor: Colors.white,
                                    leading: IconButton(icon: const Icon(
                                        Icons.arrow_back,
                                      color: Colors.black,
                                      size: 30.0,
                                    ), onPressed: () {
                                      Navigator.pop(context);
                                    },

                                    ),
                                    centerTitle: true,
                                    title: const Text('Contacts',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2.0,
                                      ),),
                                  ),
                                )
                            )
                        );


                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 50.0,
                      ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo,
                    boxShadow: const [
                      BoxShadow(color: Colors.indigo, spreadRadius: 3),
                    ],
                  ),
                ),
              Container(
                child: const Icon(
                    Icons.compare_arrows_outlined,
                    color: Colors.white,
                    size: 50.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                  boxShadow: const [
                    BoxShadow(color: Colors.pink, spreadRadius: 3),
                  ],
                ),
              ),
              Container(
                child: const Icon(
                  Icons.grid_view_rounded,
                  color: Colors.white,
                  size: 50.0,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                  boxShadow: const [
                    BoxShadow(color: Colors.green, spreadRadius: 3),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 80.0,),
          const Text('Transactions'),
          const SizedBox(height: 20.0,),
          const Expanded(child: ListTransactions()),

        ],
      ),
    );
  }
}


class ListTransactions extends StatelessWidget {
  const ListTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [
        DataItem(),
        SizedBox(height: 20.0,),
        DataItem(),
        SizedBox(height: 20.0,),
        DataItem(),
        SizedBox(height: 20.0,),
        DataItem(),
        SizedBox(height: 20.0,),
      ],
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
                    "Nov 17/2021",
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "ETH 3.600",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                ),
              ),
              Text(
                "Received",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    letterSpacing: 2.0
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}