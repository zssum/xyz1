//
//  ViewController.swift
//  picker
//
//  Created by Student on 14/2/17.
//  Copyright © 2017 Edwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var textFieldcourse:UITextField!
    var courses:Array< String>?
    

    override func viewDidLoad() {
    
        super.viewDidLoad()
        courses=["OOAD","JAVA","PMIS"]
        let pickerView:UIPickerView=UIPickerView()
        pickerView.delegate=self
        pickerView.dataSource=self
        textFieldcourse.inputView=pickerView
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses!.count;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses![row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(courses![row] + "selected");
        textFieldcourse.text=courses![row]
        pickerView.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

