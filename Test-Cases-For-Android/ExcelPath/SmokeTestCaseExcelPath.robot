*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Library    ExcelLibrary


*** Variables ***
${Expected}         As Expected
${Not_Expected}     Not Expected
${pass}             Pass
${fail}             Fail

*** Keywords ***

Expected for 1
    write excel cell     12     4     ${Expected}   Sheet1
    write excel cell     12     5     ${pass}   Sheet1
Not Expected for 1
    write excel cell     12     4     ${Not_Expected}   Sheet1
    write excel cell     12     5     ${fail}   Sheet1

Expected for 2
    write excel cell     13     4     ${Expected}   Sheet1
    write excel cell     13     5     ${pass}   Sheet1
Not Expected for 2
    write excel cell     13     4     ${Not_Expected}   Sheet1
    write excel cell     13     5     ${fail}   Sheet1

Expected for 3
    write excel cell     14     4     ${Expected}   Sheet1
    write excel cell     14     5     ${pass}   Sheet1
Not Expected for 3
    write excel cell     14     4     ${Not_Expected}   Sheet1
    write excel cell     14     5     ${fail}   Sheet1

Expected for 4
    write excel cell     15     4     ${Expected}   Sheet1
    write excel cell     15     5     ${pass}   Sheet1
Not Expected for 4
    write excel cell     15     4     ${Not_Expected}   Sheet1
    write excel cell     15     5     ${fail}   Sheet1

Expected for 5
    write excel cell     16     4     ${Expected}   Sheet1
    write excel cell     16     5     ${pass}   Sheet1
Not Expected for 5
    write excel cell     16     4     ${Not_Expected}   Sheet1
    write excel cell     16     5     ${fail}   Sheet1

Expected for 6
    write excel cell     17     4     ${Expected}   Sheet1
    write excel cell     17     5     ${pass}   Sheet1
Not Expected for 6
    write excel cell     17     4     ${Not_Expected}   Sheet1
    write excel cell     17     5     ${fail}   Sheet1

Expected for 7
    write excel cell     18     4     ${Expected}   Sheet1
    write excel cell     18     5     ${pass}   Sheet1
Not Expected for 7
    write excel cell     18     4     ${Not_Expected}   Sheet1
    write excel cell     18     5     ${fail}   Sheet1

Expected for 8
    write excel cell     19     4     ${Expected}   Sheet1
    write excel cell     19     5     ${pass}   Sheet1
Not Expected for 8
    write excel cell     19     4     ${Not_Expected}   Sheet1
    write excel cell     19     5     ${fail}   Sheet1

Expected for 9
    write excel cell     20     4     ${Expected}   Sheet1
    write excel cell     20     5     ${pass}   Sheet1
Not Expected for 9
    write excel cell     20     4     ${Not_Expected}   Sheet1
    write excel cell     20     5     ${fail}   Sheet1

Expected for 10
    write excel cell     21     4     ${Expected}   Sheet1
    write excel cell     21     5     ${pass}   Sheet1
Not Expected for 10
    write excel cell     21     4     ${Not_Expected}   Sheet1
    write excel cell     21     5     ${fail}   Sheet1

Expected for 11
    write excel cell     22     4     ${Expected}   Sheet1
    write excel cell     22     5     ${pass}   Sheet1
Not Expected for 11
    write excel cell     22     4     ${Not_Expected}   Sheet1
    write excel cell     22     5     ${fail}   Sheet1

Expected for 12
    write excel cell     23     4     ${Expected}   Sheet1
    write excel cell     23     5     ${pass}   Sheet1
Not Expected for 12
    write excel cell     23     4     ${Not_Expected}   Sheet1
    write excel cell     23     5     ${fail}   Sheet1

Expected for 13
    write excel cell     24     4     ${Expected}   Sheet1
    write excel cell     24     5     ${pass}   Sheet1
Not Expected for 13
    write excel cell     24     4     ${Not_Expected}   Sheet1
    write excel cell     24     5     ${fail}   Sheet1

Expected for 14
    write excel cell     25     4     ${Expected}   Sheet1
    write excel cell     25     5     ${pass}   Sheet1
Not Expected for 14
    write excel cell     25     4     ${Not_Expected}   Sheet1
    write excel cell     25     5     ${fail}   Sheet1

Expected for 15
    write excel cell     26     4     ${Expected}   Sheet1
    write excel cell     26     5     ${pass}   Sheet1
Not Expected for 15
    write excel cell     26     4     ${Not_Expected}   Sheet1
    write excel cell     26     5     ${fail}   Sheet1

Expected for 16
    write excel cell     27     4     ${Expected}   Sheet1
    write excel cell     27     5     ${pass}   Sheet1
Not Expected for 16
    write excel cell     27     4     ${Not_Expected}   Sheet1
    write excel cell     27     5     ${fail}   Sheet1

Expected for 17
    write excel cell     28     4     ${Expected}   Sheet1
    write excel cell     28     5     ${pass}   Sheet1
Not Expected for 17
    write excel cell     28     4     ${Not_Expected}   Sheet1
    write excel cell     28     5     ${fail}   Sheet1

Expected for 18
    write excel cell     29     4     ${Expected}   Sheet1
    write excel cell     29     5     ${pass}   Sheet1
Not Expected for 18
    write excel cell     29     4     ${Not_Expected}   Sheet1
    write excel cell     29     5     ${fail}   Sheet1

Expected for 19
    write excel cell     30     4     ${Expected}   Sheet1
    write excel cell    30     5     ${pass}   Sheet1
Not Expected for 19
    write excel cell     30     4     ${Not_Expected}   Sheet1
    write excel cell     30     5     ${fail}   Sheet1

Expected for 20
    write excel cell     31     4     ${Expected}   Sheet1
    write excel cell     31     5     ${pass}   Sheet1
Not Expected for 20
    write excel cell     31     4     ${Not_Expected}   Sheet1
    write excel cell     31     5     ${fail}   Sheet1

Expected for 21
    write excel cell     32     4     ${Expected}   Sheet1
    write excel cell     32     5     ${pass}   Sheet1
Not Expected for 21
    write excel cell     32     4     ${Not_Expected}   Sheet1
    write excel cell     32     5     ${fail}   Sheet1

Expected for 22
    write excel cell     33     4     ${Expected}   Sheet1
    write excel cell     33     5     ${pass}   Sheet1
Not Expected for 22
    write excel cell     33     4     ${Not_Expected}   Sheet1
    write excel cell     33     5     ${fail}   Sheet1

Expected for 23
    write excel cell     34     4     ${Expected}   Sheet1
    write excel cell     34     5     ${pass}   Sheet1
Not Expected for 23
    write excel cell     34     4     ${Not_Expected}   Sheet1
    write excel cell     34     5     ${fail}   Sheet1

Expected for 24
    write excel cell     35     4     ${Expected}   Sheet1
    write excel cell     35     5     ${pass}   Sheet1
Not Expected for 24
    write excel cell     35     4     ${Not_Expected}   Sheet1
    write excel cell     35     5     ${fail}   Sheet1

Expected for 25
    write excel cell     36     4     ${Expected}   Sheet1
    write excel cell     36     5     ${pass}   Sheet1
Not Expected for 25
    write excel cell     36     4     ${Not_Expected}   Sheet1
    write excel cell     36     5     ${fail}   Sheet1

Expected for 26
    write excel cell     37     4     ${Expected}   Sheet1
    write excel cell     37     5     ${pass}   Sheet1
Not Expected for 26
    write excel cell     37     4     ${Not_Expected}   Sheet1
    write excel cell     37     5     ${fail}   Sheet1
    
Expected for 27
    write excel cell     38     4     ${Expected}   Sheet1
    write excel cell     38     5     ${pass}   Sheet1
Not Expected for 27
    write excel cell     38     4     ${Not_Expected}   Sheet1
    write excel cell     38     5     ${fail}   Sheet1

Expected for 28
    write excel cell     39     4     ${Expected}   Sheet1
    write excel cell     39     5     ${pass}   Sheet1
Not Expected for 28
    write excel cell     39     4     ${Not_Expected}   Sheet1
    write excel cell     39     5     ${fail}   Sheet1
    
Expected for 29
    write excel cell     40     4     ${Expected}   Sheet1
    write excel cell     40     5     ${pass}   Sheet1
Not Expected for 29
    write excel cell     40     4     ${Not_Expected}   Sheet1
    write excel cell     40     5     ${fail}   Sheet1
    
Expected for 30
    write excel cell     41     4     ${Expected}   Sheet1
    write excel cell     41     5     ${pass}   Sheet1
Not Expected for 30
    write excel cell     41     4     ${Not_Expected}   Sheet1
    write excel cell     41     5     ${fail}   Sheet1
    
Expected for 31
    write excel cell     42     4     ${Expected}   Sheet1
    write excel cell     42     5     ${pass}   Sheet1
Not Expected for 31
    write excel cell     42     4     ${Not_Expected}   Sheet1
    write excel cell     42     5     ${fail}   Sheet1
    
Expected for 32
    write excel cell     43     4     ${Expected}   Sheet1
    write excel cell     43     5     ${pass}   Sheet1
Not Expected for 32
    write excel cell     43     4     ${Not_Expected}   Sheet1
    write excel cell     43     5     ${fail}   Sheet1
    
Expected for 33
    write excel cell     44     4     ${Expected}   Sheet1
    write excel cell     44     5     ${pass}   Sheet1
Not Expected for 33
    write excel cell     44     4     ${Not_Expected}   Sheet1
    write excel cell     44     5     ${fail}   Sheet1
    
Expected for 34
    write excel cell     45     4     ${Expected}   Sheet1
    write excel cell     45     5     ${pass}   Sheet1
Not Expected for 34
    write excel cell     45     4     ${Not_Expected}   Sheet1
    write excel cell     45     5     ${fail}   Sheet1
    
Expected for 35
    write excel cell     46     4     ${Expected}   Sheet1
    write excel cell     46     5     ${pass}   Sheet1
Not Expected for 35
    write excel cell     46     4     ${Not_Expected}   Sheet1
    write excel cell     46     5     ${fail}   Sheet1
    
Expected for 36
    write excel cell     47     4     ${Expected}   Sheet1
    write excel cell     47     5     ${pass}   Sheet1
Not Expected for 36
    write excel cell     47     4     ${Not_Expected}   Sheet1
    write excel cell     47     5     ${fail}   Sheet1
    
Expected for 37
    write excel cell     48     4     ${Expected}   Sheet1
    write excel cell     48     5     ${pass}   Sheet1
Not Expected for 37
    write excel cell     48     4     ${Not_Expected}   Sheet1
    write excel cell     48     5     ${fail}   Sheet1
    
Expected for 38
    write excel cell     49     4     ${Expected}   Sheet1
    write excel cell     49     5     ${pass}   Sheet1
Not Expected for 38
    write excel cell     49     4     ${Not_Expected}   Sheet1
    write excel cell     49     5     ${fail}   Sheet1
    
Expected for 39
    write excel cell     50     4     ${Expected}   Sheet1
    write excel cell     50     5     ${pass}   Sheet1
Not Expected for 39
    write excel cell     50     4     ${Not_Expected}   Sheet1
    write excel cell     50     5     ${fail}   Sheet1

Expected for 40
    write excel cell     51     4     ${Expected}   Sheet1
    write excel cell     51     5     ${pass}   Sheet1
Not Expected for 40
    write excel cell     51     4     ${Not_Expected}   Sheet1
    write excel cell     51     5     ${fail}   Sheet1

Expected for 41
    write excel cell     52     4     ${Expected}   Sheet1
    write excel cell     52     5     ${pass}   Sheet1
Not Expected for 41
    write excel cell     52     4     ${Not_Expected}   Sheet1
    write excel cell     52     5     ${fail}   Sheet1

Expected for 42
    write excel cell     53     4     ${Expected}   Sheet1
    write excel cell     53     5     ${pass}   Sheet1
Not Expected for 42
    write excel cell     53     4     ${Not_Expected}   Sheet1
    write excel cell     53     5     ${fail}   Sheet1

Expected for 43
    write excel cell     54     4     ${Expected}   Sheet1
    write excel cell     54     5     ${pass}   Sheet1
Not Expected for 43
    write excel cell     54     4     ${Not_Expected}   Sheet1
    write excel cell     54     5     ${fail}   Sheet1

Expected for 44
    write excel cell     55     4     ${Expected}   Sheet1
    write excel cell     55     5     ${pass}   Sheet1
Not Expected for 44
    write excel cell     55     4     ${Not_Expected}   Sheet1
    write excel cell     55     5     ${fail}   Sheet1

Expected for 45
    write excel cell     56     4     ${Expected}   Sheet1
    write excel cell     56     5     ${pass}   Sheet1
Not Expected for 45
    write excel cell     56     4     ${Not_Expected}   Sheet1
    write excel cell     56     5     ${fail}   Sheet1

Expected for 46
    write excel cell     57     4     ${Expected}   Sheet1
    write excel cell     57     5     ${pass}   Sheet1
Not Expected for 46
    write excel cell     57     4     ${Not_Expected}   Sheet1
    write excel cell     57     5     ${fail}   Sheet1

Expected for 47
    write excel cell     58     4     ${Expected}   Sheet1
    write excel cell     58     5     ${pass}   Sheet1
Not Expected for 47
    write excel cell     58     4     ${Not_Expected}   Sheet1
    write excel cell     58     5     ${fail}   Sheet1

Expected for 48
    write excel cell     59     4     ${Expected}   Sheet1
    write excel cell     59     5     ${pass}   Sheet1
Not Expected for 48
    write excel cell     59     4     ${Not_Expected}   Sheet1
    write excel cell     59     5     ${fail}   Sheet1

Expected for 49
    write excel cell     60     4     ${Expected}   Sheet1
    write excel cell     60     5     ${pass}   Sheet1
Not Expected for 49
    write excel cell     60     4     ${Not_Expected}   Sheet1
    write excel cell     60     5     ${fail}   Sheet1

Expected for 50
    write excel cell     61     4     ${Expected}   Sheet1
    write excel cell     61     5     ${pass}   Sheet1
Not Expected for 50
    write excel cell     61     4     ${Not_Expected}   Sheet1
    write excel cell     61     5     ${fail}   Sheet1

Expected for 51
    write excel cell     62     4     ${Expected}   Sheet1
    write excel cell     62     5     ${pass}   Sheet1
Not Expected for 51
    write excel cell     62     4     ${Not_Expected}   Sheet1
    write excel cell     62     5     ${fail}   Sheet1

Expected for 52
    write excel cell     63     4     ${Expected}   Sheet1
    write excel cell     63     5     ${pass}   Sheet1
Not Expected for 52
    write excel cell     63     4     ${Not_Expected}   Sheet1
    write excel cell     63     5     ${fail}   Sheet1

Expected for 53
    write excel cell     64     4     ${Expected}   Sheet1
    write excel cell     64     5     ${pass}   Sheet1
Not Expected for 53
    write excel cell     64     4     ${Not_Expected}   Sheet1
    write excel cell     64     5     ${fail}   Sheet1

Expected for 54
    write excel cell     65     4     ${Expected}   Sheet1
    write excel cell     65     5     ${pass}   Sheet1
Not Expected for 54
    write excel cell     65     4     ${Not_Expected}   Sheet1
    write excel cell     65     5     ${fail}   Sheet1

Expected for 55
    write excel cell     66     4     ${Expected}   Sheet1
    write excel cell     66     5     ${pass}   Sheet1
Not Expected for 55
    write excel cell     66     4     ${Not_Expected}   Sheet1
    write excel cell     66     5     ${fail}   Sheet1

Expected for 56
    write excel cell     67     4     ${Expected}   Sheet1
    write excel cell     67     5     ${pass}   Sheet1
Not Expected for 56
    write excel cell     67     4     ${Not_Expected}   Sheet1
    write excel cell     67     5     ${fail}   Sheet1

Expected for 57
    write excel cell     68     4     ${Expected}   Sheet1
    write excel cell     68     5     ${pass}   Sheet1
Not Expected for 57
    write excel cell     68     4     ${Not_Expected}   Sheet1
    write excel cell     68     5     ${fail}   Sheet1

Expected for 58
    write excel cell     69     4     ${Expected}   Sheet1
    write excel cell     69     5     ${pass}   Sheet1
Not Expected for 58
    write excel cell     69     4     ${Not_Expected}   Sheet1
    write excel cell     69     5     ${fail}   Sheet1

Expected for 59
    write excel cell     70     4     ${Expected}   Sheet1
    write excel cell     70     5     ${pass}   Sheet1
Not Expected for 59
    write excel cell     70     4     ${Not_Expected}   Sheet1
    write excel cell     70     5     ${fail}   Sheet1

Expected for 60
    write excel cell     71     4     ${Expected}   Sheet1
    write excel cell     71     5     ${pass}   Sheet1
Not Expected for 60
    write excel cell     71     4     ${Not_Expected}   Sheet1
    write excel cell     71     5     ${fail}   Sheet1

Expected for 61
    write excel cell     72     4     ${Expected}   Sheet1
    write excel cell     72     5     ${pass}   Sheet1
Not Expected for 61
    write excel cell     72     4     ${Not_Expected}   Sheet1
    write excel cell     72     5     ${fail}   Sheet1

Expected for 62
    write excel cell     73     4     ${Expected}   Sheet1
    write excel cell     73     5     ${pass}   Sheet1
Not Expected for 62
    write excel cell     73     4     ${Not_Expected}   Sheet1
    write excel cell     73     5     ${fail}   Sheet1

Expected for 63
    write excel cell     74     4     ${Expected}   Sheet1
    write excel cell     74     5     ${pass}   Sheet1
Not Expected for 63
    write excel cell     74     4     ${Not_Expected}   Sheet1
    write excel cell     74     5     ${fail}   Sheet1

Expected for 64
    write excel cell     75     4     ${Expected}   Sheet1
    write excel cell     75     5     ${pass}   Sheet1
Not Expected for 64
    write excel cell     75     4     ${Not_Expected}   Sheet1
    write excel cell     75     5     ${fail}   Sheet1

Expected for 65
    write excel cell     76     4     ${Expected}   Sheet1
    write excel cell     76     5     ${pass}   Sheet1
Not Expected for 65
    write excel cell     76     4     ${Not_Expected}   Sheet1
    write excel cell     76     5     ${fail}   Sheet1