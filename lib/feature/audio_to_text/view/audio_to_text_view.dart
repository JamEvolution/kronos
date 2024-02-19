import 'package:auto_route/auto_route.dart';
import 'package:backdrop/backdrop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kronos/feature/loading/view/loading_view.dart';
import 'package:kronos/product/navigation/app_router.dart';
import 'package:kronos/product/widgets/appbar/backdrop_appbar.dart';
import 'package:kronos/product/widgets/padding/project_paddig.dart';

@RoutePage()
class AudioToTextView extends StatefulWidget {
  const AudioToTextView({super.key});

  @override
  _AudioToTextViewState createState() => _AudioToTextViewState();
}

class _AudioToTextViewState extends State<AudioToTextView> {
  TextEditingController urlController = TextEditingController();
  PlatformFile objFile = PlatformFile(name: 'No File Selected', size: 0);

  Future<void> chooseFileUsingFilePicker() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'mp3',
        'mp4',
        'wav',
        'wma',
        'aac',
        'm4a',
        'flac',
      ],
      withReadStream: true,
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
      });
    }
  }

  Future<void> uploadSelectedFile() async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('https://file.io/'),
    );
    request.fields['id'] = 'abc';

    request.files.add(
      http.MultipartFile(
        'file',
        objFile.readStream!,
        objFile.size,
        filename: objFile.name,
      ),
    );

    final resp = await request.send();
    final result = await resp.stream.bytesToString();
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
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Audio To Text Converter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            Padding(
              padding: const ProjectPadding.allMedium(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                child: Padding(
                  padding: const ProjectPadding.allLarge(),
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
                      if (objFile != Null)
                        Padding(
                          padding: const ProjectPadding.allMedium(),
                          child: Text(
                            'File name : ${objFile.name}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      if (objFile != Null)
                        Padding(
                          padding: const ProjectPadding.allMedium(),
                          child: Text(
                            'Size : ${(objFile.size) / (1000000)} Mb',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      Container(
                        padding: const ProjectPadding.allMedium(),
                        width: double.maxFinite,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoadingView(),
                              ),
                            );
                          },
                          child: const Text('Continue'),
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

class Context {}
