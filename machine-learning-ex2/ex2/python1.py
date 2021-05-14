#ans to q1:
def find_dup(a):
	dup = []
	for x in a:
		if a.count(x) > 1:
			dup.append(x)
	return set(x)		
#ans to q2:
ans = dict(zip(l1,l2)) #l1,l2 are list to be combined

#ans to q3:
a = input()
lc,wc,lec = 1,0,0
for x in a:
	if x == '\n':
		lc = lc + 1
a = a.split(" ")
wc = len(a)
for x in a:
	lec = lec + len(x)
#ans to q4:
def count_w(a):
	a = a.split()
	a = {x for x in a}
	a = list(a)
	ans = {x : a.count(x) for x in a}
	print(ans)
#ans to q5:
def rem_dup(a):
	for x in a:
		if a.count(x) > 1:
			a.remove(x)	
	return a		
#ans to q6:
s = input("Enter the string :")
w = input("word to be inserted:")
p = int(input("position to be inserted"))
s = s.split(" ")
s.insert(p,w)
s = " ".join(s)
#ans to q7:
l = []
while True:
	try:
		l.appened(input())
	exc	brea
ans = {x:len(x) for x in l}
print(ans)
#ans to q8:
s = input()
s = [x for x in s]	
temp = s[0]		
for x in s:
	if x == temp:
		s[s.index(x)] = temp
s[0] = temp
print("".join(s))
#ans to Q9:
s = input()
print({s:len(s)})
s = [x for x in s]
s1 = {x for x in s}
print({x:s.count(x) for x in s1})
#ans to Q10:
l = list(map(int,input("ENTER THE LIST").split(" ")))
n = int(input("ENTER THE ELEMENT TO SEARCH"))
for x in l:
	if x == n:
		print(f"ELEMENT {} FOUND AT POSITION {}".{n,l.index(x)})
		break




















