import UIKit

final class AddExpenseViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func handleSave(_ sender: UIBarButtonItem) {
        guard let title = titleTextField.text else {
            print("enter title")
            return
        }
        
        guard let amount = amountTextField.text else {
            print("enter amount")
            return
        }
        
        guard let date = dateTextField.text else {
            print("enter date")
            return
        }
        
        let model = ExpenseItem(title: title, amount: amount, date: date)
        print(model)
    }

}

