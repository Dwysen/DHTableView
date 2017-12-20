import UIKit

class ViewController : UIViewController,UITableViewDelegate,UITableViewDataSource  {
    
    //懒加载tableview
    private lazy var tableView :UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: UITableViewStyle.plain)
    
    //懒加载数据源-可变数组用Var，类型自动推导,数组字典都用[]
    private lazy var dataSource : [String] = [String]()
    private lazy var urlSource : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //数据
        dataSource += ["自适应行高Cell"]
        dataSource += ["MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。"]
        dataSource += ["自适应行高Cell"]
        dataSource += ["MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。"]
        dataSource += ["自适应行高Cell"]
        dataSource += ["MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。"]
        
        dataSource += ["自适应行高Cell"]
        dataSource += ["MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。"]
        dataSource += ["自适应行高Cell"]
        dataSource += ["MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。"]
        dataSource += ["自适应行高Cell"]
        dataSource += ["MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。MVVM是Model-View-ViewModel的简写，是由MVP（Model-View-Presenter）模式与WPF结合的应用方式时发展演变过来的一种新型架构框架。Model 用来获取数据并建立实体模型和基本的业务逻辑。提供数据获取接口供ViewModel调用，经数据转换和操作并最终映射绑定到View层某个UI元素的属性上View 用来创建显示的界面，不做任何业务逻辑，不处理操作数据。ViewModel 将View和Model联系起来，处理视图逻辑，操作数据，不做任何UI相关的事情。绑定数据到到相应的控件上，数据变化时自动更新UI。"]
        
        urlSource += ["http://upload-images.jianshu.io/upload_images/3893609-7cda6989079bafac.jpg?imageMogr2/auto-orient/"]
        urlSource += ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513682568516&di=d5363c48bc7c2e14cbf842e9b3a203f2&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171215%2F7771f35b5bae4ea2b207e21d5bc9710d.jpeg"]
        urlSource += ["http://upload-images.jianshu.io/upload_images/3893609-7cda6989079bafac.jpg?imageMogr2/auto-orient/"]
        urlSource += ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513682568516&di=d5363c48bc7c2e14cbf842e9b3a203f2&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171215%2F7771f35b5bae4ea2b207e21d5bc9710d.jpeg"]
        urlSource += ["http://upload-images.jianshu.io/upload_images/3893609-7cda6989079bafac.jpg?imageMogr2/auto-orient/"]
        urlSource += ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513682568516&di=d5363c48bc7c2e14cbf842e9b3a203f2&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171215%2F7771f35b5bae4ea2b207e21d5bc9710d.jpeg"]
        
        urlSource += ["http://upload-images.jianshu.io/upload_images/3893609-7cda6989079bafac.jpg?imageMogr2/auto-orient/"]
        urlSource += ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513682568516&di=d5363c48bc7c2e14cbf842e9b3a203f2&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171215%2F7771f35b5bae4ea2b207e21d5bc9710d.jpeg"]
        urlSource += ["http://upload-images.jianshu.io/upload_images/3893609-7cda6989079bafac.jpg?imageMogr2/auto-orient/"]
        urlSource += ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513682568516&di=d5363c48bc7c2e14cbf842e9b3a203f2&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171215%2F7771f35b5bae4ea2b207e21d5bc9710d.jpeg"]
        urlSource += ["http://upload-images.jianshu.io/upload_images/3893609-7cda6989079bafac.jpg?imageMogr2/auto-orient/"]
        urlSource += ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513682568516&di=d5363c48bc7c2e14cbf842e9b3a203f2&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171215%2F7771f35b5bae4ea2b207e21d5bc9710d.jpeg"]
        
        //创建UI
        self.createUI()
        
    }
    func createUI(){
        //标题
        //tableview
        self.view.addSubview(tableView)
        //去分割线
        tableView.delegate = self
        tableView.dataSource = self
        //注册cell重用
        tableView.register(SwiftTableViewCell.self , forCellReuseIdentifier: "ID")
        
        //开启自动计算高度
//        tableView.estimatedRowHeight = 66//预估高度，随便设置
    
        let fpsLabel = FPSLabel(frame: CGRect(x: UIScreen.main.bounds.width - 45.0, y:UIScreen.main.bounds.height - 25.0 , width: 40.0, height: 20.0))
        view.addSubview(fpsLabel)
        view.bringSubview(toFront: fpsLabel)
        
    }
    
    
    //代理方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"ID") as! SwiftTableViewCell
        //cell样式，取消选中
        cell.selectionStyle = .none
        //传值
        cell.getData(contain: dataSource[indexPath.row] , url: urlSource[indexPath.row])
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
