import os
inp = input("Enter the commit comment")

os.system("git pull")
os.system("git add .")
os.system("git commit -m \"updated\"")
os.system("git push")