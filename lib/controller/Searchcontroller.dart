import 'package:get/get.dart';
import 'package:hotalbookingapp/core/constants/my_string.dart';
import 'package:hotalbookingapp/presentation/screen/home/models/features_properties_model.dart';

class Searchcontrollers extends GetxController {
  RxList<FeaturedPropertiesModel> filteredProductList =
      <FeaturedPropertiesModel>[].obs;

  @override
  @override
  void onInit() {
    super.onInit();
  }

  void filterProducts(String query, String price) {
    filteredProductList.clear();

    if (query.isEmpty && price.isEmpty && price == "" && query == "") {
      filteredProductList.addAll(MyString.featuredlist);
    } else if (query == "" && price.isNotEmpty) {
      MyString.featuredlist.forEach((product) {
        if (product.price!.toLowerCase().startsWith(price.toLowerCase())) {
          filteredProductList.add(product);
        }
      });
    } else {
      MyString.featuredlist.forEach((product) {
        if (product.destination!
                .toLowerCase()
                .startsWith(query.toLowerCase()) ||product.destination!
                .toLowerCase()
                .contains(query.toLowerCase())||
            product.roomname!.toLowerCase().startsWith(query.toLowerCase())) {
          filteredProductList.add(product);
        }
      });
    }
  }
}