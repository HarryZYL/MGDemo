//
//  ViewController.swift
//  MGDemo
//
//  Created by Harry on 13/06/2017.
//  Copyright © 2017 harry. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                      UITableViewDelegate,UITableViewDataSource {

    let reuseIdentifier = "cell"
    
    var tableView: UITableView = UITableView()
    
    
    var dataArr:[[Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArr = [
                    [
                    FirstModel(),
                    SecondModel(),
                    ThirdModel(),
                    FourthModel(),
                    FifthModel()
                    ]
                 ]
        
        setTableView(frame: view.bounds, style: .plain)
        fetchData()
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Set Up View
    
    func setTableView(frame:CGRect,style:UITableViewStyle){
        tableView = UITableView(frame: frame, style: style)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.separatorStyle = .none
        view.addSubview(self.tableView)
    }
    
    
    
    //MARK:  Table View
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! TableViewCell
        
        switch indexPath.row {
        case 0:
            let first:FirstModel = dataArr[0][indexPath.row] as! FirstModel
            cell.setFirstCell(isInit:first.isInit,title: first.first)
            break
        case 1:
            let second:SecondModel = dataArr[0][indexPath.row] as! SecondModel
            cell.setSecondCell(isInit:second.isInit,title: second.second)
            break
        case 2:
            let third:ThirdModel = dataArr[0][indexPath.row] as! ThirdModel
            cell.setThirdCell(isInit: third.isInit,title: third.third)
            break
        case 3:
            let fourth:FourthModel = dataArr[0][indexPath.row] as! FourthModel
            cell.setFourthCell(isInit: fourth.isInit,title: fourth.fourth)
            break
        case 4:
            let fifth:FifthModel = dataArr[0][indexPath.row] as! FifthModel
            cell.setFifthCell(isInit: fifth.isInit,title: fifth.fifth)
            break
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  SCREEN_HEIGHT / CGFloat(dataArr[0].count)
    }
    
    //MARK: Networking
    
    func fetchData(){
        
        HttpRequest.firstAPI { (first) in
            self.dataArr[0][0] = first
            self.tableView.reloadData()
        }
        
        HttpRequest.secondAPI { (second) in
           self.dataArr[0][1] = second
           self.tableView.reloadData()
        }
        
        HttpRequest.thirdAPI { (third) in
           self.dataArr[0][2] = third
           self.tableView.reloadData()
        }
        
        
       HttpRequest.fourthAPI { (fourth) in
           self.dataArr[0][3] = fourth
           self.tableView.reloadData()
       }
        
       HttpRequest.fifthAPI { (fifth) in
          self.dataArr[0][4] = fifth
          self.tableView.reloadData()
       }
        
        
    }



}

