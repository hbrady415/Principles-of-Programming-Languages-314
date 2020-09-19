import os
import matplotlib
import numpy
import sys
import scipy
import string
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
from collections import Counter

def main():
	listWords = list()
	listVals=list()
	bigWords=list()
	rootdir = os.getcwd()
	for subdir, dirs, files in os.walk(rootdir):
		for dir in dirs:
			holdpath = rootdir+ os.sep+dir + os.sep+file
			#print holdpath
			print file
			#holdpath=holdpath+file
			if holdpath.endswith(".txt"):
				with open(filepath, "r") as word_list:	
					words = word_list.read().split()
					print words
					bigWords.append(words)
        	for word in bigWords:
			word = word.decode('utf-8')
			if word.endswith(","):
				word = word.replace(",", "")
			if word.endswith("."):
				word = word.replace(".", "")
			if word.endswith(";"):
				word = word.replace(";", "")
			if word.endswith(":"):
				word = word.replace(":", "")
			for ch in word:
				if ch == '[':
					word = word.replace('[', '')
				if ch == ']':
					word = word.replace(']', '')
				if ch == '(':
					 word = word.replace('(', '')
				if ch == ')':
					word = word.replace(')', '')
			if ch in string.digits:
				continue
			else:
				listWords.append(word)
		#print(listWords)
		counts = Counter(listWords)
		#print counts
		#return;
        	labels, values = zip(*counts.items())
		#labels=counts.getkeys()
		#print(values)
		total=sum(values)
		print total
		labels = np.array(labels)
		values = np.array(values)
		for value in values:
			val=float(value)/float(total)
			listVals.append(val)
		#print labels
		#print type(values)
		print listVals
		newName = filepath.replace(".txt", "_hist.png")
		print newName
		y_pos=np.arange(len(labels))
		plt.barh(y_pos, listVals)
		plt.yticks(y_pos, labels)
		title="Examine.py results with file: "+file
		plt.title(title)
		plt.ylabel('Word')
		plt.xlabel('Number of Occurences')
		plt.savefig(newName, bbox_inches='tight')
		labels[:]=[]
		values[:]=[]
		bigWords[:]=[]
		listVals[:] = []
		listWords[:] = []
		plt.close()
		word_list.close()

main()	
