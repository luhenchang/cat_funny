import 'package:catfunny/base/mvvm/base.dart';
import 'package:catfunny/base/mvvm/common.dart';
import 'package:catfunny/home/entity/home_page_entity.dart';
import '../map_page_model.dart';
class HomePageVM extends BaseViewModel<HomePageModel,HomePageEntity>{
  @override
  void init() {
    super.init();
  }
  @override
  Future<DataResponse<HomePageEntity>> requestHttp({bool isLoad, int page, params}) {
    return  model.getHttpRequst();
  }
}