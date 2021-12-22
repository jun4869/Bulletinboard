names = ['Mr. Teacher', 'Antonio Banderas', 'Cynthia Erivo', 'Scarlett Johansson', 'Jonathan Pryce', 'Florence Pugh','Yalitza Johansson', 'Olivia Colman', 'Marina de Travira', 'Adam Driver', 'Sam Elliott', 'Lady Gaga', 'Richard E. Grant', 'Regina King']

names.each_with_index{|name, i|
  uid = sprintf "user%03d", i
  User.create(username:uid, fullname: name, password: '123456', role: ((i==0)? 'teacher' : 'student'))
}