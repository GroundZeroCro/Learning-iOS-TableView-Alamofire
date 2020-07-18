import Foundation

protocol FlowersProtocol {
    func onSuccess(_ posts: [String])
    func onError(message: String?)
}