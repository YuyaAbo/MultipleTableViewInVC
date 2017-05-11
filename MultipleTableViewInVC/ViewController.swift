import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    
    private var data1: [String?] = ["a", "b", "c"]
    private var data2: [String?] = ["d", "e", "f"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.delegate = self
        tableView1.dataSource = self
        tableView2.delegate = self
        tableView2.dataSource = self
        tableView1.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView2.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0 {
            return data1.count
        } else {
            return data2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if tableView.tag == 0 {
            cell?.textLabel?.text = data1[indexPath.row]
        } else {
            cell?.textLabel?.text = data2[indexPath.row]
        }
        return cell!
    }

}

