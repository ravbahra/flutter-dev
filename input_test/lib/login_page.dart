import 'package:flutter/material.dart';

class _LoginPageState extends State<LoginPage> {
  //final forgotPasswordLabel = FatButton
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 48.0,
          //child: Image.asset('assets/logo.png')
          //backgroundImage : AssetImage()
          child: Image.network(
              "https://static.thenounproject.com/png/363633-200.png")),
    );

    final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'alucard@gmail.com',
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final password = TextFormField(
        autofocus: false,
        obscureText: true,
        initialValue: 'Enter password',
        decoration: InputDecoration(
            hintText: 'Pasdsword',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              //Navigator.pushNamed(context, '/homepage');
              Navigator.of(context).pushNamed('/homepage');
            },
            color: Colors.deepPurple,
            child: Text(
              'login',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
    // TODO: implement build

    bool _accept_terms = true;

    return Scaffold(
        body: Center(
            child: ListView(
      //shrinkWrap: true,
      //padding: EdgeInsets.only(left: 24.0, right: 24.0),
      children: <Widget>[
        logo,
        SizedBox(height: 48.0),
        email,
        SizedBox(height: 48.0),
        password,
        SizedBox(height: 48.0),
        loginButton,
        Card(
          child: Image.asset('assets/smily.jpg'),
        ),
        SwitchListTile(
            value: _accept_terms,
            onChanged: (bool newValue) {

              print(newValue);
              setState((){
                _accept_terms=newValue;
              });
            },
            title: Text("sdf"))
      ],
    )));
  }
}

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}
