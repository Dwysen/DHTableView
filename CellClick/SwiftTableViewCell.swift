import UIKit
import SnapKit
import Kingfisher

class SwiftTableViewCell: UITableViewCell {
    
    private lazy var expanded:Bool = false
    
    private lazy var firstInit:Bool = true
    
    var delegate:ReloadDelegate?
    
    var indexP : IndexPath?
    
    private var urlString:String?{
        
        didSet{
            loadImg(urlString: urlString!)
        }
        
    }
    
    //标题
    private lazy var labelTitle:UILabel = UILabel()
    //图片
    private lazy var imagePhone : UIImageView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //创建UI
        self.InitUI()
        
        self.addTap()
        
    }
    
    fileprivate func InitUI(){
        
        //图片
        addSubview(imagePhone)
        imagePhone.contentMode = .scaleAspectFit
        imagePhone.clipsToBounds = true
        imagePhone.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.left.equalTo(10)
            make.right.equalTo(-10)
        }
        
        addSubview(labelTitle)
        labelTitle.numberOfLines = 0
        labelTitle.backgroundColor = UIColor.white
        labelTitle.snp.makeConstraints({ (make) in
            make.top.equalTo(imagePhone.snp.bottom).offset(10)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(-10)
        })
        
        
    }
    
    func loadImg(urlString:String)  {
        
        //        guard firstInit else {
        //            return
        //        }
        
        imagePhone.kf.setImage(with: URL.init(string: urlString)) { (img, _, _, _) in
            
            guard img != nil else {
                return
            }
            
            let realHeight = img!.size.height / (img!.size.width / Common.screenWidth)
            self.imagePhone.snp.makeConstraints({ (make) in
                make.height.equalTo(realHeight).priority(750)
            })
            
            self.delegate?.reload(indexP: self.indexP!)
            
            //                self.firstInit = false
            
        }
        
    }
    
    fileprivate func addTap(){
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapCell))
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tap)
        
    }
    
    
    @objc fileprivate func tapCell(){
        
        print("tap Cell")
        
        expanded = !expanded
        
        //        delegate?.reload(indexP: indexP!)
        
    }
    
    
    //控制器传过来的值赋值
    func getData(contain:String,url:String){
        //标题
        labelTitle.text = contain
        
        urlString = url
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

