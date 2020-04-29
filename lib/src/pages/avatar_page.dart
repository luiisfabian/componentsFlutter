import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Avatar Page"),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://datosdefamosos.com/wp-content/uploads/2019/09/Stan_Lee-773x1024.jpg"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: CircleAvatar(
                child: Text("SL"),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage(
                "https://lifestyle.americaeconomia.com/sites/lifestyle.americaeconomia.com/files/styles/gallery_image/public/2018-11-12t194414z_1_lynxnpeeab1dg_rtroptp_4_gente-stanlee.jpg?itok=-A6YzhAM"),
            placeholder: AssetImage("assets/loading.gif"),
            fadeInDuration: Duration(seconds: 3),
          ),
        ));
  }
}
