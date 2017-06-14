整个demo使用MVC架构 同时分离网络层
* Model 
* View
* Controller
* Request
* Config
* Extension

### Controller</br>
1架构tableView的基本结构</br>
2展示不同cell的不同页面布局</br>
3调用网络请求接口</br>
4使用block异步调用数据接口 每个接口调用成功后刷新页面</br>
### View</br>
由于变化的只有cell，所以此处单独建立可复用的TableViewCell。然后每个cell使用单独的function去更改界面。
### Model</br>
由于一个接口对应一个Cell，那么每个接口的数据可能也是不同的，所以需要建立5个model，每个model可以有自己不同的数据结构。方便cell，根据不同的数据去呈现不同的页面。</br>
### Request</br>
此处为接口层，此处将所有的接口封装成对应的function，然后把数据直接解析到Model。然后直接通过Block,返回主程进行操作。
### Config</br>
此处为宏定义，定义基本的常量，同时也是大项目的一个基本配置。配置基本信息。</br>
### Extension</br>
此处为基本类的扩展，可以把常用的function直接封装在这里，方便后续直接修改。
