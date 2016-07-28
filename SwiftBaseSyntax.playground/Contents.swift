//: Playground - noun: a place where people can play


import UIKit

var str = "Hello, playground"

print("奇怪, 怎么这个文件不能同步到 github 上, 应该说是同步到了, 但是在网页上没有看到, 后来多push几次看到了...又或者是 Safari 原因, 开太久了太卡, 缓存清空失败, 一直显示的是缓存??")

//*  常用数据类型(开头都大写): Int,Float,Double,Bool,Character,String,Array,Dictionary,元组类型Tuple,可选类型Optional

let int: Int = 20
let float: Float = 2.5
let double: Double = 2.5
var bool: Bool = true
let bool2: Bool = false
var char: Character = "A"
char = "h"
var string: String = "A"
string = "这是字符串, 只有一个字符的字符窜也是字符 Charactor"
var array: Array = [1, 2, 3]
array[0]
var arr = [2, 4, "hahhah", UILabel()]
let dic: Dictionary = ["name": "hsajf", "age": 10]
//var di = {1,2,3}
var dic2 = [1: "kasf", int: 30] // 可见字典key 可以是各种值
let tup = (1, 1.5, "哈哈哈", string, arr, dic)
var tu = (1, [1, 2.0, UIButton()])



//*  声明变量/常量数据类型: let/var xxx : 数据类型 = ???  一般不需要特别声明, 会根据第一次赋值来自动识别.定义时不赋值可以声明类型待用
let stat = 3
//stat = 5
var variable = 5
variable = 8
var tupl = ([1,2], (1,"hs"), [2:3, 3:5, 5:UIButton()])
var 随便 = "随便"
var dåd = "大多数任意符号,但是用特殊字符的话不会有补全"
var btn = UIButton()


//    *  swift 是类型安全的强类型的语言, 在变量使用之前必须进行初始化, 仅仅是定义的变量在使用的时候会报错
var sui: String
print(sui="jajaj") // 说明"="等号赋值表达式语句没有返回值


//*  整数中有有符号sign和无符号unsign, 然后又有Int8,Int16,Int32,Int64位的整型, 组合起来就有8种, 用 min 和 max 函数可以得到某类型的最大最小值
let i8: Int8 = 8;
let i16: Int16 = 16;
Int8.max
Int16.max
//let i = i8 + i16
let i = Int16(i8) + i16

//*  特殊的 Int 和 UInt: 其长度位数和当前系统平台一样 (**推荐使用这种类型, 会根据平台适应,免得在不同平台上 Int64会有不对的状况**)
//*  开发中不要计较 int 类型哪个更合适, swift 是强类型的语言,而且不会自动进行隐式的数据类型转换, 类型不一致不能进行运算操作, 需要强转低位到高位, 这就在后期会很麻烦, 所以统一使用一个类型就行 Int(*那就是不用写, 在赋值时会自动判断这个类型**)
let tle = 14
Int.max
UInt.max

var uu = 1.0

//*  存储范围: 强类型的语言, 如果常量或变量的赋值溢出会直接报错不予通过, 不像 C 只是警告和建议, Swift 直接不允许, 类型安全
var ma = Int.max
//var mm = ma + 1
var mm = ma &+ 1
Int.min

var u = UInt.max
var uuu = u &+ 1
var uuuu = UInt.min &- 1
UInt.max


//*  进制: 和其他语言一样, 二进制:0b, 8进制:0o, 十六进制:0x
var bi = 0b10001
var oc = 0o70
var ox = 0xff
//*  浮点数: 默认是 Double 64位, Float 32位, 精度不同, 声明类型需要:类型, 不能在赋值后面加 f, 不同浮点型一样不能计算
//let f = 1.0f
let f: Float = 3.0
let d = 3.0
let fd = Double(f) + d
fd

//*  浮点数可以用十进制和十六进制来表示, 十进制可以用指数形式 xxxex, 十六进制的话用0x前缀且一定要指数形式, xxxpx, p 是2的次方, e 是10的次方
var ex = 10e2
var px = 0x10p2
//var pxx = 2p2

//*  数字格式, 数字的表示可以增加额外的格式来增加可读性,可以增加额外的0或者下划线
var _ee = 000010
var e_e = 000_100_000
var ee_ = 00010_0000.0000

//*  类型转换: 类型(变量), 数值相加在赋值给变量是先相加再赋值的. 系统会根据计算后的类型来判断
var uo = 3 + 4.0
var ou = 3
var oou = 4.0
var uou = Double(ou) + oou

//*  类型别名: typealias,和 C 的 typedef 作用类似, 给类型其别名 typealias 新类型 = 原类型 --->  typedef 原类型 新类型,,原类型能用在什么地方, 新类型就能用在什么地方
typealias myInt = Int
typealias myDouble = Double
var ii: myInt = 4
var iii: myDouble = 2.9

//*  运算符: 除了一般的运算符外, 还有范围运算符: ..< | ... , 溢出运算符:&+,&-,&*,&/,&%
var andCMax = UInt.max
var andCMin = UInt.min
var and = andCMax &+ 1
var an = andCMin &- 1
var a = andCMax &* 2
//var andC = andCMax &/ 10
//var andcm = andCMax &% 10


//*  = 可以 n 对 n 赋值:let (x,y) = (1,2), 完成了对应位置的赋值, 其实是(括号里的是元组)
let (x, y) = (1, 2)
x
y



//    *  赋值运算符没有返回值, 即 a = 2;这个语句是没有返回值的, a 有值, 但是这条语句没有值, 在 C/OC 中, 这条语句返回 a 的值即赋值后的值
var aa = 2
"aa = 4直接没有返回值\(aa = 4), aa = \(aa)"

//*  取余运算符: %, 求余结果的正负和%左边的正负一样, swift 的还可以对浮点数取余:8 % 2.5 = 0.5
-8 / 4
8 / -4
-8 % 3
8 % -3
8 % 3.0
8 % 3.3

//*  BOOL: 取值是 false/ture, 不认整形类型, C 是非0即真,认整形类型.   且 if 的判断语句必须是 BOOL
//if 1 {print("不能是整型")}
if true {print("不能是整型")}
var ba = 5, ca = 10
if ba > ca { print("只能是 BOOL 表达式")}

//*  比较/逻辑运算符返回 BOOL 类型,  三目运算符的条件必须是 bool 类型
//  三木运算符的判断后赋值如果是字符串的话字符串不能是拼接的类型
let strrr = "ba\(ba) < ca\(ca)"
var thirdMu = ba < ca ? 100 : "ba < ca"

//*  *
//*  *范围运算符*:两种:闭合/半闭合, a...b : [a,b], a..<b : [a,b), 用在 for 循环中的条件
var ab = 15
for i in 1...5 {
    print("150line:\(i)")
    print(i)
}
for j in 1..<5 {
    j
}
//for (i, j) in (1...5, 1..<5) {
//    (i,j)
//} X  不行


//*  *
//*  *溢出运算符*:默认情况下, 赋予超出取值范围的值会报错, swift 为整型提供了5个&开头的溢出运算符, 能对超出取值范围的数值进行灵活处理, var x = UInt.max; let y = x + 1 == 0, 会把溢出的都不算, 直接算回起点, 物极必反, 下溢出&-也是会到最大值; 除零移除, 除以模以0都会得0, 不用溢出运算符的话会报错
UInt.min
UInt.max &+ 1
UInt.min &- 1
UInt.max
UInt.max &* 2
//UInt.min &% 0
//8 &/ 0











/**************************************************************/
//*  *
//*  *元组类型*: 由N 个任意类型的数据组成, (N>0), 这些数据可称为元素, 元组可以为空, 设置元素名的话是用:冒号
var tupp = (no: 1, name: "haha", doub: 4.0, cc: "A", btnn: UIButton(), void: (), arrr: [1,2,3], dii: ["name": "name", "age": 12, 4.0: 4])
//*  元组中的元素访问: 简直就是结构体和数组的杂交, 可以.元素, 也可以.下标索引
tupp.0
tupp.no
tupp.1
tupp.name
tupp.2
tupp.doub
tupp.3
tupp.cc
tupp.4
tupp.btnn
tupp.5
tupp.void
tupp.6
tupp.arrr
tupp.7
tupp.dii




//*  注意: 如果是用 let 来定义元素, 就要遵循 let 的限制, 那就是常量, 无法修改其中的元素
tupp.no = 10
tupp.no

let tuuu = (name: "o o ", age: 12)
let tuuu2 = (name: "1 1", age: 18)
//tuuu.age = 20   // 报错


//*  元组可以直接打印
print(tuuu)

print(tup)

//*  元组在定义时可以指定元素类型, 但是这样就不能在设置元素的时候设置元素名
var upp: (String, Int) = ("kk", 12)
var ppu: (String, Int) = (name: "dd", age: 19)
//  ********  注意: 在2.1后是可以不会报错, 但是调用的时候无效   *******
//ppu.name
//ppu.age




//*  可以使用多个变量接收元组数据, 相当于用元组来给多个变量赋值
let (name, age) = upp
name
age
let (mame, gae) = (12, 34)
mame
gae
//*  在取值/赋值的时候可以用下划线_来忽略某个元素的值, 取出其他元素的值: var (_, name) = (20, "jack"), 20赋值给_, 就被忽略了, _就是个空占位符, 忽略所有这位置的
var (wei, _) = ppu
var ni = (12, age: 122)





/**************************************************************/


//*  *
//*  流程控制
//*  循环/选择/switch 后面一定要有{}, 不然会报错
//if 12>13 print("2222222") 报错
if 12<13 {print("2222222")}

//*  和 C 不一样的关注点: for-in, switch
//*  for i in 1...4 {xxxxxx} 结合范围..., 分别将范围中的值赋值给 i, 赋值一次调用一次循环, 如果不需要使用变量 i, 可以用_代替
for i in 1..<5 {
    var j = i
}
for _ in 1...5 {
    print("********")
}
//*  switch 中没有 break, 条件可以是任何类型 执行完对应的 case 之后会默认自动退出 switch, C 则是没有 break 就接着执行下一个 case. 而且 Swift 中每个 case 都要有一个可执行的语句, 空语句是不行的\
var tt = "hhh"
switch tt {
case "hh":
    print("jsd")
case "hhh":
    print("hhh")
    
default:
    print("asaa")
    
}

for i in 1.stride(to: 9, by: 2) {
    print(i)
}
//*  多条件匹配: 那要进行几个条件都是执行一样的事情的时候, 不能像 C 那样用空语句, 就用这种方法,1个 case 后面跟多个匹配条件, 用逗号隔开
var score = 77
switch score/10 {
case 9, 10:
     print("优秀")
case 6, 7, 8:
    print("及格")
default:
    print("不及格")
}
//*  case 的范围匹配: case 后面可以拿个范围作为匹配条件, 如果判断条件在这个范围里, 就符合条件
switch score {
case 90...100 :
    " 优秀"
case 60..<90:
    "及格"
default:
    "不及格"
}

//*  注意: switch 要保证处理所有可能的情况, 如果没有条件符合判断条件的话, 会报错, 所以要有 default:, 来作为其他判断之外的条件
//switch score {
//case 90...100 :
//    " 优秀"
//case 60..<90:
//    "及格"
//
//}



//*  case 匹配元组: 判断条件可以是元组, case (元组) 元组对上了就是 case 对上了, 元组中依然使用于元组的规则, case(_, x) 忽略第一个元素, _几乎是空占位符的概念, 匹配任何, 忽略任何. 元组中可以有范围(-2...2, 1...5), 就限定了一个矩形
var point = (4, 7)
switch point {
case(_, 0):
    print("在 x 轴")
case(0, _):
    print("在 y轴")
case(0...10, 0...10):
    print("在0~10的矩形内")
default:
    print("不在矩形和坐标线上")
}


//*  case 的数值绑定: 在 case 匹配的同时, 没有限制条件的那个元素位置是定义一个变量/常量的话, 就会把那个对应的值赋值过去, e.g. case(let x, 0) 0就是限定的那个元素条件, 另外一个没有限定就是什么都不要紧, 而且会赋值给 x, 如果 case let (x, y) 就是匹配任何二元组了, 没有限定条件, 其他 case 没有符合条件到这里, 就会直接匹配并赋值到对应的 x,y. 也就满足了处理所有情况, 就不必有 default 了
point = (10, 7)
switch point {
case(_, 0):
    print("在 x 轴")
case(0, _):
    print("在 y轴")
case(let x, 8):
    x
case (4, let y):
    y
case let (x, y):
    x
    y
}
//*  case可以使用 where 来增加判断条件: case 就像一个事件, 所以不管是什么条件都可以, 匹配条件也可以是一个赋值判断:case let(x, y) where x == y: 无限制条件赋值后, 再用 where 来判断 xy 符合什么条件, 这个 case 才算是匹配了,where 可以看成"当"
var poi = (10, -10)
switch poi {
case let (x, y) where x == y:
    print("在正比线上")
case let (x, y) where x == -y:
    print("在反比线上")
default :
    print("在其他地方")
}


//*  fallthrough: 作用, 当执行完当前 case 后,会接着执行fallthrough 后面的case/default, 但是这后面的 case/default 不能定义变量/常量(就是 case let xxx 之类的), 不管 case 的条件, 直接穿透
poi = (10, 10)
switch poi {
case let (x, y) where x == y:
    print("在正比线上")
    fallthrough
case (0, 0) :
    print("在反比线上")
default :
    print("在其他地方")
}


//*  标签: 其中一个作用: 可以明确指定要退出哪个循环  waiXunHuan: for _ in 1...6 { neiXunHuan: for _ in 1...3 { break waiXunHuan}} 指定 break 哪个循环, 不指明的话默认是 break 当前循环
wai:
    for _ in 1...4 {
        print("wai")
        nei:
            for _ in 1...5 {
            print("内")
                break wai
        }
}


//*  *
//    *  函数
//    *  函数格式 : func 函数名(形参 list) -> 返回类型 { xxxx   ;   return xxx   }
func sum(num1 num1: Int, num2: Int) -> Int {
    return num1 + num2
}
sum(num1: 2, num2: 5)
func  min(to: Double, too: Double) -> Double {
    return max(to, too)
}
min(2, too: 9)  // 貌似, 这版本的 Swift 会自动将除了第一个参数后面的设置外部参数名, 而且不能#了



//*  没有返回值类型的话可以 -> Void, -> (), 或者不写-> xx 直接是 func haha(){xxx}
func dsh (on: Int, arr: [Int]) {
    for ar in arr.enumerate() {
        if on == ar.element {
            print(on)
        } else {
            print(arr[ar.index])
        }
    }
}
dsh(8, arr: [2,4,5,8])


//*  可以返回元组类型: -> (Int, Int) { return (3, 5)}

func reTupp () -> (String, Int) {
    return ("jack", 18)
}
reTupp()
//    *  返回元组类型的返回类型中可以给类型设置名字 func find(id: Int) -> (name: String, age: Int){ return ("hahha", 10)}
func reTup () -> (name: String, age: Int) {
    return ("jack", 18)
}
reTup().name
//*  外部参数名: 形参名在对函数内部可见, 可知道其参数的意义, 但是外部使用后不可见(使用时可见), 想要外部知道参数意义, 可以设置外部参数名 func haha(外参名 形参名: 类型), 在赋值时就会有外参名显示在要传的参数前. 类似 OC 定义方法中方法名每个参数前都会说下这参数是什么, 一旦定义了外参名, 在调用函数时*必须*加上外参名
//*  外参名简便写法: 一个形参写两个参数名太啰嗦, 可以用(#参数名: 类型), 这样参数名既是形参名, 又是外参名不用写两个意思一样的参数名 **现在不用写了, 默认除第一个外有外参名
func reTuppp (addStuWithName name: String, age: Int, no: Int) -> (name: String, age: Int) {
    return (name, age)
}
reTuppp(addStuWithName: "jaaaaa", age: 12, no: 90)
//*  默认参数值: 在设定函数形参的时候可以设定默认参数值, 调用时不传这个参数就会使用默认值. (age: Int = 20), -设有默认值的形参 swift 会自动给它添加一个和形参名一样的外参名, 等于是形参名前加了"#"-
func reTuu (addStuWithName name: String, age: Int = 20, no: Int = 001) -> (name: String, age: Int) {
    return (name, age)
}
reTuu(addStuWithName: "设有默认值参数的函数, 会有两个提示")
reTuu(addStuWithName: "有个没有默认值参数的函数选择输入", age: 12, no: 90)

//*  在其自动添加的外参名的位置用下划线_替代占位, 就会忽略掉那个位置的外参名, 这样就没有外参名了, 调用函数时就不用写外参名
func reTu (addStuWithName name: String, _ age: Int, no: Int) -> (name: String, age: Int) {
//    age = 20 默认是 let 常量
    return (name, age)
}
reTu(addStuWithName: "被下划线忽略了的 age 就没有外参名了", 12, no: 003)


//*  常量参数和变量参数: 默认情况下, 形参都是常量参数, 内部不可修改, 要修改的话, 在设置形参时要声明它是变量参数 var. 如 func hah(var age: Int){age = 29}, 不写就是默认 let, 函数中修改会报错
func removeStu (withName name: String, var age: Int, no: Int) -> (name: String, age: Int, no: Int) {
    age += 100
    print(name)
    return (name, age, no)
}
removeStu(withName: "kate", age: 12, no: 009)
//*  输入输出参数: inout. 有时候想象 C 一样办到可以传入一个地址, 函数内部通过指针修改传入的地址指向的外部变量的值, swift 没有指针的概念, 修改外面的变量需要设置 inout 形参, 传值时要&, 可以认为是函数这个体与外部的交流, 输入输出值.
var ino = 30;
func change (inout num: Int) -> Int {
     num += 100
    return num
}
change(&ino)
ino

//*  不用第三方变量来交换两个变量的值: 1,2,1 = +, -, -; OR 1,2,1 = ^,^,^
func swaps (inout num1 num1: Int, inout num2: Int) {
    num1 = num1 ^ num2
    num2 = num1 ^ num2
    num1 = num1 ^ num2
}
var anum = 20, bnum = 40
swaps(num1: &anum, num2: &bnum)
anum
bnum

//*  注意: 传入实参的时候必须要&, 不能传入常量(因为不可更改), inout 参数不能有默认值, 因为是改外面的变量形参设默认干嘛/ inout 参数不能是可变参数/ inout 参数不能在用 let var 修饰
//func te (inout u: Int = 4) {
//    u = 8
//}



//*  价值: 实现多返回值: 传入一个 inout, 函数中对这个 inout 赋值, 相当于外界拿到了函数中传出的值, 用元组也可以实现多返回值
func reMinMax (inout min: Int, inout max: Int, ary: [Int]) {
    for i in ary {
        min = min > i ? i : min
        max = max < i ? i : max
    }
}
var dMin = 10
var dMax = 20
var darr = [11, 13, 26, 30, 5]
reMinMax(&dMin, max: &dMax, ary: darr)
dMin
dMax



//*  *
//*  函数:
//*  函数类型和基本类型一样也作为一种类型, 由形参类型列表->返回值类型 组成: (Int, Int) -> Int   /     ()->()
var isfunc : (String, Int, Int)->(String, Int, Int) = removeStu
isfunc("isfunc", 10, 12)
var isSwap : (inout Int, inout Int)->() = swaps // 有 inout 型的话要在类型前加上 inout 类型
isSwap(&dMin, &dMax)
dMin
dMax


//*  利用函数类型定义变量: var haha: (Int,Int)->Int = sum;   func sum(num1: Int, num2: Int) -> Int { return num1+num2 } ;		haha(1,2) ---返回3, 用 haha 来调用了 sum 函数, 类似 C 中指向函数的指针. 由于 Swift 有类型推断机制, 直接:var haha = sum; 会自动推断出 haha 的类型
var isSwaps = swaps //  相对来说让系统自动判断类型要好点, 可以将参数裂变的外参数名也拿过来, 加(后按 esc 就会有提示
isSwaps(num1: &dMin, num2: &dMax)
dMin
dMax
//    *  和其他数据类型一样, 函数类型也能做其他参数类型能做的, e.g.函数作为参数, 传递给其他函数来使用, 让其他函数在内部调用这种类型的参数, 只要类型是一样的, 传不同的函数都可以
//*  函数作为返回值: 函数中设置返回值类型是函数类型, 函数中根据条件判断来返回一个这个类型的函数(这也说明在函数内部可以使用外面的函数,即使没有传进来)
func umax (inSwap: (inout Int, inout Int)->(), inout num1: Int, inout num2: Int) -> (String ,Int, Int)->(String ,Int, Int)
{
    inSwap(&num1, &num2)
    return removeStu
}

var isUmax = umax(swaps, num1: &dMin, num2: &dMax)
isUmax


//*  函数重载: 函数名相同, 函数类型不同, 就构成了函数重载
func umax () {
    print("重载了 umax")
}
umax()


//*  嵌套函数: 在某个函数中定义的函数; (全局函数:在全局作用域中定义的函数), 这样外界就不能调用这个函数, 相当私有化了, 但是内部定义的函数可以作为返回值返回给外面, 外面就能调用了, 这全在看函数中怎么决定
func infunc () -> (Int, Int)->Int {
    func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    let toOut = add
    return toOut
}

var outAdd = infunc()
var result = outAdd(3, 4)
result


//*  *
//*  断言
//*  断言是一种实时检测条件是否为真的方法assert(判断条件BOOL表达式: BOOL, 错误信息: String), true 的话就继续执行后面的,false 的话就直接终止程序,并抛出错误信息. 有些时候需要某些条件一定成立才允许程序执行下去的可以调用断言方法
var wi = 1
while(wi<3) {
    wi++
    print(wi)
//    assert(wi<3, "wi>3, wi = \(wi)")
}

//*  使用场景e.g.:检测数组索引(不能越界, 可以认为设定越界就报错, 自己设定错误信息) / 检测传递给函数的参数, 如果参数无效, 就结束并抛出错误信息
//*  Swift 是兼具脚本语言的特点, 所以断言语句可以用在如果不符合条件的时候, 就停在当前, 后面的语句都不执行了, 但是前面的语句的效果还是要有的, 还是会执行
var waiarr = [1,2,3,4,5]
for var i = 0; i<7; i++ {
//    assert(i<waiarr.count, "数组越界, i = \(i), array.cout = \(waiarr.count)")
//    waiarr[i]
}
//*  注意: 断言会导致程序的终止, 如果判断的条件是十分必要, 用断言可以保证其合理, 不然不要用断言, 在开发中使用可以让自己清楚的知道疏漏在哪, 为疏漏做好准备  /  断言可以保证错误在开发过程中及时发现, 但在发布时最好不要用, 所以断言的作用是面向开发的
waiarr



//*  可能之后要弄个自动机制, 开发时候用断言, 发布阶段就置空或其他, 像 YCLog 那样, 但是 Swift 没有宏, 可以将断言函数传递给自定义函数变量, 在不同的环境里有不同的调用方法, 或者这么说, 自定义函数, 在不同的环境里调用不同的方法或者是什么都不做
func ycassert(@autoclosure condition: () -> Bool, @autoclosure _ message: () -> String) {
    assert(condition, message)
}
//** 想要参数可以是表达式, 需要像系统写的那样来配置参数的类型
for var i = 0; i<7; i++ {
//        ycassert(i<waiarr.count, "数组越界, i = \(i), array.cout = \(waiarr.count)")
//        waiarr[i]
}

