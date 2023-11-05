import 'package:flutter/material.dart';

import 'components/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
                          fontSize: 40,
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
                    text: 'ساعد اخوانك',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
