//
//  TableViewController.swift
//  TableViewwww
//
//  Created by Iwasaki Tomoya on 2018/08/11.
//  Copyright © 2018年 wtf. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //画面に表示される名前を入れていきます
    var names: [String] = [
    "麻生",
    "蒲田",
    "佐藤",
    "田中",
    "中村",
    "萩原",
    "松本",
    "矢田",
    "楽山",
    "渡部"
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        //今回のセクションは１つのみなので、namesの要素数をそのまま使います
        //"変数名.count"で要素数を取得できる
        return names.count
    }

    //各行のセルを表示する際に呼ばれる処理です
    //この中で表示内容を設定するプログラムを記述します
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        //セルのオブジェクトを作成します
        //"NameCell"の部分はStoryboardでセルを設定したIdentifierを指定しています
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        
        //namesから該当する行の文字列を所得してセルに設定します
        //idexPath.rowで何行目かかわかります

        cell.textLabel?.text = names[indexPath.row]

        return cell
    }
 

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
