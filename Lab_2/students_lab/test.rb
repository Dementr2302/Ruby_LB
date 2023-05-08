require_relative 'student_list_models/files_model/student_list_json'
require_relative 'student_list_models/files_model/student_list_txt'
require_relative 'student_list_models/files_model/student_list_yaml'
require_relative 'student_list_models/files_model/base_student_list'

list=[1,2,3]

a_js = BaseStudentList.new(StudentListJson.new)

a_js.read_file("./students_lab/test_data/student_list.json")
a_js.type_class=StudentListYaml.new
a_js.write_to_file("./students_lab/test_data/student_list_out.yaml")
