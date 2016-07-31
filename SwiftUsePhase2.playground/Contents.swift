//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//  一般在 OC 中的话一个类要有声明和实现, 声明属性和方法, 在实现中实现方法.
/**  这里 Swift 用一个 Swift 文件就能定义一个类了, 类定义就像其他面向对象的那样,    */

class Dog {
    var name = "hahah"
    
    init() {
        print("Dog --- init")
    }
}


class Person {
    //  这里写属性和方法,
    //   属性有三种: 存值属性 / 计算属性 / 类属性
//    存值属性: 存储值的变量或常量, 还能添加属性监视器
    var age = 10
    var height : Double = 178.0
    let weight = 59.0

    
    var old : Int {
        get {
            return age
        }
    }
    
    var sanwei : String {
        get {
            return "age: \(age), height:\(height), weight\(weight)"
        }
        set {
            print("Person'sanweiSet\(newValue)")
        }
    }
    //  用到时在加载的属性, 一般用在对象属性上
    lazy var dog = Dog()
    
    func run() {
        print("Person ---- run ")
    }
}

var p = Person()
p.age = 20
p.height
p
//p.weight = 90
//p.dog


class Square {
    //  存值属性还可以设置属性监视器, 在属性值改变的时候做些操作, 就是在赋值的时候会调用 willset 和 didset 方法
    var width = 20.0 {
        willSet {
            //  将要设值时, 调用这个方法, 
            print("width = \(width), newValue = \(newValue)")
        }
        didSet {
            //  设值时, 会对旧值做备份, 存到 oldValue 里
            print("width = \(width), oldValue = \(oldValue)")
        }
    }
    
    var girth : Double {
        
        //  最好先协商 get 方法, 不然容易在写的时候有问题,
        //  这个计算属性不存值, 所以不用想把值付给它或者从其取值, 否则死循环
        get {
            return width * 4
            //  这样会死循环
//            return girth
        }
//        set(newGirth) {
//            //  可以设置传入参数名, 默认是 newValue
//            width = newGirth / 4.0
//        }
        set {
            width = newValue / 4.0
            //  这样会死循环
//            girth = newValue
        }
    }
    
    //  类型属性: 用类来访问, 只能是计算属性, 而且里面不能有其他属性
    class var PI : Double {
        //  只有 get 方法的时候可以省略 get{}, 直接 return,
//        get {
            return 3.14
//        }
    }
    
    
    //  定义方法
    func areaWith(areaWidth areaWidth: Double, height: Double) -> Double {
        return areaWidth * height
    }
    
//    类方法
    class func areaIsBig(areaWidth areaWidth: Double, height: Double) -> Bool {
        return areaWidth * height > 100
    }
    
    class func classUse() -> Bool {
//        self.areaIsBig(areaWidth: 12, height: 12)
        let dd = areaIsBig(areaWidth: 12, height: 12)
        print(dd)
        return dd
    }
    
    func instanceUse() -> Double {
//        self.areaWith(areaWidth: 10, height: 10)
        let dd = areaWith(areaWidth: 10, height: 10)
        print(dd)
        return dd
    }
}

Square.PI

var sq = Square()
sq.width
sq.width = 40
sq.girth
sq.areaWith(areaWidth:12, height: 13)
Square.areaIsBig(areaWidth: 300, height: 2)
var f = Square.areaWith(sq) // .实例方法的话是返回这个函数类型
f(areaWidth: 12, height: 23)

//   测试调用 self
var ins = sq.instanceUse()
var cla = Square.classUse()





//##继承
//* 基类: 不继承某个类的类, 没有父类的话, 它就是一个基类
//* 单继承; class Dog : Animal     Dog 继承自 Animal 用冒号:

class Student: Person {
    //* 重写: 用自己的实现覆盖掉父类的同方法,, 需要写关键字 override, 在子类写方法, 如果父类有的话会有提示 override, 
    //  补充: 2.2没有了,...只提示方法, 回车出来才会自己出来 override, 提示中不显示
    override func run() {
        //* 子类方法不能和父类一样, 只能重写, 加上 override, 可以在重写时调用父类的方法, 保留父类做的事情
        super.run()
        
        print("Student ---- run")
    }
    
    
    //* 子类可以重写父类的: 方法 /  属性  /  下标脚本
    //* 无论是存储属性还是计算属性都可以重写, 而且必须要用 override 标识重写
    //* 重写属性都需要提供 get/set; willSet/didSet 来重写, 就是连重写存储属性时, 也不能赋初始值了, 要用 get/set. 差不多就是将存储属性重写成了计算属性, 里面可以拿到父类的存储属性或者是做什么改变, 其实其重写存储属性是间接调用父类属性来操作, 重写属性其实就是提供方法来操作父类的属性
    override var age : Int {
        get {
            return self.age
        }
        set {
            self.age = newValue
        }
    }
    
    override var height : Double {
        willSet {
            print( (height))
        }
        didSet {
            print( (height))
        }
    }
    
    override var sanwei : String {
        get {
            return "Stu's sanwei"
        }
        //* 属性监听器只能在存储属性里设置, 计算属性要监听直接在 set 里, 而且本来两个就不能共存
        //* 只能在父类上扩充功能, 不能减少父类的功能 --- 父类的只读属性可以改为读写属性(添加写 set 方法), 不能将读写属性改为只读属性(去掉了 set 方法)
        //* 子类重写父类属性: 为属性扩充些功能, 可以添加 set/get, 用计算属性访问父类属性, 可以添加 willset/didset, 值最终会赋值给父类属性
        //  error: cannot override mutable property with read-only property 'sanwei'
        set {
            "set Stu's sanwei\(newValue)"
        }
    }
    
    override var old : Int {
        get {
            return self.age
        }
        //  像这个父类里是只读的, 可以增加写, 也可以不增加, 反正不能减少
        set {
            age = newValue
        }
    }
    
    //* *
    //* final:
    //* 被 final修饰的  属性  /  方法  /  下标脚本, 都不能被子类重写
    final var stuNo : Int = 1001
    final func study() {
        print("Student studing")
    }
}

//* 被 final 修饰的类, 不能被继承, 修饰了 final 意味着最终,
class smallStu: Student {
//    override var stuNo: Int {   // error: var overrides a 'final' var
//        get {        }
//        set {        }
//    }
//    override func study() { //  error: instance method overrides a 'final' instance method
//    }
}

//
//#构造和析构: (构造, 解析构造)
//* 构造方法: 也是 init, Swift 的类中的属性都要有个初始值, 可以在定义属性的时候设置, 也可以在构造方法中设置,
class Animal {
    var age = 10
    var cure : String
    let life : Bool = true
    
    //* 在类的实例创建的时候就会调用构造方法, 这和 OC 一样, 但是和其他函数不同不用写返回值类型和 func 关键字
    init() {
        cure = "Black"
    }
    //* 构造方法可以设置参数, 用穿进来的这些参数初始化属性, 而且每个参数既是内参名又是外参数名
    //* 但是如果写了一个有参数的构造方法, 系统不会自动创建无参数构造方法
//    init(age:Int, cure:String) {
//        self.age = age
//        self.cure = cure
//    }
    
    deinit {
        print("Animal 被释放")
    }
}
var ani = Animal()
ani.age
ani.cure
//var ani2 = Animal(age: 12, cure: "黄色")
//ani2.age
//ani2.cure


//* 构造方法一样可以重写, 可以是默认的空参数,
class Cat : Animal {
    override init() {
        super.init()    // 这句不写的话会自动在这个域最后编译器自动加上
        
        self.age = 100
        self.cure = "花色"
        //* 变量在父类初始化后还可以在子类初始化, 也就是子类可以初始化父类的变量, 但是不能初始化父类的常量,因常量不能变了
//        self.life = true
    }
    //##构造方法类型:
    //* 类型有2, 指定构造方法 / 便利构造方法
    //* 默认情况下, 构造方法都是指定构造方法,
    //* 被 convenient 修饰的构造方法是便利构造方法
    convenience init(age:Int, cure: String) {
        //* 便利构造方法中必须调用同一个类中定义的其他构造方法
        self.init()
        self.age = age
        self.cure = cure
        
    }
    //* 默认情况下每个类有一个隐式的无参构造方法, 自己定义了有参数构造方法后, 系统就不会自动创建无参构造方法了
    class Raw {
        
    }
    var raw = Raw()
    //* 遍历构造方法必须最终以调用一个指定构造方法结束
    convenience init(age: Int) {
        self.init(age:12, cure:"蓝色")
    }
    //* 上面2句就是说, 便利构造只是假象, 指定构造才是真正的构造方法, 遍历构造只是为了遍历, 最终怎么掉, 都需要指定构造方法参加才行
    //* 这里指定构造方法不能调本类定义的其他指定构造方法, 只能调父类的, 所以这里只能是便利构造方法调用指定构造方法
//    init (cure:String) {self.init()}
    
    //* 如果父类中只有一个指定构造方法而且是无参的, 子类的指定构造方法默认会自动调用父类中的无参指定构造方法
    
    
    
    //##析构方法
    //* 在对象被释放的时候调用, 就像 dealloc, 对象在被释放之前, 会自动调用析构方法
    //* 析构方法不带任何参数, 不带小括号,  直接是 deinit { xxxxxxx }
    //* 不允许主动调用析构方法
    //    * 每个类最多只能有一个析构方法
    //    * 一个对象在被释放之前, 先调用自己的析构方法, 在一层层往上调用父类的析构方法.
    deinit {
        print("Cat 被释放")
        
        //  这里 Swift 使用的是 ARC, 会自动调用 super 的 deinit 方法
    }
    
}

var cat1 = Cat()
cat1.age
cat1.cure


var cat2 = Cat(age: 12)
cat2.cure
func go() {
    let cat3 = Cat(age: 30, cure: "彩色")
    cat3.age
    cat3.cure
}
print("------1")
go()
print("======2")
//
//
//
//
//#面向对象补充:
//* 属性监听器只能在存储属性里设置, 计算属性要监听直接在 set 里, 而且本来两个就不能共存
//* 只能在父类上扩充功能, 不能减少父类的功能 --- 父类的只读属性可以改为读写属性(添加写 set 方法), 不能将读写属性改为只读属性(去掉了 set 方法)
//* 子类重写父类属性: 为属性扩充些功能, 可以添加 set/get, 用计算属性访问父类属性, 可以添加 willset/didset, 值最终会赋值给父类属性
//
//




//#可选类型: ? !
//* 当一个值可能存在, 可能不存在的时候应该用可选类型, 如手机号码,  因为 Swift 类型安全, 属性在必须在使用钱进行初始化, 但有些时候某些属性就是不一定有值的, 一开始就给值这不符合现实
//* 可选类型格式: 类型名?  : 问号表明号码是可选的, 可能是 String, 可能不存在nil, 默认设置 nil 的话, 应该这么定义变量: var phone: String? = nil, 没有就默认 nil, 可以设置其他,.....
//var phone : String? = nil
//* 意味着在 Swift 里只有可选类型可以赋值 nil, 而且可选类型默认值就是 nil, =nil 可以不写
var phone: String?
phone = "12345"
print(phone)
var phone2: String?
print(phone2)

//* *
//##可可选类型的应用:
//* String -有个toInt 方法-, 现在2.x已经移除这方法, 用 Int(String)代替, 可以将字符串转成对应的 int 类型, 但有时候字符串是转不了数字的(如 askjfhafhs), 这时候就直接返回 nil, 而返回的类型就是 Int?, 整形的可选类型, 应用在返回值不确定有没有, 或某些变量是否会有值的情况
var numStr = "asjkfhajfafk"//"123456678"
var num1 = Int(numStr)
print(num1)
//* Int? 是一种 Int 可选类型, 不是 Int 类型, 两个是不一样的类型
//* 试试看可选类型能否存 nil 意外的其他值--不行
var numm: Int? = num1
//
//##可选类型的本质:
//* Int?其实是对 Int 的一层封装, 它们是两种不同的类型,
//* int?赋值是将 Int 类型的数据包装成了 Int 赋值过去, Int?内部有 Some 区域和 None 区域, 有值就存 Some 区域, 没有就 None区域,None 区域默认存了 nil
print("\(numm)")
//* 而且在 Swift 这个强类型语言中, nil 只能用于可选类型
//* 不能将可选类型赋值给非可选类型, 因为可选类型是对非可选类型进行更大的封装, 赋值时要拿 Some 还是 None 赋值不清楚, 不能直接.some 拿值, 用其他方法拿(强制解包, 取出 Some 值)
//* 相反, 非可选类型赋值到可选类型时会自动进行包装成可选类型再赋值
numm = 89
//
//###可选类型的其他使用:
//###强制解包: 在可选类型的值后面加感叹号!, 就能将可选类型(包装)的值取出来, 赋值给具体类型
var nn: Int = numm!
print("\(nn)")
//* *
//* 基本概念:
//* 解包: 将可选类型(包装)的值取出来
//* 强制解包: 用感叹号!将可选类型(包装)的值取出来
//* 强制解包时如果包里没有值, 是 nil, 会在运行时报错, 所以在强制解包时应该判断这个包有没有值
//* 可以用 if 语句判断可选类型的值存在否, if num, 返回值类型是 BOOL, 所以在强制解包之前先 if, 这比较严谨
//* var num = Int("123")(-"123".toInt()-) , if num {xxx} else {xxxx}, 这里得出的 num 也是可选类型, 之后使用里面的值要解包
//  注意: 现在2.2中需要判断了, 不能直接填入可选累心来判断, 最好用选择绑定好了
var numb = Int(numStr)
if numb != nil {
    var number = numb!
    print(number)
} else {
    print("\(numb)---var number = numb!  -----   fatal error: unexpectedly found nil while unwrapping an Optional value")
}
//*
//
//###选择绑定...选择绑定会自动解包
//* 作用: 用来确定一个可选类型(包装)的值是否存在 ? 存在: 把该值赋给一个临时变量/常量, 不存在: 不创建任何临时变量/常量
//* 概念: 将可选类型的值有选择的赋给临时常量/变量, 也叫选择绑定解包
//* 使用场合: if/while 语句, if let/var num = "123".toInt() {xxxxx} else {xxxxxx}, 这里的临时 num 是实际类型, 使用不用强制解包! 有值才赋值给 num, 没有就不赋值, 也就没有 num 临时常量/变量的存在
var nnnn = Int("123")
if let number = nnnn {
    let number2: Int = number
    print("\(number)")
} else {
//    number    //error: use of unresolved identifier 'number'
    print("这个 number 因 Int? = nil, 没有值, 所以没创建")
}
//
//
//###隐式解包
//* 默认情况下是非隐式解包, 需要用!强制解包
//* 如果将可选类型声明为隐式解包, 则不用在进行强制解包, 能够自动把包装里的值取出来赋值给具体类型
//* 声明格式: 将?改为!即可
//* 解包原理: 相当于告诉编译器,这个可选类型的值一直都存在, 绝对能取出里面的值,所以取值的时候不用加!, 编译器自己会加一个
//* 这样在一开始设置可选类型时设置隐式解包, 之后就不用每个地方都!, 比较方便, 但是还是要注意判断是否有值, 不然编译器自己加!取出来是 nil 一样会报错
//* 应用场合: 某些值在有些情况下一定存在, 就用这个, 不要乱用....
//* 比如某些一开始一定有值, 在以后可能没有值了在赋值 nil, 比如生命值, 呼吸量, 头发颜色(一开始有头发, 后来掉光了就没有值了)
var color: String! = "green"
var colStr = color
//fatal error: unexpectedly found nil while unwrapping an Optional value, 所以就算隐式解包, 也要判断一下, 如果一开始不一定有值用?, 一定会有值, 以后才可能没有的话用!
//print(colStr)
if let coo = colStr {
    let coll: String = colStr

    print( coo, "-----", coll)
} else {
//    let cooo = coo
//    print(coo)
}
//
//###可选类型的总结:
//* 强制解包, 定义时?, 解包时判断, 用!取值
//* 隐式解包, 定义时!,保证一开始有值, 取值时直接可取,不用!号
//
//



//
//#Swift 练习题
//* 技巧: 在 storyBoard拖图片时, 按 shift 键是等比例伸缩
//* Swift 中的很多函数和 OC 中的方法名差不多, 拖线连接也是, 而且拖线出来是可选类型,
//* Swift 中的闭包 -> OC中的block , 少了^, 也可以看成是函数, 即传递一个待调用的函数, 当函数执行完后会调用这个函数
//* Swift 中有很好的地方就是可以直接改结构体中的值, 之前 OC 还需要取出再赋值回去
//* 当配置了 OC 桥接文件后不需要了之后报错, 应该在 target -> targets -> BuildSettings搜对应名字的, 删掉
//* 闭包的特点: 所有东西都写在里面, 有参数的话, 在声明参数和类型后要写 in 在最后, 类型声明和函数差不多
//* {(声明参数类型) -> 返回值类型  in}(). 类似 block, 定义好后就可以直接调
//* UIView 动画中有个方法可以给动画加弹簧效果
//
//* 可选链, 枚举中的值本来不是 int, 但是可以继承自 int, int 是结构体, 就可以让枚举和结构体产生关系, 让枚举是 Int, 调用枚举用".",
//* 当传值时会类型推断, 如果知道是某个类型的话可以省略那个类型, 直接.xxx
//
//###枚举:
//* 和 OC 的枚举不同, 它也是种类型, 要想和 Int 有关需要继承自 Int, 里面就会由 Int 包装成枚举, 要拿出里面包装的 Int 值, 就要用.toRaw, 想从 Int 封装成这个枚举, 要用.fromRaw


