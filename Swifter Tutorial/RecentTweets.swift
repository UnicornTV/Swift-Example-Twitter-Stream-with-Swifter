import UIKit

class RecentTweets: UIViewController, UITableViewDelegate, UITableViewDataSource
{
  var recentTweets : NSArray = []
  
  @IBOutlet var tableView : UITableView
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
  func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
  {
    return recentTweets.count
  }
  
  func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
  {
    let data = recentTweets[indexPath.row] as? Dictionary<String, AnyObject>
    let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)

    cell.textLabel.text = data!["text"]? as String
    
    return cell
  }
}