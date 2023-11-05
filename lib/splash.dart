import 'package:flutter/material.dart';

import 'components/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 27, 22),
      body: Container(
        height: (MediaQuery.of(context).size.height),
         width: (MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage(
                  'lib/assets/palestine.png',
                ),
                alignment:MediaQuery.of(context).size.height>900?  Alignment.center:Alignment.topCenter,
              
                fit: BoxFit.contain)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * .07,
              ),
              const Text('قاطع',
              textAlign: TextAlign.right,
                  style: TextStyle(
                  
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(
           height:   MediaQuery.of(context).size.height>900 ?MediaQuery.of(context).size.height*.68: MediaQuery.of(context).size.height*.45
              ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  const Text('نسألكم الدعاء لاخواننا في فلسطين ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.width * .01),
                  const Text(
                    'قاطع وساعد منتجاتك المحلية دا اقل حاجه ممكن تقدمها لنفسك',
                    style: TextStyle(
                        color: Color.fromARGB(189, 178, 178, 178),
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .1,
                  ),
                  button_p(
                    text: 'ساعد اخواتك',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold  , fontSize: 20),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/Home');
                    },
                  )
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
