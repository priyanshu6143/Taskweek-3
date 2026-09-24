import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Container(
          child: Column(
            children: [
              for(int j = 0; j < 8 ; j++)
                if(j % 2 == 0)...[
                  Row(
                    children: [
                      for(int i = 0; i < 8 ; i++)
                        if(i % 2 == 0)...[
                          Container(
                            height : MediaQuery.of(context).size.height / 8,
                            width : MediaQuery.of(context).size.width / 8,
                            color: Colors.white70,
                          )
                        ]
                        else...[
                          Container(
                            height : MediaQuery.of(context).size.height / 8,
                            width : MediaQuery.of(context).size.width / 8,
                            color: Colors.black,
                          ),
                        ],
                    ],
                  ),
                ]
              else...[
                  Row(
                    children: [
                      for(int i = 0; i < 8 ; i++)
                        if(i % 2 == 0)...[
                          Container(
                            height : MediaQuery.of(context).size.height / 8,
                            width : MediaQuery.of(context).size.width / 8,
                            color: Colors.black,
                          )
                        ]
                        else...[
                          Container(
                            height : MediaQuery.of(context).size.height / 8,
                            width : MediaQuery.of(context).size.width / 8,
                            color: Colors.white70,
                          ),
                        ],
                    ],
                  ),
                ]
            ],
          ),
        )
        ),
      );
  }
}
