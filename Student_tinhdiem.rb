class Student
  def initialize st_name, st_addres, diem_toan, diem_van, diem_hoa
    @st_name = st_name
    @st_addres = st_addres
    @diem_toan = diem_toan
    @diem_van = diem_van
    @diem_hoa = diem_hoa
  end

  def student_show
    tong = @diem_toan + @diem_van + @diem_hoa
    puts "Họ Tên \t\tAddress \tToán \tVăn \t Hóa \t Tổng điểm"
    puts "#{@st_name} \t #{@st_addres}  \t #{@diem_toan} \t #{@diem_van} \t#{@diem_hoa} \t #{tong}"
  end
end

Student.new("Le Van Huy","ha noi", 1,2,3).student_show
Student.new("Huy Van Le","VINH PHUC", 7,8,9).student_show

# -------------------------------------------------------------------------
#---------------------------------------------------------------------------

class Sinhvien 
  class << self
  
    def nhap
      print "Nhập tên sinh viên :"
      @ten = gets.chomp!
      print "Nhập địa chỉ :"
      @dc = gets.chomp!
      print "Điểm Toán :"
      @toan = gets.chomp!
      print "Điểm Văn :"
      @van = gets.chomp!
      print "Điểm Hóa :"
      @hoa = gets.chomp!
    end

    def hienthi
      tong = @toan.to_i + @van.to_i + @hoa.to_i
      puts "Ten \tToan \tVan \tHoa \tTong" 
      puts "#{@ten} \t#{@toan} \t#{@van} \t#{@hoa} \t#{tong}"
    end  

  end
end

Sinhvien.nhap
Sinhvien.hienthi
