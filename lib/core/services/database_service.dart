abstract class DatabaseService {


  Future<void> addData({required String path,required Map<String, dynamic> data,String? documentId});

  Future<Map<String, dynamic>> getdata({required String path,required String documentId,});

  Future<bool> checkDocumentExists({required String path,required String documentId,});
}
