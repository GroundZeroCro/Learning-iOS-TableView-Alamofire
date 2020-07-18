import Foundation
import UIKit

class FlowersTableView: UITableView {

    func instantiateTable(view: UIView, navigation: UINavigationBar, delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: navigation.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        register(FlowerCell.self, forCellReuseIdentifier: "cell")
        self.delegate = delegate
        self.dataSource = dataSource
    }
}
