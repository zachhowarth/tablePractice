//
//  CactiTableViewController.swift
//  tablePractice
//
//  Created by Apple on 6/21/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

struct Cacti {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class CactiTableViewController: UITableViewController {
    
    var allCacti = [
        Cacti(id: 1,
              title: "Prickly Pear",
              text: "Opuntia, commonly called prickly pear, is a genus in the cactus family, Cactaceae.",
              image: "prickly-pear"),
        Cacti(id: 2,
              title: "Hedgehog Cacti",
              text: "Echinopsis is a large genus of cacti native to South America, sometimes known as hedgehog cactus, sea-urchin cactus or Easter lily cactus.",
              image: "hedgehog"),
        Cacti(id: 3,
              title: "Rebutia",
              text: "Rebutia is a genus in the family Cactaceae, native to Bolivia and Argentina. They are generally small, colorful cacti, and globular in form.",
              image: "rebutia")
    ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCacti.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = allCacti[indexPath.row].title
        cell.detailTextLabel?.text = allCacti[indexPath.row].text
        cell.imageView?.image = UIImage(named: allCacti[indexPath.row].image)

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Cacti"
    }

}
