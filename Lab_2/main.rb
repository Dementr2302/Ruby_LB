require_relative 'Student.rb'
require_relative 'student_short'


def read_from_txt(file_path)
  raise ArgumentError, 'File not found' unless File.exist?(file_path)

  file = File.open(file_path){|file| file.read}
  JSON.parse(file).inject([]) do |list, student|
    list << Student.from_json_str(student.to_json)
  end
end

def write_to_txt(file_path, student_list)
  res = '['
  student_list.each do |st|

    res += st.to_json_str + ","
  end
  res = res.chop + "]"
  File.write(file_path, res)
end

st_list=read_from_txt('student.txt')
st_list.each do |st|
  puts st.get_info
end

write_to_txt('st.txt',st_list)
puts read_from_txt('st.txt')