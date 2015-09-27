//
//  CategoryAmountEntryScreenViewController.swift
//  budget app
//
//  Created by Malcolm Geldmacher on 9/22/15.
//  Copyright (c) 2015 Malcolm Geldmacher. All rights reserved.
//

import UIKit

class CategoryAmountEntryScreenViewController: UIViewController {
    @IBOutlet weak var AmountEntryBox: UITextField!
    @IBOutlet weak var LogExpenseButton: UIButton!
    @IBAction func LogExpenseButtonClicked(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true);
    }
    
    var Category : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        AmountEntryBox.resignFirstResponder()
        self.view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
