
  class Mathsuite
    class << self

      def dz1(a, b)
        { summa: a+b, diff: a-b, multiply: a*b }
      end

      def dz2(x, y)
        { value: (x.abs -y.abs)/(1+(x*y).abs) }
      end

      def dz3(x)
        { volume: x**3,surface_area: x**2}
      end

      def dz4(x, y)
        { sr_arifmet: (x+y)/2, sr_geometr: Math.sqrt(x*y)}
      end

      def dz5(x, y)
        { sr_arifmet: (x+y)/2, sr_geometr: Math.sqrt(x.abs*y.abs)}
      end

      def dz6(x, y)
        { gipotenuza: Math.sqrt(x**2+y**2), square: (x.abs*y.abs)/2}
      end

      def dz7(v1, t1, v2, t2)
        { volume_M3: (v1+v2)/1000, temperature: (v1*1*t1+v2*1*t2)/(v1*1+v2*1) }
      end

      def dz8(n, r)
        { Perimetr: r*Math.tan(360/(2*n))*2*n}
      end

      def dz9(r1, r2, r3)
        { resistance: (r1*r2*r3)/(r2*r3+r1*r3+r1*r2)}
      end

      def dz10(h)
        { falling_time: Math.sqrt(2*h/9.8) }
      end

      def dz11(x, y, z)
        { a: (Math.sqrt((x-1).abs)-(y.abs)**1.0/3.0)/(1+x**2/2+y**2/4) , b: x*(Math.atan(z)+Math.exp(-x-3))}
      end

      def dz12(a)
        { triangel_square: a**2*Math.sqrt(3)/4}
      end

      def dz13(l)
        { Period_mayatnika: 2*Math::PI * Math.sqrt(l)/9.8}
      end

      def dz14(m1, m2, r)
        g = 6.7385/10**11
        if r.nonzero?
          f = g.to_f*m1*m2/r**2
        else
          f = 0
        end
      end

      def dz15(a, b)
        c = Math.sqrt(a**2-b**2)
        p = (a+b+c)/2
        r = Math.sqrt((p-a)*(p-b)*(p-c)/p)
        { katet2: c, radius: r}
      end

      def dz16(p)
        { square: p**2/(8*Math::PI)}
      end

      def dz17(r1,r2)
        { circle_square: Math::PI*(r2**2-r1**2)/2}
      end

      def dz18(a, b, c)
        a = 2*r* Math.sin(alpha*Math::PI/180)
        b = 2*r* Math.sin(beta*Math::PI/180)
        c = 2*r* Math.sin(gama*Math::PI/180)
        {a: a,b: b,c: c}
      end

      def dz19(v1, v2, a1, a2, s)
        t = ((-2*(v1+v2))+Math.sqrt(4*((v1+v2)**2)+8*(a1+a2)*s))/2*(a1+a2);
        { t: t}
      end

      def dz20(a, d, n)
        { summa: (2*a + d*(n-1))*n/2}
      end

      def dz33(x, y)
        a = [x,y]
        var_max = a.max()
        var_min = a.min()
        { max: var_max, min:var_min}
      end

      def dz34(x, y, z)
        a = [x,y,z]
        var_max = a.max()
        var_min = a.min()
        [{ max: var_max}, {min:var_min, max1: var_max}]
      end

      def dz35(x, y, z)
        a = [x+y+z,x*y*z]
        b = [x+y+z/2.0,x*y*z]
        var_max = a.max()
        var_min = b.min()**2+1
        { max: var_max, min:var_min }
      end

      def dz36(a, b, c)
        if a<b &&b<c
          {a_Less_b_Less_c: true}
        else
          {a_Less_b_Less_c: false}
        end
      end

      def dz37(a, b, c)
        if c<=b &&b<=a
          [a,b,c].each {|x| x*2}
        else
          [a,b,c].each {|x| x.abs}
        end
      end

      def dz38(x,y)
        if x>y
          z = x-y
        else
          z = y-x+1
        end
        { z: z}
      end

      def dz39(x, y)
        if x>y
          z =x
        else
          z = [x,y]
        end
        { z: z}
      end

      def dz40(x, y)
        x=0 if x <= y
        { result: [x, y] }
      end

      def dz41(x, y, z)
        { res: [x,y,z].select {|a| (a>1) && (a<3) }}
      end

      def dz42(x, y)
        if x == y
          return "must be x!=y"
        elsif x<y
          x_tmp = x
          x = (x+y)/2.0
          y = 2*x_tmp*y
        else
          y_tmp = y
          y = (x+y)/2.0
          x = 2*y_tmp*x
        end
        { res: [x, y]}
      end

      def dz43(x, y, z)
        { res: [x,y,z].each {|a| a = a**2 if a >= 0} }
      end

      def dz77(n)
        fact = n.downto(1).inject(:*)
        { n2: 2**n, fact: fact}
      end

      def dz196()
        ar = []
        x =10
        1.upto(50) do
          ar.push(x)
          x+=1
        end
        { arB: ar.each.map { |x| if x.odd?
                                   x=x*2
                                 else
                                   x = x
                                 end } }
      end

      def dz200(a, n)
        if !((1..n).to_a.include?(a))
          return 0
        else
          i = 0
          (1..n).to_a.each do |x|
            if x==a
              return i
            end
            i+=1
          end
        end
        { res: "no #{a} in sequence"}
      end

      def dz204(n)
        score = []
        1.upto(n) {|x| score.push (x+2) }
        score.sort!.shift
        score.pop
        { score: score.inject{ |sum, el| sum + el }.to_f/score.size }
      end

      def dz205(str)
        { res: str.chars.delete_if { |x| x=="0"||x=="5" }.join }
      end

      def dz224(n)
        { res: (1..n).select { |x| x = x if (n % x).zero?} }
      end

      def dz225(n)
        { res: (1..n).select { |x| (n % x**2).zero? && (n % x**3).nonzero?} }
      end

      def dz251(str)
        { res:str.chars.count("x")}
      end

      def dz258(str, char1)
        { res: str.chars.delete(char1) }
      end

      def dz259(str, char1)
        ar = str.chars.delete_if{|x| x== char1 }
        { res: ar.map { |x| x = x + x if x!=char1 } }
      end

      def dz330(n)
        res = []
        1.upto(n) do |x|
          ar = (1..x).select { |y| (n % y).zero? ? y = y : y = 0}
          if x.equal?(ar.sum())
            res.push(x)
          end
        end
        { res_perfect_num: res}
      end

      def dz331(num)
        res  = []
        1.upto(num) do |x|
          1.upto(num) do |y|
            1.upto(num) do |z|
              summa = (x**2) + (y**2) + (z**2)
              res.push([x,y,z]) if summa.equal?(num)
            end
          end
        end
        { res_num: res}
      end

      def dz332(num)
        res  = []
        1.upto(num) do |x|
          1.upto(num) do |y|
            1.upto(num) do |z|
              1.upto(num) do |t|
                summa = (x**2) + (y**2) + (z**2)+(t**2)
                res.push([x,y,z,t]) if summa.equal?(num)
              end
            end
          end
        end
      end

      def dz347(array)
        mmin = array.min
        mmax = array.max
        enumer = mmin..mmax
        { numbers: enumer.reject { |x| array.include?(x) } }
      end

      def dz434(aarr, barr)
        ares = aarr.map.with_index { |x, i| i > aarr.index(aarr.max)? x = 0.5 : x }
        bres = barr.map.with_index { |x, i| i > barr.index(barr.max)? x = 0.5 : x}
        { ares: ares, bres: bres}
      end

      def dz435(aarr, barr, k)
        aarr[aarr.index(aarr.max)] = k unless aarr.include?(k)
        barr[barr.index(barr.max)] = k unless barr.include?(k)
        { aarr: aarr, barr: barr}
      end

      def dz462(char1)
        if (('a'..'z').include?(char1)) || (('A'..'Z').include?(char1))
          { is_a_letter?: true }
        else
          { is_a_letter?: false }
        end
      end

      def dz468(str1, str2)
        flag = false
        str2.chars.each do |x|
          flag = str1.include?(x)
          return { sym: x, index: str1.chars.index(x)} if flag
        end
        -1 unless flag
      end

      def dz469(str1, width)
        delta = width - str1.size
        str1.chars.select { |char| char == " " ? (char << " ") : (char = char) }.join
      end
    end
  end
