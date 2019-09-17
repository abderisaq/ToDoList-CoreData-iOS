//
//  ViewController.swift
//  ToDoList CoreData iOS
//
//  Created by TN007 on 9/15/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var error: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        taskTextField.becomeFirstResponder()
    }
    
    
    @IBAction func buttonTapped(_ sender: RoundButton) {
        
        if taskTextField.text?.trimmingCharacters(in: .whitespaces) == "" {
            error.isHidden = false
            
        } else {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let task = Task(context: context)
            task.name = taskTextField.text
        
            // Save the data to Cor Data
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
            navigationController?.popViewController(animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
