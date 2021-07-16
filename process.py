log_file = open("um-server-01.txt") 
#the log_file is the variable name, and the command open opens the file attached named um-server-01.txt. this also means that when we use log_file later, it will load the data inside um-server-01.txt. 

def sales_reports(log_file): #def is defining a function, the function is called sales_report, which is invoking log_file.
    for line in log_file:  #this is a for loop, where it means, for line (a variable), in log_file (which is the name of this python script stated at the beginning)
        line = line.rstrip() #line is equal to itself (line) but the rstrip any removes any trailing characters
        day = line[0:3] #day is equal to line array from 0 to 3
        if day == "Tue": #if day  is equal to the string 'Tue'
            print(line) #then print the variable line


sales_reports(log_file) #we are logging that sales_report is being reassigned to have the same information/values contained within log_file. 


#Change

log_file = open("um-server-01.txt") 

def sales_reports (log_file):
  for line in log_file: 
    line = line.rstrip()
    day = line[0:3]
    if day == "Mon":
      print(line)

sales_reports(log_file)


-#EXTRA CREDIT 

for line in log_file: 
  line = line.rstrip()
  num = line[0:3]
  if num > 10 :
    print(line)
   



