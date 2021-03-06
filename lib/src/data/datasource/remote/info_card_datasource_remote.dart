import 'package:get/get.dart';
import 'package:true_budget/src/data/datasource/info_card_datasource_base.dart';
import 'package:true_budget/src/data/datasource/remote/network/info_card_service.dart';
import 'package:true_budget/src/data/model/info_card.dart';

import '../../model/category.dart';

class InfoCardDatasourceRemote implements InfoCardDatasource {
  final InfoCardService _infoCardService = Get.find();

  @override
  Future<List<InfoCard>> fetchAll() async {
    return (await _infoCardService
        .fetchInfoCardData())
        .map((infoCardMap) => InfoCard(const Category("MOCK"), 0)).toList();
  }
}
