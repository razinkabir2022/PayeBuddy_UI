import 'package:get/get.dart';
import 'dart:convert';
import 'package:currency/config/network_urls.dart';
import 'package:get_storage/get_storage.dart';
import "package:http/http.dart";
import 'package:currency/model/onboarding_res_model.dart';

class OnboardingController extends GetxController{
   var onboardingResList = RxList<OnboardingResModel>();

  @override
  void onInit(){
    super.onInit();
    getOnboardingData();
  }

  Future<RxList<OnboardingResModel>?> getOnboardingData() async {
     
      try {
      final response = await get(Uri.parse(NetUrls.onboardingUrl));
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body.toString());
        onboardingResList.clear(); 
       data.asMap().forEach((index, value) {
        onboardingResList.add(OnboardingResModel.fromJson(value));
      });
      return onboardingResList;
      } else {
        // Handle non-200 status code
        print('Failed to load onboarding data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      Future.error('Error fetching onboarding data: $e');
    }
     
  }
}