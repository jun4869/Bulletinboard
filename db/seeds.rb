names = ['Mr. Teacher', 'Antonio Banderas', 'Cynthia Erivo', 'Scarlett Johansson', 'Jonathan Pryce', 'Florence Pugh']

names.each_with_index{|name, i|
  uid = sprintf "user%03d", i
  User.create(username:uid, fullname: name, password: '123456', role: ((i==0)? 'teacher' : 'student'))
  Visit.create(user_id: 1, visitee: i)
}