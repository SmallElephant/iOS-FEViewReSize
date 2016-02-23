# iOS-FEViewReSize
UIView中扩展CGRect
###UIView扩展CGRect
UIView需要改变位置，需要先获取原有的frame位置，然后在frame上面修改，有的时候如果只是改变了一下垂直方向的位置，宽度和高度的一种，这种写法很麻烦。下面两种写法第二种明显更简单，如果需要实现第二种方法就需要扩展UIView。
`//1
CGRect frame=self.testView.frame;
frame.size.width=120;
self.testView.frame=frame;
[self printFrame];
//2
self.testView.width=120;
[self printFrame];
`
