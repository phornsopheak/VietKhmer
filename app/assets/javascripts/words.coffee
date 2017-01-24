autocomplete = ->
  bank_code = undefined

autocomplete = ->
  bank_code = undefined

$("#account_bank").autocomplete
  source: (request, response) ->
    $.ajax
      url: "/words"
      dataType: "json"
      data: name: request.term
      success: (data) ->
        response $.map(data, (item) ->
          {
            label: item.wordTest
            code: item.id
          }
        )
  minLength: 1

name = "Phorn Sopheak"
first_name = "Phorn"
last_name = "Sopheak"
console first.concat(last_name)
name1 = "Theary"
console.log name.indexOf('o')
console.log name.lastIndexOf('o')
console.log name.concat(name1)
console.log name.charCodeAt('P')
console.log "this is my fucntion #{name}"

student = {name: "Phorn Sopheak", age: 12, address: "Ha Noi"}
people =
  name: "Phorn Sopheak"
  age: 12
  address: "Ha Noi"
people_name = "People Name"

array_student = [
    name: "Mohammed"
    age: 24
    phone: 9848022338
  ,
    name: "Ram"
    age: 25
    phone: 9800000000
  ,
    name: "Ram"
    age: 25
    phone: 9800000000
]
console.log s for s in array_student
console.log key+"-"+value for key, value of people

console.log student

# console.log student for student in ['Sopheak', 'Panha', 'ABC']
# console.log key+"-"+value for key,value in {name: 'Sopheak', age: 23, phone: 12}

# my_function = ->
#   student = ['Ram', 'Mohammed', 'John']
#   names = (x for x in student)
#   console.log "The contents of the variable names are ::" + names
#   return x for x in student
# console.log "The value returned by the fucntions is " + my_function()

# array = ( num for num in [2, 4, 6, 8] by 2 )
# array = ( numb for num of ['dd', 'dd', 'ff'])
# console.log array

# add = (a,b) ->
#   a = 5
#   b = 6
#   c = a + b
#   console.log "The sum of this 2 number is " + c
# add 1,1

# my_default_fucntion = (a=12, b=12) ->
#   c = a + b
#   console.log c
# my_default_fucntion(1,2)
# my_default_fucntion(1)
# my_default_fucntion()
