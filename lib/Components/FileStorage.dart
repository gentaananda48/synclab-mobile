import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FileStorage extends StatefulWidget {
  const FileStorage({super.key});

  @override
  State<FileStorage> createState() => _FileStorageState();
}

class _FileStorageState extends State<FileStorage> {
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    final path = result.files.single.path!;
    print(path);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
