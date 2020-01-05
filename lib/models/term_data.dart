import 'package:certicicatie_qualification/services/network_helper.dart';
import 'package:certicicatie_qualification/constant/settings.dart';

class TermData {

  Future getTermData() async {
    NetworkHelper termDataApiClient = NetworkHelper(url: '$kDataApiUrl/api/v1/term_data');
    var response = await termDataApiClient.get();
    print(response);
    return response;
  }
}