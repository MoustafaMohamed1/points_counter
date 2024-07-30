import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pointsTeamA = 0;
  int pointsTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Points Counter',
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(color: Colors.black, fontSize: 28,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '$pointsTeamA',
                    style: TextStyle(color: Colors.black, fontSize: 90),
                  ),
                  const SizedBox(height: 24,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(150, 45),
                    ),
                    onPressed: () {

                      setState(() {
                        pointsTeamA++;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(150, 45),
                    ),
                    onPressed: () {

                      setState(() {
                       pointsTeamA+=2;
                      });
                    },
                    child: const Text(
                      'Add 2 point',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(150, 45),
                    ),
                    onPressed: () {

                      setState(() {
                       pointsTeamA+=3;
                      });
                    },
                    child: const Text(
                      'Add 3 point',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 420,child: VerticalDivider(thickness: 1,color: Colors.grey,),),

              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(color: Colors.black, fontSize: 28,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                   Text(
                    '$pointsTeamB',
                    style: TextStyle(color: Colors.black, fontSize: 90),
                  ),
                  const SizedBox(height: 22,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(150, 45),
                    ),
                    onPressed: () {

                      setState((){
                        pointsTeamB++;
                      });
                    },
                    child: const Text(
                      'Add 1 point',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(150, 45),
                    ),
                    onPressed: () {
                      setState((){
                         pointsTeamB+=2;
                      });
                    },
                    child: const Text(
                      'Add 2 point',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(150, 45),
                    ),
                    onPressed: () {
                      setState((){
                       pointsTeamB+=3;
                      });
                    },
                    child: const Text(
                      'Add 3 point',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              minimumSize: Size(150, 45),
            ),
            onPressed: () {
              setState((){
                pointsTeamA = 0;
                pointsTeamB = 0;
              });
            },
            child: const Text(
              'Reset',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
