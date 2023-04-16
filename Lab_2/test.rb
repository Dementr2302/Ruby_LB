require_relative 'student_list_txt'
require_relative 'student_list_json'
require_relative 'student_list_yaml'


# a = StudentListTxt.new()
# a.read_file("/Users/dmitrijbajramov/Desktop/Lab_2/Ruby_LB/Lab_2/student_list.txt")
# puts a.students

# puts a.get_k_n_student_short_list(1,2)
# a.write_to_file("/Users/dmitrijbajramov/Desktop/Lab_2/Ruby_LB/Lab_2/student_list.txt")
# a.sorted

list=[1,2,3]

# a = StudentListJson.new()
# a.read_file("/Users/dmitrijbajramov/Desktop/Lab_2/Ruby_LB/Lab_2/student_list.json")

a = StudentListYaml.new()
a.read_file("/Users/dmitrijbajramov/Desktop/Lab_2/Ruby_LB/Lab_2/student_list.yaml")
# puts a.students
# a.sorted_by_name
# a.write_to_file("/Users/dmitrijbajramov/Desktop/Lab_2/Ruby_LB/Lab_2/student_list_out.json")
a.write_to_file("/Users/dmitrijbajramov/Desktop/Lab_2/Ruby_LB/Lab_2/student_list_out.yaml")