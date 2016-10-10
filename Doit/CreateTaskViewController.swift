//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by 重信和宏 on 9/10/16.
//  Copyright © 2016 Hiro. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var ImportantSwitch: UISwitch!
    
    @IBOutlet weak var TaskNameField: UITextField!
    
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func AddTapped(_ sender: AnyObject) {
    
    // Create a task from the outlet information 
    
     let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        
        
     let task = Task(context: context)
     task.name = TaskNameField.text!
     task.important = ImportantSwitch.isOn
    
    
    
    navigationController!.popViewController(animated: true)
        
        
    }

   
}
