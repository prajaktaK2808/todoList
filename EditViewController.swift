//
//  EditViewController.swift
//  todolist
//
//  Created by Student P_08 on 17/12/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    var taskid = String()
    var taskname = String()
    
    
    @IBOutlet weak var taskidtext: UITextField!
    
    
    
    @IBOutlet weak var tasknametext: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        taskidtext.text = taskid
        tasknametext.text = taskname

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func updatebutton(_ sender: UIButton) {
        
        
        let update = "update taskTable set taskName = '\(tasknametext.text!)' where taskId = '\(taskidtext.text!)'"
        
        let issuccess = DBWrapper.sharedObj.executeQuery(query: update)
        if issuccess 
        {
            print("update successful")
        }
        else
        {
            print("update failed")
        }
        
        
    }
    
    
    
    @IBAction func deletebutton(_ sender: UIButton) {
        let deleteQuery = "delete from taskTable where taskId = '\(taskidtext.text!)'"
        let issuccess = DBWrapper.sharedObj.executeQuery(query: deleteQuery)
        if issuccess
        {
            print("delete:Success")
        }
        else
        {
            print("delete:Failed")
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
