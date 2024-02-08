import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:kronos/pages/home/about.dart';
import 'package:kronos/pages/home/home.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class VideoToTextView extends StatefulWidget {
  const VideoToTextView({super.key});

  @override
  State<VideoToTextView> createState() => _VideoToTextViewState();
}

class _VideoToTextViewState extends State<VideoToTextView> {
  TextEditingController urlcontoller = TextEditingController();
  PlatformFile objFile = PlatformFile(name: "No File Selected", size: 0);

  void chooseFileUsingFilePicker() async {
    //-----pick file by file picker,

    var result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'png',
        'mp4',
        'mov',
        'mkv',
        'asf',
        'avi',
        'wnmv',
        'ogv',
        'dat',
        'mpeg',
        'flv',
        '3gp',
        'webm',
        'rm',
        '3gpp',
        '3g2',
      ],
      withReadStream:
          true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
      });
    }
  }

  void uploadSelectedFile() async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("https://file.io/"),
    );
    //-----add other fields if needed
    request.fields["title"] = "This is video file";

    //-----add selected file with request
    request.files.add(new http.MultipartFile(
        "file", objFile.readStream!, objFile.size,
        filename: objFile.name));

    //-------Send request
    var resp = await request.send();

    //------Read response
    String result = await resp.stream.bytesToString();

    //-------Your response
    print(result);
  }

  void uploadYoutbeUrl(String deger) async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("https://file.io/"),
    );
    //-----add other fields if needed
    request.fields["url"] = deger;

    //-------Send request
    var resp = await request.send();

    //------Read response
    String result = await resp.stream.bytesToString();

    //-------Your response
    print(result);
  }

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
            title: const Text(
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
            title: const Text(
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
      frontLayer: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: Expanded(
                child: Text(
                  "Video To Text Converter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
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
                              label: const Text("Choose Local File"),
                              icon: const Icon(Icons.file_upload),
                              style: OutlinedButton.styleFrom(
                                shape: const ContinuousRectangleBorder(),
                                foregroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => chooseFileUsingFilePicker(),
                            ),
                          ),
                        ],
                      ),
                      if (objFile.size == 0)
                        Padding(
                          padding: EdgeInsets.all(16.0),
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
                              SizedBox(width: 16),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.url,
                                  controller: urlcontoller,
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
                      if (objFile != Null)
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Expanded(
                            child: Text(
                              "File name : ${objFile.name} ${urlcontoller.text}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      if (objFile != Null)
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Expanded(
                            child: Text(
                              "Size : ${(objFile.size) ~/ (1000000)} Mb",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: double.maxFinite,
                        child: Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: const ContinuousRectangleBorder(),
                              foregroundColor: Colors.white,
                              side: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            onPressed: () {
                              if (objFile.size != 0 &&
                                  urlcontoller.text == "") {
                                uploadSelectedFile();
                              }
                              if (objFile.size == 0 &&
                                  urlcontoller.text != "") {
                                uploadYoutbeUrl(urlcontoller.text);
                              }
                            },
                            child: const Text("Continue"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
