import UIKit
import SnapKit

class SwiftTableViewCell: UITableViewCell {
    
    private lazy var expanded:Bool = false
    
    private lazy var firstInit:Bool = true
    
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
        
        let url = URL(string: urlString)
        let data = try? Data(contentsOf: url!)
        //从网络获取数据流,再通过数据流初始化图片
        if let imageData = data, let image = UIImage(data: imageData) {
            
            let realHeight = image.size.height / (image.size.width / UIScreen.main.bounds.width)
            imagePhone.snp.makeConstraints({ (make) in
                make.height.equalTo(realHeight).priority(750)
            })
            
            //加载图片
            imagePhone.image = image
            firstInit = false
        }else{
            //去除imageView里的图片和宽高比约束
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

