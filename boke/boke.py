import pip
from subprocess import call
f= open("boke.txt")
for dist in f.readlines():
	#print(dist,end="")
	call("pip install " + dist +'',shell=True)
