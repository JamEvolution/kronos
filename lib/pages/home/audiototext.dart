import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:kronos/pages/home/about.dart';
import 'package:kronos/pages/home/home.dart';

class AudioToTextView extends StatefulWidget {
  const AudioToTextView({Key? key}) : super(key: key);

  @override
  _AudioToTextViewState createState() => _AudioToTextViewState();
}

class _AudioToTextViewState extends State<AudioToTextView> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        elevation: 0,
        title: Image.asset(
          "images/kronoslogo.jpeg",
          fit: BoxFit.contain,
          height: 220.0,
          width: 220.0,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 24, 32, 35),
        actions: const <Widget>[],
      ),
      backLayer: BackdropNavigationBackLayer(
        items: [
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
        ],
      ),
      backLayerBackgroundColor: const Color.fromARGB(255, 24, 32, 35),
      headerHeight: 30.0,
      frontLayerBackgroundColor: const Color.fromARGB(255, 44, 55, 66),
      frontLayer: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 24, 32, 35),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            label: Text("Choose Local File"),
                            icon: Icon(Icons.file_upload),
                            style: OutlinedButton.styleFrom(
                              shape: ContinuousRectangleBorder(),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: OutlinedButton.icon(
                            label: Text(
                              "Record",
                            ),
                            icon: Icon(Icons.videocam),
                            style: OutlinedButton.styleFrom(
                              shape: ContinuousRectangleBorder(),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.insert_link,
                            color: Colors.white,
                          ),
                          Text(
                            "File URL:",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                labelText: 'Youtube URL',
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText:
                                    'https://www.youtube.com/watch?v=aLvlqD4QS7Y',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}