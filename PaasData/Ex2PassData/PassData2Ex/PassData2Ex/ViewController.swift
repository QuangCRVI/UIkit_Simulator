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
        let data = MenuNew(title: "Hậu vệ Indonesia: 'Chúng tôi cố gắng thắng Việt Nam lần nữa'", image: "img1", describe: "Cầu thủ nhập tịch Sandy Walsh khẳng định thành tích ở Asian Cup 2023 tiếp thêm tự tin cho Indonesia.", line: "Tại vòng bảng Asian Cup 2023, Indonesia đánh bại Việt Nam 1-0 ở lượt trận hai, bằng bàn thắng duy nhất trên chấm phạt đền của Asnawi Mangkualam. Đây là chiến thắng đầu tiên của Indonesia trước Việt Nam kể từ AFF Cup 2016, đồng thời giúp họ vượt qua vòng bảng với tư cách một trong bốn đội thứ ba thành tích tốt nhất.\nỞ vòng loại hai World Cup 2026 sắp tới, Indoensia sẽ tái ngộ Việt Nam, khi đá trên sân nhà vào ngày 21/3 và sân khách ngày 26/3. Hiện, Indonesia đang đứng cuối bảng F với một điểm, bằng Philippines nhưng kém hiệu số bàn thắng bại, đồng thời kém Việt Nam hai điểm và Iraq năm điểm. Vì vậy, hai trận sắp tới được xem là quyết định tới tấm vé đi tiếp của hai đội bóng hàng đầu Đông Nam Á.")
        
        let data1 = MenuNew(title: "HLV Shin: 'Indonesia hay nhưng kém may'", image: "img2", describe: "Sau khi thua Australia 0-4 ở vòng 1/8 Asian Cup 2023, HLV Shin Tae-yong cho rằng Indonesia kém may mắn, đặc biệt trong bàn thua đầu.", line: "Nếu tự đánh giá, tôi chọn đây là trận hay nhất từ đầu giải của Indonesia, Shin Tae-yong nói ở họp báo sau trận đấu hôm qua 28/1. Nhưng đội kém may khi bàn thua đầu tiên đến từ pha phản lưới.\nPhút 12, Australia căng ngang từ cánh phải đưa bóng đập chân Elkan Baggott, rồi bay vào góc gần khiến thủ môn Ernando Ari bó tay. HLV Shin cho rằng nếu không có bàn thua này thì diễn biến trận đấu đã khác. Ông khẳng định các cầu thủ Indonesia không thua kém đối thủ về phong độ và đã làm tốt chỉ dẫn của ban huấn luyện.\nChúng tôi thua vì kinh nghiệm và sự tập trung, Shin cho hay. Australia rõ ràng làm tốt hơn ở một số pha bóng. Chúng tôi có lẽ sẽ tạo được sự khác biệt ở lần tái đấu tới.")
        
        
        let data2 = MenuNew(title: "Chủ tịch Barca chấp nhận đề xuất của Xavi", image: "img3", describe: "Chủ tịch Barca, Joan Laporta chấp nhận đề xuất làm việc đến hết mùa rồi ra đi của HLV Xavi.", line: "Xavi đã thông báo với tôi rằng cậu ấy sẽ ra đi vào cuối mùa giải, Laporta nói với tờ Mundo Deportivo hôm 28/1. Cậu ấy muốn kết thúc mùa giải và đó là công thức mà tôi chấp nhận vì chính Xavi là người đề xuất điều đó với tôi. Cậu ấy là một huyền thoại của Barca, một người trung thực, hành động với phẩm giá hoàn toàn, và là một người yêu quý Barca.\nHôm 27/1, sau trận Barca thua Villarreal 3-5 ở vòng 22 La Liga, Xavi tuyên bố không muốn trở thành vấn đề của đội bóng và sẽ ra đi vào cuối mùa. Laporta không có mặt trong buổi họp báo cùng HLV.")
        
        let data3 = MenuNew(title: "Klopp: Liverpool phải quên việc tôi sắp rời đi", image: "img4", describe: " Sau trận thắng Norwich 5-2 ở vòng bốn Cup FA, HLV Jurgen Klopp thừa nhận phải kiểm soát cảm xúc, nhưng muốn CĐV và học trò quên đi việc ông sẽ rời Liverpool vào cuối mùa.",line: "Thật tuyệt khi người hâm mộ thể hiện tình yêu của họ với tôi và toàn đội cần bầu không khí như vậy trên sân, Klopp nói sau trận đấu trên sân Anfield tối 28/1. Nhưng chúng tôi cần những khán đài ủng hộ toàn đội chứ không phải chỉ nghĩ về HLV. Chúng ta cần quên đi điều đó trong thời gian tới và tấn công từng đối thủ một cách điên cuồng.\nHôm qua là trận đầu tiên của Liverpool sau khi HLV người Đức thông báo chia tay CLB vào cuối mùa. Các CĐV chủ nhà đã đến kín sân Anfield, nhiều người mang theo biểu ngữ tri ân Klopp. Trước giờ bóng lăn, họ đồng thanh hát vang ca khúc truyền thống của CLB You’ll Never Walk Alone, rồi hát vang bài hát kinh điển I Feel Fine của The Beatles khi vào trận. Klopp đôi lúc nghẹn ngào, có vẻ rớm nước mắt trước tình cảm của người hâm mộ.")
        
        let data4 = MenuNew(title: "Ten Hag: Man Utd lẽ ra phải thắng 4-0 từ hiệp một", image: "img5", describe: "HLV Erik Ten Hag không hài lòng khi Man Utd phung phí cơ hội, phải vất vả thắng 4-2 sau khi bị Newport County gỡ hòa 2-2 ở vòng bốn Cup FA.", line: "Tôi nghĩ công việc đã hoàn thành, Ten Hag nói sau trận đấu trên sân Rodney Parade tối 28/1. Trong 25 phút đầu, Man Utd chơi rất tốt, kiểm soát thế trận và ghi hai bàn đẹp. Chúng tôi còn tạo hai hoặc ba cơ hội, và tỷ số lẽ ra phải là 3-0 hoặc 4-0. Rồi đối thủ ghi bàn từ tình huống tưởng chừng không nguy hiểm, và ghi thêm một bàn nữa ngay sau hiệp một. Tôi phải chỉ trích đội vì điều này, và họ đã thể hiện cá tính cũng như sự kiên cường để ghi thêm hai bàn.\nTiền vệ đội trưởng Bruno Fernandes chia sẻ quan điểm này, cho rằng Man Utd phải thi đấu tập trung hơn, không để thủng lưới và lẽ ra phải sớm kết liễu trận đấu ngay từ hiệp một. Đây không phải là kết quả hoàn hảo, chúng tôi không muốn để thủng lưới, tiền vệ Bồ Đào Nha nói.")
        
        let data5 = MenuNew(title: "Tajikistan viết tiếp chuyện cổ tích ở Asian Cup 2023", image: "img6", describe: "Tajikistan tiếp tục gây bất ngờ khi hòa 1-1 rồi hạ UAE 5-3 trong loạt luân lưu ở vòng 1/8 để vào tứ kết trong lần đầu dự Asian Cup.", line: "Trong loạt sút trên chấm 11m tối 28/1, Tajikistan thể hiện bản lĩnh khi thực hiện thành công cả năm lượt, còn UAE đá hỏng lượt thứ ba khi Caio Canedo bị thủ môn Rustam Yatimov bắt bài khi sút vào góc thấp bên phải.\nThắng 5-3, Tajikistan viết tiếp chuyện cổ tích ở Asian Cup. Tại vòng bảng, thầy trò Petar Segrt lần lượt hòa Trung Quốc rồi thua chủ nhà Qatar, trước khi đánh bại Lebanon 2-1 ở phút bù để làm nên chiến thắng lịch sử, vào vòng 1/8 với tư cách nhì bảng A.")
        
        let data6 = MenuNew(title: "Inter lập thành tích hiếm tại Serie A", image: "img7", describe: "Lần thứ hai trong lịch sử CLB, Inter thắng 17 và giành ít nhất 54 điểm qua 21 trận đầu tại Serie A, sau khi hạ chủ nhà Fiorentina 1-0 tối 28/1.", line: "Lần đầu tiên Inter lập thành tích này là thắng 18 trận và giành 57 điểm qua 21 trận đầu tại Serie A mùa 2006-2007. Khi đó, họ được dẫn dắt bởi HLV Roberto Mancini và vô địch với 97 điểm, hơn á quân Roma tới 22 điểm.\nMùa này, Inter cũng đang giữ đỉnh bảng với 54 điểm, hơn Juventus một điểm và AC Milan bảy điểm, nhưng đá ít hơn một trận. Họ đã có một danh hiệu khi thắng Napoli 1-0 trong trận chung kết Siêu Cup Italy tại Arab Saudi tối 22/1.")
        
        let data7 = MenuNew(title: "PSG đứt mạch 5 trận thắng", image: "img8", describe: "Dẫn 2-0 từ hiệp đầu, nhưng PSG để Brest vùng lên trong hiệp hai và bị cầm hòa 2-2 trên sân nhà ở vòng 19 Ligue 1.", line: "PSG đứt mạch năm trận thắng trên mọi đấu trường, sau khi hạ Lens 2-0, Metz 3-1 ở Ligue 1, Reven 9-0, Orleans 4-1 tại Cup Pháp và Toulouse 2-0 tại chung kết Siêu Cup Pháp. Đây cũng là trận hòa đầu tiên của CLB thủ đô Paris trong năm 2024.\nLần gần nhất PSG rơi chiến thắng là hai trận hòa liên tiếp tiếp trước Lille tại Ligue 1 và Dortmund ở lượt cuối vòng bảng Champions League với cùng tỷ số 1-1 từ giữa tháng 12/2023.\nTrên sân Parc des Princes tối 28/1, PSG áp đảo trong hiệp một khi kiểm soát bóng 54%, dứt điểm bảy lần với bốn cú trúng đích - so với 2 và 1 của Brest.")
        
        let data8 = MenuNew(title: "Man Utd thắng nhọc đội hạng Tư", image: "img9", describe: "Dùng đội hình mạnh nhất và có lúc bị gỡ 2-2, Man Utd vẫn thắng chủ nhà Newport County 4-2 ở vòng bốn Cup FA.", line: "Man Utd dùng đội hình mạnh nhất có thể với các trụ cột như Luke Shaw, Lisandro Martinez, Raphael Varane hay Casemiro trở lại đá chính cùng nhau. Thủ môn Altay Bayindir cũng lần đầu chơi cho Man Utd, khi Andre Onana chưa về kịp từ giải châu Phi. Tuy nhiên, chuyến đi tới Xứ Wales không dễ dàng với Quỷ Đỏ dù thứ hạng hai đội chênh lệch lớn.\nĐội khách dĩ nhiên vẫn chơi tốt hơn, và sớm mở tỷ số ở phút thứ bảy. Luke Shaw chuyền lên cho Fernandes ở biên trong trái, và đội trưởng Man Utd bật một chạm xẻ nách cho Antony lao xuống. Antony chuyền ngược ra tuyến hai đúng tầm Fernandes lao tới duỗi mu sút đập đất về góc gần vào lưới.")
        
        let data9 = MenuNew(title: "Liverpool vào vòng năm Cup FA", image: "img10", describe: "Nhiều trụ cột trở lại, giúp Liverpool đè bẹp đội Hạng Nhất Norwich 5-2 ở vòng bốn Cup FA.", line: "Trên sân, tuy tung đội hình nhiều cầu thủ trẻ và dự bị, Liverpool dễ dàng lấn lướt, Klopp tung bộ ba tiền đạo tốt nhất ông đang có Darwin Nunez, Diogo Jota và Cody Gakpo ra sân từ đầu để họ tìm cảm giác ghi bàn. Sau trận này, Liverpool sẽ liên tiếp đối đầu Chelsea và Arsenal. Do đó, Klopp sẽ cần hàng công hoạt động tốt nhất trong bối cảnh Mohamed Salah chấn thương.\nNgay phút thứ 10, khán giả trên sân Anfield được dịp ồ lên tiếc nuối khi pha xoay người dứt điểm đẳng cấp ở sát rìa bên trái vòng cấm của Nunez trúng cột dọc. Không cầu thủ nào dứt điểm trúng khung gỗ nhiều hơn tiền đạo Uruguay ở Ngoại hạng Anh mùa này, và anh tiếp tục mang vận xui đó đến Cup FA.")
        
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
        let vc = SecondVC(nibName: "SecondVC", bundle: nil)
        let data = arr[indexPath.row]
        vc.name = data
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
