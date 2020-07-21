import Foundation
import Alamofire

class FlowersDataSource {

    func getData(callback: FlowersProtocol) {
        callback.onLoading()
        AF.request(Constants.baseUrl, method: .get, encoding: JSONEncoding.default)
                .validate()
                .responseDecodable(completionHandler: { (response: AFDataResponse<FlowersResponse>) in
                    switch (response.result) {
                    case .success(_):
                        callback.onSuccess((response.value?.flowers)!)
                        break

                    case .failure(_):
                        callback.onError(message: response.error?.errorDescription)
                        break
                    }
                })
    }
}