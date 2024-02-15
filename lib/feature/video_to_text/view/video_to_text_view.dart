import 'package:auto_route/auto_route.dart';
import 'package:backdrop/backdrop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kronos/product/navigation/app_router.dart';
import 'package:kronos/product/widgets/appbar/backdrop_appbar.dart';

@RoutePage()
class VideoToTextView extends StatefulWidget {
  const VideoToTextView({super.key});

  @override
  State<VideoToTextView> createState() => _VideoToTextViewState();
}

class _VideoToTextViewState extends State<VideoToTextView> {
  TextEditingController urlcontoller = TextEditingController();
  PlatformFile objFile = PlatformFile(name: 'No File Selected', size: 0);

  Future<void> chooseFileUsingFilePicker() async {
    //-----pick file by file picker,

    final result = await FilePicker.platform.pickFiles(
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

  Future<void> uploadSelectedFile() async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('https://file.io/'),
    );
    //-----add other fields if needed
    request.fields['title'] = 'This is video file';

    //-----add selected file with request
    request.files.add(
      http.MultipartFile(
        'file',
        objFile.readStream!,
        objFile.size,
        filename: objFile.name,
      ),
    );

    //-------Send request
    final resp = await request.send();

    //------Read response
    final result = await resp.stream.bytesToString();

    //-------Your response
    print(result);
  }

  Future<void> uploadYoutbeUrl(String deger) async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('https://file.io/'),
    );
    //-----add other fields if needed
    request.fields['url'] = deger;

    //-------Send request
    final resp = await request.send();

    //------Read response
    final result = await resp.stream.bytesToString();

    //-------Your response
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: const BackDropAppBarWidget(),
      backLayer: BackdropNavigationBackLayer(
        items: [
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            onTap: () {
              context.router.push(const HomeRoute());
            },
          ),
          ListTile(
            title: const Text(
              'About',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            onTap: () {
              context.router.push(const AboutRoute());
            },
          ),
        ],
      ),
      backLayerBackgroundColor: const Color.fromARGB(255, 24, 32, 35),
      headerHeight: 30,
      frontLayerBackgroundColor: const Color.fromARGB(255, 44, 55, 66),
      frontLayer: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: Expanded(
                child: Text(
                  'Video To Text Converter',
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
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              label: const Text('Choose Local File'),
                              icon: const Icon(Icons.file_upload),
                              style: OutlinedButton.styleFrom(
                                shape: const ContinuousRectangleBorder(),
                                foregroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: chooseFileUsingFilePicker,
                            ),
                          ),
                        ],
                      ),
                      if (objFile.size == 0)
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.insert_link,
                                color: Colors.white,
                              ),
                              const Text(
                                'File URL:',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.url,
                                  controller: urlcontoller,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: const InputDecoration(
                                    labelStyle: TextStyle(color: Colors.white),
                                    labelText: 'Youtube URL',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText:
                                        'https://www.youtube.com/watch?v=aLvlqD4QS7Y',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.zero),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (objFile != Null)
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Expanded(
                            child: Text(
                              'File name : ${objFile.name} ${urlcontoller.text}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      if (objFile != Null)
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Expanded(
                            child: Text(
                              'Size : ${(objFile.size) ~/ (1000000)} Mb',
                              style: const TextStyle(
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
                                  urlcontoller.text == '') {
                                uploadSelectedFile();
                              }
                              if (objFile.size == 0 &&
                                  urlcontoller.text != '') {
                                uploadYoutbeUrl(urlcontoller.text);
                              }
                            },
                            child: const Text('Continue'),
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
