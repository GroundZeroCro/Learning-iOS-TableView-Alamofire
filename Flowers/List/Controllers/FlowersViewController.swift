import UIKit


class FlowersViewController: BaseViewController {

    private var flowers: [String] = []
    // Views
    private let tableView = FlowersTableView()
    private let noContentWarningView = NoContentWarningView()
    private var progressIndicator: ProgressIndicator!
    // Data
    private let flowersDataSource = FlowersDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        instantiateViews(view: view)
        setNavigationTitle(navigationTitle: Constants.flowersNavigationTitle)
        flowersDataSource.getData(callback: self)
    }

    private func instantiateViews(view: UIView) {
        view.addSubview(tableView)
        view.addSubview(noContentWarningView)
        tableView.instantiateTable(view: view, delegate: self, dataSource: self)
        noContentWarningView.initializeView(view: view)
        progressIndicator = ProgressIndicator(view: view)
        view.addSubview(progressIndicator)
    }
}

extension FlowersViewController: FlowersProtocol {
    func onLoading() {
        progressIndicator.startAnimating()
    }

    func onSuccess(_ flowers: [String]) {
        self.flowers = flowers
        tableView.reloadData()
        progressIndicator.stopAnimating()
    }

    func onError(message: String?) {
        if message != nil {
            ToastView.popUp(context: self, msg: message!)
            noContentWarningView.changeVisibility(isVisible: true)
        }
        progressIndicator.stopAnimating()
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
        self.navigationController?.pushViewController(detailsController, animated: true)
    }
}
