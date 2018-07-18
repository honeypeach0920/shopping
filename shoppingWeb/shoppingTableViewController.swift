//
//  shoppingTableViewController.swift
//  shoppingWeb
//
//  Created by mac on 2018/7/17.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class shoppingTableViewController: UITableViewController {

    @IBOutlet weak var flowerQty1Label: UILabel!
    @IBOutlet weak var flowerQty2Label: UILabel!
    @IBOutlet weak var flowerQty3Label: UILabel!
    @IBOutlet weak var flowerQty4Label: UILabel!
    @IBOutlet weak var flowe1Stepper: UIStepper!
    @IBOutlet weak var flower2Stepper: UIStepper!
    @IBOutlet weak var TotalCostLabel: UILabel!
    var myValue1:Int=0
    var myValue2:Int=0
    var myValue3:Int = 0
    var myValue4:Int = 0
    @IBAction func flowercount1(_ sender: UIStepper) {
        myValue1 = Int(sender.value)
        flowerQty1Label.text = "\(myValue1)"
        claculate()
    }
    
    @IBAction func flowercount2(_ sender: UIStepper) {
        myValue2 = Int(sender.value)
        flowerQty2Label.text="\(myValue2)"
        claculate()
    }
    
    @IBAction func flowercount3(_ sender: UIStepper) {
        myValue3 = Int(sender.value)
        flowerQty3Label.text="\(myValue3)"
        claculate()
    }
    
    @IBAction func flowercount4(_ sender: UIStepper) {
        myValue4 = Int(sender.value)
        flowerQty4Label.text="\(myValue4)"
        claculate()
    }
    func claculate(){
       let sum = 980 * myValue1 + 850 * myValue2 + 800 * myValue3 + 350 * myValue4
        TotalCostLabel.text="總計"+"\(sum)"+"元"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
