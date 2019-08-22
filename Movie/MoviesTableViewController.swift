//
//  MoviesTableViewController.swift
//  Movie
//
//  Created by Coco and Cream on 8/20/19.
//  Copyright © 2019 Coco and Cream. All rights reserved.
//

import UIKit

struct Movie {
    
    var id : Int
    var title : String
    var date : String
    var image : String
    
}

class MoviesTableViewController: UITableViewController {
    
    var movies = [
        Movie(id: 1, title: "Dark Knight", date: "01/20/2010", image: "dk"),
        Movie(id: 2, title: "Avengers Endgame", date: "06/20/2019", image: "endgame"),
        Movie(id: 3, title: "The Visit", date: "08/20/2015", image: "visit")
    ];

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath)

        cell.textLabel?.text = movies[indexPath.row].title

        return cell
    }

}
