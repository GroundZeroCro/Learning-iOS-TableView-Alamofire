import Foundation

protocol FlowersProtocol {
    func onLoading()
    func onSuccess(_ posts: [String])
    func onError(message: String?)
}