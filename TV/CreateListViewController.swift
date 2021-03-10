//
//  CreateListViewController.swift
//  TV
//
//  Created by Bruno Cardoso Ribeiro Pontes on 09/03/21.
//

import UIKit

class CreateListViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(self.keyboardWillShow(note:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @objc func keyboardWillShow(note: Notification) {

    }
    
    @IBAction func onCancelViewController(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onEditNameDidEnd(_ sender: UITextField) {
        self.urlTextField.becomeFirstResponder()
    }
    
    
    @IBAction func onEditURLDidEnd(_ sender: UITextField) {
        self.saveList()
    }
    
    @IBAction func onSubmitList(_ sender: UIButton) {
        self.saveList()
    }
    
    private func saveList() {
        let listName = self.nameTextField.text ?? ""
        let listURL = self.urlTextField.text ?? ""
        
        print("\(listName) can be found in \(listURL)")
    }
    
}
