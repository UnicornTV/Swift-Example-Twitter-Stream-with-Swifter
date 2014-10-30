import UIKit
import SwifteriOS

class TweetsViewController: UITableViewController {
  
  var tweets : [JSONValue] = []
  
  override func viewWillLayoutSubviews()
  {
    super.viewWillLayoutSubviews()
    self.tableView.contentInset = UIEdgeInsetsMake(self.topLayoutGuide.length, 0, 0, 0)
    self.tableView.scrollIndicatorInsets = UIEdgeInsetsMake(self.topLayoutGuide.length, 0, 0, 0)
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tweets.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
    
    cell.textLabel.text = tweets[indexPath.row]["text"].string
    
    return cell
  }
  
}