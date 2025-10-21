import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'İlham Ver'),
    );
  }
}

/***
 *
 * Not: //.* ile yorum satırları silinir.
 * NOT: ElevatedButton ile buton eklenebilir.
 */



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/10, bottom: ekranYuksekligi/100),
              child: SizedBox(
                  child: Image.asset("images/jobs.jpeg"),
                  width: ekranGenisligi/4,
              ),
            ),
            Text("Steve Jobs",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi/25
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: ekranGenisligi/100, right: ekranGenisligi/100),
              child: Text("Dünyayı değiştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgın olanlardır.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ekranGenisligi/25
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi/10),
              child: SizedBox(
                width: ekranGenisligi/2,
                height: ekranYuksekligi/15,
                child: ElevatedButton(
                    onPressed: ()
                    {
                      print("İlham Verildi");
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.redAccent,
                    ),
                    child: Text("İlham Ver", style: TextStyle(fontSize: ekranGenisligi/25),)),
              ),
            ),
          ],
        ),
      )
    );
  }
}
