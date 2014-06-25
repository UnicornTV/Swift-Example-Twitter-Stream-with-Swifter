import UIKit

// RecentTweets inherits from UIViewController and implements the UITableViewDelegate and UITableViewDataSource protocols
class RecentTweets: UIViewController, UITableViewDelegate, UITableViewDataSource
{
  // Q: Why NSArray vs the new array syntax?
  // A: Most of us are former Objc devs, and sometimes it helps mentally to be more explicit
  var recentTweets : NSArray = []
  
  // You ctrl+dragged this outlet in from your storyboard right?
  @IBOutlet var tableView : UITableView
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
  // As defined in the protocol, we need to provide the number of rows in this table
  func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
  {
    return recentTweets.count
  }
  
  // Another protocol method, allowing us to control the data created in each cell
  // Note that UITableView has a ! at the end
  func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
  {
    // Grab the data in the recentTweets array based on the index of the cell
    // Tell the program what type of data it is so that we can drill into this generic object
    let data = recentTweets[indexPath.row] as? Dictionary<String, AnyObject>
    let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)

    cell.textLabel.text = data!["text"]? as String
    
    return cell
  }
}