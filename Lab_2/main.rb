require_relative 'Student.rb'
require_relative 'student_short'


def read_from_txt(file_path)
  raise ArgumentError, 'File not found' unless File.exist?(file_path)

  file = File.open(file_path){|file| file.read}
  JSON.parse(file).inject([]) do |list, student|
    list << Student.from_json_str(student.to_json)
  end
end

read_from_txt('student.txt').each do |st|
  puts st.get_info
end
