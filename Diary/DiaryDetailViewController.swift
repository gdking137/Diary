//
//  DiaryDetailViewController.swift
//  Diary
//
//  Created by Songhee Yim on 12/9/22.
//

import UIKit

class DiaryDetailViewController: UIViewController {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var contentsTextView: UITextView!
    @IBOutlet var titleLabel: UILabel!
    
    
    var diary: Diary?
    var indexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    private func configureView(){
        guard let diary = self.diary else {return}
        self.titleLabel.text = diary.title
        self.contentsTextView.text = diary.contents
        self.dateLabel.text = self.dateToString(date: diary.date)
    }
    
    private func dateToString(date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yy년 MM월 dd일(EEEEE)"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
    
    
    
    @IBAction func tapEditButton(_ sender: UIButton) {
    }
    
    @IBAction func tapDeleteButton(_ sender: UIButton) {
    }
}
