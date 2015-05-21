//
//  FirstViewController.swift
//  TableView
//
//  Created by Yohei Okubo on 5/21/15.
//  Copyright (c) 2015 Yohei Okubo. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    let items = [
        "item 1",
        "item 2",
        "item 3",
        "item 4",
        "item 5",
        "item 6",
        "item 7",
        "item 8",
        "item 9",
        "item 10",
        "item 11",
        "item 12"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "SimpleTable"
    }

    //テーブルの行数を返す
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }


    //各セルに表示する内容を決定するindexPathで指定された場所のセルを作る
    //UITableViewDataSourceProtocol
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let identifier = "default-cell"
        //セルの再利用
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as! UITableViewCell

    }

}

