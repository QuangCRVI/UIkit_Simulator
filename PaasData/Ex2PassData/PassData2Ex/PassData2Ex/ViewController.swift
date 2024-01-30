//
//  ViewController.swift
//  PassData2Ex
//
//  Created by Quang Nguyen on 29/01/2024.
//

import UIKit

var arr = [MenuNew]()

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView()
        fakeData()
    }
    
    func fakeData() {
        let data = MenuNew(title: "Hậu vệ Indonesia: 'Chúng tôi cố gắng thắng Việt Nam lần nữa'", image: "img1", describe: "Cầu thủ nhập tịch Sandy Walsh khẳng định thành tích ở Asian Cup 2023 tiếp thêm tự tin cho Indonesia.")
        let data1 = MenuNew(title: "HLV Shin: 'Indonesia hay nhưng kém may'", image: "img2", describe: "Sau khi thua Australia 0-4 ở vòng 1/8 Asian Cup 2023, HLV Shin Tae-yong cho rằng Indonesia kém may mắn, đặc biệt trong bàn thua đầu.")
        let data2 = MenuNew(title: "Chủ tịch Barca chấp nhận đề xuất của Xavi", image: "img3", describe: "Chủ tịch Barca, Joan Laporta chấp nhận đề xuất làm việc đến hết mùa rồi ra đi của HLV Xavi.")
        let data3 = MenuNew(title: "Klopp: 'Liverpool phải quên việc tôi sắp rời đi'", image: "img4", describe: " Sau trận thắng Norwich 5-2 ở vòng bốn Cup FA, HLV Jurgen Klopp thừa nhận phải kiểm soát cảm xúc, nhưng muốn CĐV và học trò quên đi việc ông sẽ rời Liverpool vào cuối mùa. ")
        let data4 = MenuNew(title: "Ten Hag: 'Man Utd lẽ ra phải thắng 4-0 từ hiệp một'", image: "img5", describe: "HLV Erik Ten Hag không hài lòng khi Man Utd phung phí cơ hội, phải vất vả thắng 4-2 sau khi bị Newport County gỡ hòa 2-2 ở vòng bốn Cup FA.")
        let data5 = MenuNew(title: "Tajikistan viết tiếp chuyện cổ tích ở Asian Cup 2023", image: "img6", describe: "Tajikistan tiếp tục gây bất ngờ khi hòa 1-1 rồi hạ UAE 5-3 trong loạt luân lưu ở vòng 1/8 để vào tứ kết trong lần đầu dự Asian Cup.")
        let data6 = MenuNew(title: "Inter lập thành tích hiếm tại Serie A", image: "img7", describe: " Lần thứ hai trong lịch sử CLB, Inter thắng 17 và giành ít nhất 54 điểm qua 21 trận đầu tại Serie A, sau khi hạ chủ nhà Fiorentina 1-0 tối 28/1. ")
        let data7 = MenuNew(title: "PSG đứt mạch 5 trận thắng", image: "img8", describe: "Dẫn 2-0 từ hiệp đầu, nhưng PSG để Brest vùng lên trong hiệp hai và bị cầm hòa 2-2 trên sân nhà ở vòng 19 Ligue 1. ")
        let data8 = MenuNew(title: "Man Utd thắng nhọc đội hạng Tư", image: "img9", describe: "Dùng đội hình mạnh nhất và có lúc bị gỡ 2-2, Man Utd vẫn thắng chủ nhà Newport County 4-2 ở vòng bốn Cup FA. ")
        let data9 = MenuNew(title: "Liverpool vào vòng năm Cup FA", image: "img10", describe: "Nhiều trụ cột trở lại, giúp Liverpool đè bẹp đội Hạng Nhất Norwich 5-2 ở vòng bốn Cup FA. ")
        
        arr.append(data)
        arr.append(data1)
        arr.append(data2)
        arr.append(data3)
        arr.append(data4)
        arr.append(data5)
        arr.append(data6)
        arr.append(data7)
        arr.append(data8)
        arr.append(data9)
        collectionView.reloadData()
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nib = UINib(nibName: "NewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "newCell")
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newCell", for: indexPath) as! NewCell
        let news = arr[indexPath.row]
        cell.lbTitle.text = news.title
        cell.imgNew.image = UIImage(named: news.image)
        cell.lbDescrible.text = news.describe
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = view.frame.width
        return CGSize(width: w, height: 500)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var vc = SecondVC(nibName: "SecondVC", bundle: nil)
        let data = arr[indexPath.row]
        vc.name = data
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
