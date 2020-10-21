import 'package:refransehadabawy/files/exports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = new TextEditingController();
  bool remchheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: hadCard(
            widget: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 30, top: 30),
                    child: asImage(
                        souce: 'assets/logo.png',
                        fit: BoxFit.contain,
                        height: 150.0,
                        width: 150.0),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: hadFild(
                        suffixIcon: Icon(
                          Icons.mail_outline,
                          color: bColor,
                        ),
                        controller: textEditingController,
                        backColor: Colors.white,
                        titleColor: bColor,
                        hint: 'mail',
                        lable: 'Email'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      bottom: 30,
                      right: 15,
                    ),
                    child: hadFild(
                        controller: textEditingController,
                        backColor: Colors.white,
                        titleColor: bColor,
                        hint: 'password',
                        lable: 'Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      bottom: 30,
                      right: 15,
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: remchheck,
                          checkColor: bColor,
                          hoverColor: wColor,
                          activeColor: yColor,
                          focusColor: bColor,
                          onChanged: (newValue) {
                            setState(() {
                              remchheck = newValue;
                              print(remchheck);
                            });
                          },
                        ),
                        hadText(title: 'remember password', titleColor: bColor),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        bottom: 30,
                        right: 15,
                      ),
                      child: hadButton(title: 'LOGIN'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
