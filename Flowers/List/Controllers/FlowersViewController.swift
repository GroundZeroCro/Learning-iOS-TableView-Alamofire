import UIKit


class FlowersViewController: UIViewController {

    private var flowers: [String] = []
    // Views
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

    func onSuccess(_ flowers: [String]) {
        self.flowers = flowers
        tableView.reloadData()
    }

    func onError(message: String?) {
        if message != nil {
            ToastView.popUp(context: self, msg: message!)
            noContentWarningView.changeVisibility(isVisible: true)
        }
    }
}

extension FlowersViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        flowers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FlowerCell
        cell.name = flowers[indexPath.row]
        cell.onOpenButtonClickAction = {
            self.onOpenButtonClick(flower: self.flowers[indexPath.row])
        }
        return cell
    }

    private func onOpenButtonClick(flower: String) -> Void {
        let detailsController = DetailsViewController()
        detailsController.flower = flower
        self.present(detailsController, animated: true)
    }
}
