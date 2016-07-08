import UIKit

var todolist = [String]()


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var todotable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if NSUserDefaults.standardUserDefaults().objectForKey("todolist") != nil
            {
        todolist = NSUserDefaults.standardUserDefaults().objectForKey("todolist") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return todolist.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
       let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
       cell.textLabel?.text = todolist[indexPath.row]
       return cell
    
    }
    
    override func viewDidAppear(animated: Bool) {
        todotable.reloadData()
    }
    
    
    
}

