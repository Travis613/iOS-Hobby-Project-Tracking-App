import UIKit

class HobbyGroupsViewController: UIViewController, UITableViewDataSource {
    
    var hobbyProjects = ["MTG Life Counting Website", "Learn to play the piano", "Build this app"]
    
    @IBOutlet weak var HobbyGroupsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HobbyGroupsTableView.dataSource = self
    }
    
    // Returns the number of row based on the amount of rows in out hobbies array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hobbyProjects.count
    }
    
    // Configures and returns each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HobbyGroupsTableView.dequeueReusableCell(withIdentifier: "HobbyProjectsCell", for:indexPath)
        cell.textLabel?.text = hobbyProjects[indexPath.row]
        return cell
    }
    


}
