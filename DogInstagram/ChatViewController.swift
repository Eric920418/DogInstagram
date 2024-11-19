import UIKit

class MyChatViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Chat View"
        self.view.backgroundColor = .white

        // 添加返回按鈕
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backToTableViewController))
        self.navigationItem.leftBarButtonItem = backButton
    }

    @objc func backToTableViewController() {
        if let navigationController = self.navigationController {
            if let targetViewController = navigationController.viewControllers.first(where: { $0 is MyTableViewController }) {
                navigationController.popToViewController(targetViewController, animated: true)
            } else {
                print("目標控制器未找到！")
            }
        } else {
            print("當前不在導航堆棧中，使用模態返回")
            self.dismiss(animated: true, completion: nil)
        }
    }
}
