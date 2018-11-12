load 'lib/mathsuite.rb'
require 'mathtestsuite'

class Spec
  include Mathtestsuite

  def dz1_t1
    expected_value = { summa: -5, diff: 1, multiply: 6 }
    assert(expected: expected_value, actual: Mathsuite.dz1(-2.0, -3.0))
  end

  def dz1_t2
    expected_value = { summa: 9, diff: 5, multiply: 10 }
    assert(expected: expected_value, actual: Mathsuite.dz1(-2.0, -3.0))
  end

  def dz2_t1
    expected_value = {value: 0}
    assert(expected: expected_value, actual: Mathsuite.dz2(-3.0, -3.0))
  end

  def dz3_t1
    expected_value = {volume: 10**3,surface_area: 10**2}
    assert(expected: expected_value, actual: Mathsuite.dz3(10))
  end

  def dz4_t1
    expected_value = {sr_arifmet: 15.0, sr_geometr: Math.sqrt(10.0*20.0)}
    assert(expected: expected_value, actual: Mathsuite.dz4(10, 20))
  end

  def dz5_t1
    expected_value = {sr_arifmet: 10.0, sr_geometr: 10.0}
    assert(expected: expected_value, actual: Mathsuite.dz5(10, 10))
  end

  def dz6_t1
    expected_value = {gipotenuza: 5, square: 6.0}
    assert(expected: expected_value, actual: Mathsuite.dz6(3.0, 4.0))
  end

  def dz7_t1
    expected_value = {volume_M3: 30/1000, temperature: (10*1*40+20*1*20)/(10*1+20*1) }
    assert(expected: expected_value, actual: Mathsuite.dz7(10.0, 40.0,20.0,20.0))
  end

  def dz8_t1
    expected_value = {Perimetr: 5*Math.tan(360/(2*8))*2*8}
    assert(expected: expected_value, actual: Mathsuite.dz8(8,5))
  end

  def dz9_t1
    expected_value = {resistance: (10*15*25)/(15*25+10*25+10*15)}
    assert(expected: expected_value, actual: Mathsuite.dz9(10,15,25))
  end

  def dz10_t1
    expected_value = {falling_time: Math.sqrt(2*100/9.8) }
    assert(expected: expected_value, actual: Mathsuite.dz10(100.0))
  end

  def dz11_t1
    expected_value = {a: (Math.sqrt((10-1).abs)-(12.abs)**1.0/3.0)/(1+10**2/2+12**2/4) , b: 10*(Math.atan(15)+Math.exp(-10-3))}
    assert(expected: expected_value, actual: Mathsuite.dz11(10,12,15))
  end

  def dz12_t1
    expected_value = {triangel_square: 10**2*Math.sqrt(3)/4}
    assert(expected: expected_value, actual: Mathsuite.dz12(10.0))
  end

  def dz13_t1
    expected_value = {Period_mayatnika: 2*Math::PI * Math.sqrt(20)/9.8}
    assert(expected: expected_value, actual: Mathsuite.dz13(20))
  end

  def dz14_t1
    g = 6.7385/10**11
    expected_value = {force_of_gravity: g*100*200/10**2}
    assert(expected: expected_value, actual: Mathsuite.dz14(100,200,10,g))
  end

  def dz15_t1
    gipotenuza = 5
    katet = 4
    katet2 = Math.sqrt(gipotenuza**2-katet**2)
    p = (gipotenuza+katet+katet2)/2
    r = Math.sqrt((p-gipotenuza)*(p-katet)*(p-katet2)/p)
    expected_value = {katet2: katet2, radius: r}
    assert(expected: expected_value, actual: Mathsuite.dz15(5,4))
  end

  def dz16_t1
    expected_value = {square: 100**2/(8*Math::PI)}
    assert(expected: expected_value, actual: Mathsuite.dz16(100.0))
  end

  def dz17_t1
    expected_value = {circle_square: Math::PI*(30**2-20**2)/2}
    assert(expected: expected_value, actual: Mathsuite.dz17(20,30))
  end

  def dz18_t1
    a = 2*5* Math.sin(60*Math::PI/180)
    b = 2*5* Math.sin(60*Math::PI/180)
    c = 2*5* Math.sin(60*Math::PI/180)
    expected_value = {a: a,b: b,c: c}
    assert(expected: expected_value, actual: Mathsuite.dz18(60,60,60,5))
  end

  def dz19_t1
    t = ((-2*(v1+v2))+Math.sqrt(4*((v1+v2)**2)+8*(a1+a2)*s))/2*(a1+a2);
    expected_value = {t: t}
    assert(expected: expected_value, actual: Mathsuite.dz19(50,60,10,5,1000))
  end

  def dz20_t1
    expected_value = {summa: (2*3 + 2*(20-1))*20/2}
    assert(expected: expected_value, actual: Mathsuite.dz20(3,2,20))
  end

  def dz33_t1
    expected_value = {max: 100, min:20}
    assert(expected: expected_value, actual: Mathsuite.dz33(20,100))
  end

  def dz34_t1
    expected_value = [{max: 30}, {min:10, max1: 30}]
    assert(expected: expected_value, actual: Mathsuite.dz34(10,20,30))
  end

  def dz35_t1
    x = 10
    y = 20
    z = 30
    a = [x+y+z,x*y*z]
    b = [x+y+z/2.0,x*y*z]
    var_max = a.max()
    var_min = b.min()**2+1
    expected_value = {max: var_max, min:var_min }
    assert(expected: expected_value, actual: Mathsuite.dz35(10,20,30))
  end

  def dz36_t1
    expected_value = {a_Less_b_Less_c: true}
    assert(expected: expected_value, actual: Mathsuite.dz36(10,20,30))
  end

  def dz37_t1
    expected_value = [900,400,100]
    assert(expected: expected_value, actual: Mathsuite.dz37(30,20,10))
  end

  def dz38_t1
    expected_value = {z: 30}
    assert(expected: expected_value, actual: Mathsuite.dz38(50,20))
  end

  def dz39_t1
    expected_value = {z: [50,100]}
    assert(expected: expected_value, actual: Mathsuite.dz39(50,100))
  end

  def dz40_t1
    expected_value = {result: [0,30]}
    assert(expected: expected_value, actual: Mathsuite.dz40(10,30))
  end

  def dz41_t1
    expected_value = {res: [2]}
    assert(expected: expected_value, actual: Mathsuite.dz41(1,2,3))
  end

  def dz42_t1
    expected_value = {res: [15,400]}
    assert(expected: expected_value, actual: Mathsuite.dz42(10,20))
  end

  def dz43_t1
    expected_value = {res: [4,9,25]}
    assert(expected: expected_value, actual: Mathsuite.dz43(2,3,5))
  end

  def dz77_t1
    expected_value = {n2: 32, fact: 120}
    assert(expected: expected_value, actual: Mathsuite.dz77(5))
  end

  def dz196_t1
    expected_value = {:arB=>[10, 22, 12, 26, 14, 30, 16, 34, 18, 38, 20, 42, 22, 46, 24, 50, 26, 54, 28, 58, 30, 62, 32,
                             66, 34, 70, 36, 74, 38, 78, 40, 82, 42, 86, 44, 90, 46, 94, 48, 98, 50, 102, 52, 106, 54,
                             110, 56, 114, 58, 118]}
    assert(expected: expected_value, actual: Mathsuite.dz196())
  end

  def dz200_t1
    expected_value = 9
    assert(expected: expected_value, actual: Mathsuite.dz200(10,20))
  end

  def dz204_t1
    expected_value = {:score=>12.5}
    assert(expected: expected_value, actual: Mathsuite.dz204(20))
  end

  def dz207_t1
    str = "59094715"
    expected_value = {res: "99471" }
    assert(expected: expected_value, actual: Mathsuite.dz207(str))
  end

  def dz224_t1
    expected_value = {:res=>[1, 3, 37, 111]}
    assert(expected: expected_value, actual: Mathsuite.dz224(111))
  end

  def dz225_t1
    expected_value = {:res=>[25]}
    assert(expected: expected_value, actual: Mathsuite.dz225(625))
  end

  def dz251_t1
    str = "xkgiuxytuxgxgjkhkx"
    expected_value = {:res=>5}
    assert(expected: expected_value, actual: Mathsuite.dz251(str))
  end

  def dz258_t1
    str = "qrabcdceyrejtabcdasryt"
    char1 = "abcd"
    expected_value = {:res=>"qreyrejtsryt"}
    assert(expected: expected_value, actual: Mathsuite.dz258(str,char1))
  end

  def dz259_t1
    str = "ge*t*s.*c*h**o*m*p"
    char1 = "*"
    expected_value = {:res=>"ggeettss..cchhoommpp"}
    assert(expected: expected_value, actual: Mathsuite.dz259(str,char1))
  end

  def dz330_t1
    expected_value = {:res_perfect_num=>[1]}
    assert(expected: expected_value, actual: Mathsuite.dz330(1000))
  end

  def dz331_t1
    expected_value = {:res_num=>[[2, 10, 14], [2, 14, 10], [10, 2, 14], [10, 10, 10], [10, 14, 2], [14, 2, 10], [14, 10, 2]]}
    assert(expected: expected_value, actual: Mathsuite.dz331(300))
  end

  def dz332_t1
    expected_value = {:res=>[[1, 1, 7, 7], [1, 3, 3, 9], [1, 3, 9, 3], [1, 5, 5, 7], [1, 5, 7, 5], [1, 7, 1, 7], [1, 7, 5, 5],
                             [1, 7, 7, 1], [1, 9, 3, 3], [2, 4, 4, 8], [2, 4, 8, 4], [2, 8, 4, 4], [3, 1, 3, 9], [3, 1, 9, 3],
                             [3, 3, 1, 9], [3, 3, 9, 1], [3, 9, 1, 3], [3, 9, 3, 1], [4, 2, 4, 8], [4, 2, 8, 4], [4, 4, 2, 8],
                             [4, 4, 8, 2], [4, 8, 2, 4], [4, 8, 4, 2], [5, 1, 5, 7], [5, 1, 7, 5], [5, 5, 1, 7], [5, 5, 5, 5],
                             [5, 5, 7, 1], [5, 7, 1, 5], [5, 7, 5, 1], [7, 1, 1, 7], [7, 1, 5, 5], [7, 1, 7, 1], [7, 5, 1, 5],
                             [7, 5, 5, 1], [7, 7, 1, 1], [8, 2, 4, 4], [8, 4, 2, 4], [8, 4, 4, 2], [9, 1, 3, 3], [9, 3, 1, 3],
                             [9, 3, 3, 1]]}
    assert(expected: expected_value, actual: Mathsuite.dz332(100))
  end

  def dz347_t1
    ar = [3,4,5,1,6,7,8,19]
    expected_value = {:numbers=>[2, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]}
    assert(expected: expected_value, actual: Mathsuite.dz347(ar))
  end

  def dz434_t1
    aarray = [3,4,5,21,6,7,8,19]
    barray = [31,4,5,1,6,7,8,19]
    expected_value = {:ares=>[3, 4, 5, 21, 0.5, 0.5, 0.5, 0.5], :bres=>[31, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]}
    assert(expected: expected_value, actual: Mathsuite.dz434(aarray,barray))
  end

  def dz435_t1
    aarray = [3,4,5,21,6,7,8,19]
    barray = [31,4,5,1,6,7,8,19]
    expected_value = {:aarr=>[3, 4, 5, 21, 6, 7, 8, 19], :barr=>[31, 4, 5, 1, 6, 7, 8, 19]}
    assert(expected: expected_value, actual: Mathsuite.dz435(aarray,barray,4))
  end

  def dz462_t1
    expected_value = {is_a_letter?: true }
    assert(expected: expected_value, actual: Mathsuite.dz462("g"))
  end

  def dz468_t1
    str1 = "Hello world!"
    str2 = "World hello"
    expected_value = {:sym=>"o", :index=>4}
    assert(expected: expected_value, actual: Mathsuite.dz468(str1,str2))
  end

  def dz469_t1
    str1 = "Hello world good morning!"
    expected_value = "Hello  world  good  morning!"
    assert(expected: expected_value, actual: Mathsuite.dz469(str1, 25))
  end
end