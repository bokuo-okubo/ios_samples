//
//  FirstViewController.swift
//  TableView
//
//  Created by Yohei Okubo on 5/21/15.
//  Copyright (c) 2015 Yohei Okubo. All rights reserved.
//

import UIKit

class FirstViewController:
UIViewController, UITableViewDelegate, UITableViewDataSource {

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

    private var myTableView : UITableView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        //get status bar height
        let barHeight = UIApplication.sharedApplication().statusBarFrame.size.height

        //get windowsize
        let displayWidth = self.view.frame.width
        let displayHeight = self.view.frame.height

        myTableView = UITableView(frame:
            CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight),
            style: UITableViewStyle.Plain)

        myTableView.registerClass( UITableViewCell.self ,
            forCellReuseIdentifier: "default-cell")

        myTableView.dataSource = self
        myTableView.delegate = self

        self.title = "SimpleTable"

        self.view.addSubview(myTableView)
    }

    func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        println("NUM: \(indexPath.row)")
        println("value: \(items[indexPath.row])")
    }

    //テーブルの行数を返す
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }

    //各セルに表示する内容を決定するindexPathで指定された場所のセルを作る
    //UITableViewDataSourceProtocol
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let identifier = "default-cell"
        //セルの再利用
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier,
            forIndexPath: indexPath) as! UITableViewCell
        //Question: Objective-Cだとcellのnilチェックをしてなければ生成するけど、しなくていいのはなぜ？
        cell.textLabel?.text = items[indexPath.row]

        return cell
    }
}

