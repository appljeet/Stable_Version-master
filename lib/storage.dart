
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class storage{

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }



  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/username.txt');
  }




  Future<File> storeUsedBefore(String newusername) async {
    final file = await _localFile;

    String username = newusername.toString();
    // Write the file
    return file.writeAsString(username);
  }




  Future<String> readUsedBefore() async {

    try {
      final file = await _localFile;
      String content = await file.readAsString();

      return content;

      // Read the file
    }

    catch(e){
      return e.toString();
    }

  }









}