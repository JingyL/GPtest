"""
2. There	is	a	paragraph	of	text.
“one	 two	 two	 three	go	go	go	big	small	big	how	sample	 test	 text	 to	do	it	default
returns	string	string	is	is	in	seconds	since	what	is	the	end	end”
Please	write	some	code	 (any	language	is	ok,	but	prefer	PHP)	 to	 find	out	all	 the
words	which	appear	more	than	once	in	sequence.	The	result	of	the	above	sample
text	should	be:	two	two,	go	go	go,	string	string,	is	is,	end	end
"""


def findAllWord(str):
  wordList = str.split()
  res = []
  stack = []

  for i in range(len(wordList)):
    if not stack:
        stack = [wordList[i]]
    elif stack[-1] != wordList[i]:
        if len(stack) > 1:
              stack[-1] += ","
              res += stack
        stack = [wordList[i]]
    else:
        stack.append(wordList[i])

  if stack:
       res += stack
  return " ".join(res)