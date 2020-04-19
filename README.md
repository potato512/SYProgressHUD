# SYProgressHUD
提示信息弹窗


使用介绍 
  * 自动导入：使用命令`pod 'SYProgressHUD'`导入到项目中
  * 手动导入：或下载源码后，将源码添加到项目中
  

使用示例

* SYProgressHUD 的使用示例

导入头文件
```
#import "SYProgressHUD.h"
```

```
// 初始化
//    UIView *view = UIApplication.sharedApplication.delegate.window;
UIView *view = self.view;
[SYProgressHUD setContainerView:view];
[SYProgressHUD setActivityColor:UIColor.redColor];
[SYProgressHUD setHUDBackgroundColor:UIColor.greenColor];
[SYProgressHUD setHUDCorner:15];
[SYProgressHUD setHUDSize:CGSizeMake(300, 50)];
[SYProgressHUD setHUDPosition:80];
```

```
// 隐藏
[SYProgressHUD hide];
```

```
self.textArray = @[@"出错了，赶紧找问题吧！", @"正确！", @"因为你的不努力，现在发现了很多存在的隐患，你必须在规定的时间点完成所有的工作。否则后果很严重！"];
```

```
[SYProgressHUD showMessage:self.textArray[arc4random() % self.textArray.count]];
```

```
[SYProgressHUD showMessageAutoHide:self.textArray[arc4random() % self.textArray.count]];
```

```
[SYProgressHUD showActivity];
```

```
[SYProgressHUD showActivityAutoHide];
```

```
[SYProgressHUD showIcon:@[[UIImage imageNamed:@"withNetwork"]]];
 ```

```
[SYProgressHUD showIconAutoHide:@[[UIImage imageNamed:@"withoutNetwork"]]];
```

```
[SYProgressHUD showMessageWithActivity:self.textArray[arc4random() % self.textArray.count]];
 ```

```
[SYProgressHUD showMessageWithActivityAutoHide:self.textArray[arc4random() % self.textArray.count]];
```

```
[SYProgressHUD showMessageWithIcon:self.textArray[arc4random() % self.textArray.count] icon:@[[UIImage imageNamed:@"error"]]];
```

```
[SYProgressHUD showMessageWithIcon:self.textArray[arc4random() % self.textArray.count] icon:@[[UIImage imageNamed:@"success"]]];
```

效果图

![SYToast](./images/SYToast.gif) 


#### 修改说明
* 20200419
  * 版本号：1.2.0
  * 修改成 SYProgressHUD
    * 使用类方法定义属性
    * 使用类方法调用
    * 自动识别类型
      * 文本信息
      * 活动指示器
      * 图标
      * 文本+活动指示器
      * 文本+图标

* 20181115
  * 版本号：1.1.7
  * 修改显示重影的异常
  
* 20181114
  * 版本号：1.1.6
  * 修改完善
    * 自定义父视图
    * 自定义显示类型：文本、菊花转、自定义视图

* 20181019
  * 版本号：1.1.4
  * 删除HUD
  
* 20180816
  * 版本号：1.1.2
  
  * 版本号：1.1.1
  * 功能完善：修改异常

* 20180815
  * 版本号：1.1.0
  * 功能完善
    * 添加属性设置
      * 延迟隐藏时间
      * 背景颜色设置
      * 字体颜色设置
      * 字体大小设置
    * 修改隐藏方法
    * 添加`MBProgressHUD`封装类库`SYHUDProgress`
    * 添加`SYNetworkStatusView`顶部弹窗提示封装类（常用于网络状态提示）

* 20180802
  * 版本号：1.0.0
  * 修改完善
  
* 20170607
  * 方法名称修改，避免其他库文件方法同名。

