//
//  Created by Tyas on 22/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tglfield: UITextField!
    @IBOutlet weak var rapidbtn: UIButton!
    @IBOutlet weak var pcrbtn: UIButton!
    var flag = false
    var flag1 = false
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDatepicker()
    }
    
    //datepicker
    func createToolbar() -> UIToolbar {
        //Toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //done button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        toolbar.setItems([doneBtn], animated: true)
        
        return toolbar
    }
    
    func createDatepicker(){
        tglfield.inputView = datePicker
        tglfield.inputAccessoryView = createToolbar()
    }
    
    
    @IBAction func rapidAction(_ sender: UIButton) {
        if(flag == false)
        {
            sender.setBackgroundImage((UIImage(named: "radiobutton1")), for: UIControl.State.normal)
            pcrbtn.setBackgroundImage((UIImage(named: "radiobutton2")), for: UIControl.State.normal)
            
            flag = true
            flag1 = false
        }
    }
    
    @IBAction func pcrAction(_ sender: UIButton) {
        if(flag1 == false)
        {
            sender.setBackgroundImage((UIImage(named: "radiobutton1")), for: UIControl.State.normal)
            rapidbtn.setBackgroundImage((UIImage(named: "radiobutton2")), for: UIControl.State.normal)
            
            flag1 = true
            flag = false
        }
    }
}

