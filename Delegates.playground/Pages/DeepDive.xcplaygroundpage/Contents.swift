//: [Previous](@previous)
/*:
 ### Deep Dive
 
 The Delegate Pattern has 3 parts:

 */
//: ![Delegate Pattern](DelegatePattern.png)
/*:
Credits: RayWenderlich Design Patterns by Tutorials
*/
/*:
 
 - The *Delegating Object* is an object that needs a delegate, such as ```UICollectionView```
 - The *Delegate Protocol*, defining the methods a delegate may or must implement
 - The *Delegate*, the object that **conforms** to the delegate protocol
 */
/*:
 ### Example
 */

import UIKit

class FoodItemViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    let items = ["Apple", "Orange", "Chocolate"]
    let reuseId = "reuseId"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         - Here we are setting the collectionView's delegate and its data source, which is also a delegate
 
        */
        tableView.delegate = self
        tableView.dataSource = self
    }
//-------------------------------------------------------------------
    /*
    - The below methods that we need to implement in the delegate protocol, the necessary blueprint for the table view
    - We define how many cells to return based on our data source and return the contents of the data source for each cell
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
//-------------------------------------------------------------------
    // Other optional delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("We just selected a row...")
    }
}

