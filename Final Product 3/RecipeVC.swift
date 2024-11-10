//
//  ViewController.swift
//  Final Product 3
//
//  Created by admin on 3/11/24.
//

import UIKit

class RecipeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var TableRecipe: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PastaCell", for: indexPath)
        cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TableRecipe.delegate = self
        TableRecipe.dataSource = self
        // Do any additional setup after loading the view.
    }


}

