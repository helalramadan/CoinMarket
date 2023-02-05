import 'package:coinmarket/api/apiRepo.dart';
import 'package:coinmarket/constant/constant.dart';
import 'package:coinmarket/model/cuerrentModel.dart';
import 'package:coinmarket/model/dataModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'coinState.dart';

class CoinCubit extends Cubit<CoinState> {
  CoinCubit() : super(InitState());

  static CoinCubit get(context) => BlocProvider.of(context);
// CurrentModel?currentModel;
  DataModel? dataModel;
  void getAllData() {
    emit(LoadingState());
    ApiReop.getData(
            url: baseURL,
            params: {'start': '1', 'limit': '5000', 'convert': 'USD'})
        .then((value) {
      print(value.data['data']);
      // currentModel = CurrentModel.fromJson(value.data);
      dataModel = DataModel.fromJson(value.data);
      print('>>>>>>>>>>>>>>>>>>>>>${dataModel}');
      emit(SuccessState());
    }).catchError((error) => emit(ErrorState(error.toString())));
  }
}
