import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dec = '';
  var word = 'мир';

  @override
    void initState() {
      super.initState();
      voidWord(word);
    }

  String voidWord(var _word) {
    for(int i = 0; i < _word.toString().length; i++)
      dec += '*';
    return dec;
  }

  var pict = 'assets/images/1.png';
  int ipict = 1;

  
 Widget _listView() {
  void voidPict(var letter) {
    bool res = false;

    for(int i = 0; i < word.length; i++) {
      if(word[i].toLowerCase() == letter[0].toLowerCase()) {
        res = true;
      }
    }
    if(!res) {
      if(ipict <= 11)
        setState(() {
          ipict++;
          print(ipict);
          pict = 'assets/images/${ipict}.png';
        });
    }

    String result = dec;
    dec = '';

    setState(() {
      for(int i = 0; i < word.length; i++) {
          if( word[i].toLowerCase() == letter[0].toLowerCase() ) dec += '${letter[0]}';   
          else if( word[i].toLowerCase() == result[i].toLowerCase() ) dec += '${result[i]}'; 
          else dec += '*'; 
          
      }
    });
  }

  Row row1 = Row(
  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
  children: [
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("А", style: TextStyle(fontSize: 22)),
      onPressed:() { voidPict("А"); },
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Б", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Б"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("В", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("В"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Г", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Г"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Д", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Д"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Е", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Е"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ё", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ё");}
    ),
  ],
);

Widget row2 = Row(
  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
  children: [
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ж", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ж"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("З", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("З"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("И", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("И"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Й", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Й"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("К", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("К"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Л", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Л"); }
    ),
  ],
);

Widget row3 = Row(
  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
  children: [
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("М", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("М"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Н", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Н"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("О", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("О"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("П", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("П"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Р", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Р"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("С", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("С"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Т", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Т"); }
    ),
  ],
);

Widget row4 = Row(
  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
  children: [
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("У", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("У"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ф", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ф"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Х", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Х"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ц", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ц"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ч", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ч"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ш", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Щ"); }
    ),
  ],
);

Widget row5 = Row(
  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
  children: [
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Щ", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Щ"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ъ", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ъ"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ы", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ы"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ь", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ь"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Э", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Э"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Ю", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Ю"); }
    ),
    SizedBox( width: 10,),
    ElevatedButton(
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      child: Text("Я", style: TextStyle(fontSize: 22)),
      onPressed:(){ voidPict("Я"); }
    ),
  ],
);


  return Column(
    children: [
       row1,
           SizedBox( height: 10,),
           row2,
           SizedBox( height: 10,),
           row3,
           SizedBox( height: 10,),
           row4,
           SizedBox( height: 10,),
           row5
    ],
  );
 }

// voidPict('А')

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Виселица',style: TextStyle(fontSize: 40),
            ),
            Image.asset(pict,  fit:BoxFit.cover ),
            Text(
              '${dec}', style: TextStyle(fontSize: 50),
            ),
            SizedBox( height: 10,),
           _listView(),
          
          ],
        ),
      ),
      
    );
  }
}
