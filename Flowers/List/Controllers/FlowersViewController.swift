import UIKit


class FlowersViewController: UIViewController {

    private var characters: [String] = []
    // Common
    private var navigation: MyNavigationBar!
    private let tableView = FlowersTableView()
    private let noContentWarningView = NoContentWarningView()
    // Data
    private let flowersDataSource = FlowersDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        instantiateViews(view: view)
        flowersDataSource.getData(callback: self)
    }

    private func instantiateViews(view: UIView) {
        navigation = MyNavigationBar(title: Constants.flowersNavigationTitle)
        view.addSubview(tableView)
        view.addSubview(noContentWarningView)
        view.addSubview(navigation)
        tableView.instantiateTable(view: view, navigation: navigation, delegate: self, dataSource: self)
        noContentWarningView.initializeView(view: view)
    }
}

extension FlowersViewController: FlowersProtocol {

    func onSuccess(_ posts: [String]) {
        characters = posts
        tableView.reloadData()
    }

    func onError(message: String?) {
        if message != nil {
            ToastView.popUp(context: self, msg: "Success")
            noContentWarningView.changeVisibility(isVisible: true)
        }
    }
}

extension FlowersViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = characters[indexPath.row]
        return cell
    }
}
