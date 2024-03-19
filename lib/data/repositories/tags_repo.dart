import 'package:yali/data/data_sources/remote/api_client.dart';
import 'package:yali/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:yali/presentation/screens/customer/tags/tags_model.dart';
import 'package:velocity_x/velocity_x.dart';

class TagsRepo extends ApiClient{
  TagsRepo();

  Future<TagsModel>getAllTags() async {
    try{
      final response = await getRequest(path: ApiEndpointUrls.tags);
      if(response.statusCode == 200){
        final responseData = TagsModel.fromJson(response.data);
        return responseData;
      }else{
        TagsModel();
      }
    }on Exception catch (e){
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }
}