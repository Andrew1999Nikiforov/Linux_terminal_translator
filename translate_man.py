from sys import argv
from googletrans import Translator

text = argv[1]

n = 4000

chunks = []

i = 0
while i < len(text):
    if i+n < len(text):
        chunks.append(text[i:i+n])
    else:
        chunks.append(text[i:len(text)])
    i += n

translator = Translator()
for i in chunks:
	result = translator.translate(i, src='en', dest='ru')
	print(result.text)

