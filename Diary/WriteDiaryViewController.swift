//
//  WriteDiaryViewController.swift
//  Diary
//
//  Created by Songhee Yim on 12/9/22.
//

import UIKit

class WriteDiaryViewController: UIViewController {
    
    
    @IBOutlet var titleTextField: UITextField!
    
    
    @IBOutlet var contentsTextView: UITextView!
    
    @IBOutlet var dateTextField: UITextField!
    
    
    @IBOutlet var confirmButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureContentsTextview()
        
    }

    private func configureContentsTextview(){
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        self.contentsTextView.layer.borderColor  = borderColor.cgColor
        self.contentsTextView.layer.borderWidth  = 0.5
        self.contentsTextView.layer.cornerRadius = 5.0
    }

    @IBAction func tapConfirmButton(_ sender: UIBarButtonItem) {
    }
    
}
