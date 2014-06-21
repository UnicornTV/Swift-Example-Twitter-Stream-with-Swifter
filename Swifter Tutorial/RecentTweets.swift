import UIKit
import Accounts
import Social
import SwifteriOS

/* Cells in table view can either have a description or an image. Demonstrates
an algebraic data type. */
enum CellData {
  case DescriptiveCell(title: String, description: String, url: String)
  case ImageCell(title: String, imageName: String, url: String)
  
  /* Computed property that grabs the url associated value out of the
  enum object (perhaps there's a better way of doing this?) */
  var url: String {
    get {
      switch(self) {
      case var .DescriptiveCell(_, _, url):
        return url
      case var .ImageCell(_, _, url):
        return url
      }
    }
  }
}

class RecentTweets: UIViewController, UITableViewDelegate, UITableViewDataSource
{
  /* Immutable list of the data for our table. */
//  var recentTweets : CellData[] = [
//    .DescriptiveCell(title: "No Data", description: "No data could be fetched", url: "http://github.com/")
//  ]
  
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
    
    println(data)
    
    
//    switch(data) {
//    case .DescriptiveCell(var title, var description, _):
//      cell.textLabel.text = title
//      cell.detailTextLabel.text = description
//    case .ImageCell(var title, var imageName, _):
//      cell.textLabel.text = title
//      cell.imageView!.image = UIImage(named: imageName)
//    }
    
    return cell
  }
}