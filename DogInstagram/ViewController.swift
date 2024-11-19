import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 其他初始化代碼

    }

    // 隱藏 Section Header 高度
    override func tableView(
        _ tableView: UITableView, heightForHeaderInSection section: Int
    ) -> CGFloat {
        return 0  // 設置 Header 高度為 0
    }

    // (選擇性) 隱藏 Footer 高度
    override func tableView(
        _ tableView: UITableView, heightForFooterInSection section: Int
    ) -> CGFloat {
        return 0  // 設置 Footer 高度為 0
    }

}
