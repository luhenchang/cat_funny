import 'package:catfunny/base/mvvm/base.dart';
import 'package:catfunny/base/mvvm/common.dart';
import 'package:dio/dio.dart';
import 'entity/home_page_entity.dart';

class HomePageModel extends BaseModel{
  Future<DataResponse<HomePageEntity>> getHttpRequst()async{
    DataResponse dataResponse=new DataResponse<HomePageEntity>(entity:null);
    return dataResponse;
  }


}