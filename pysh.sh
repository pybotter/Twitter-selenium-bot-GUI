#!/usr/bin/python3


#TRY to import libraries.


try:
    import tkinter as tk
except:
    print("PLEASE INSTALL -> python3-tk <- package")

try:
    from time import sleep
except:
    print("TIME ISN'T INSTALLED! (COMMAND: from time import sleep, line 12)")

try:
    from selenium import webdriver
    from selenium.webdriver.common.keys import Keys
except:
    print("(!) LOOKS LIKE YOU HAVEN'T INSTALLED SELENIUM WEBDRIVER. Please install it with pip3. (-> (sudo) pip3 install selenium <-)")

try:
    import random
except:
    print("(!) IT LOOKS LIKE WE HAVE PROBLEMS IMPORTING LIBRARY NAMED random. Please install it!")

#TRY TO OPEN GUI

erreason = "ERROR IN SHOWING ERROR!"

emailname = 0
passwordname = 0

doyouaccounttag = "true"

doyouhashtag = "true"

tweetbyacc = 0
valuez = "2"
value1 = "1"

hvalue = "2"
hvalue1 = "1"

hashpath = ""

def checkbox():
    global valuez
    global value1
    if value1 == "1":
        value1 = "2"
    else:
        value1 = "1"

    if value1 == "2":
        valuez = "1"
    else:
        valuez = "2"
    #print("VALUE1 IS", value1)
    #print("VALUEZ IS", valuez)

def hgbox():
    #print("HGBOX")
    global hvalue
    global hvalue1
    if hvalue == "2":
        hvalue = "1"
        hvalue1 = "1"
    else:
        hvalue1 = "2"
        hvalue = "2"
    
    #print(hvalue1)



def errornot():
    ern = tk.Tk()
    ern.title("SOMETHING HAPPENED!")
    ern1 = tk.Label(ern, text="OOPS! SOMETHING WENT WRONG!")
    ernbtn = tk.Button(ern, text="Close", command=ern.destroy)
    ern1.pack()
    ernbtn.pack()
    ern.mainloop



from selenium.webdriver import FirefoxOptions

    
def getit():
    global doyouaccounttag
    global doyouhashtag
    global emailname
    global passwordname
    global hashpath

    passwordname = 0
    emailname = s.get()
    passwordname = pwdentry.get()
    hashpath = htgentry.get()
    print(hashpath)
    if value1 == "2":
        doyouaccounttag = "true"
    else:
        doyouaccounttag = "false"
    if hvalue == "1":
        doyouhashtag = "true"
    else:
        doyouhashtag = "false"
    try:
        window.destroy()
    except:
        print("Can't close the window!")
        


    #print("accsel: "+doyouaccounttag)
    #print("hashtagsel: "+doyouhashtag)
    #print(emailname)
    #print(passwordname)




try:
    try:
        window = tk.Tk()
        pass
    except:
        print("Can't open window! Please make sure you have the newest tkinter installed and you are using graphical system.")
    window.geometry("500x600")
    window.title("TWTBOT 2.0 GUI CONFIGURATION")
    showhelp = tk.Label(window, text="Welcome to GUI twtbot 2.0!")

    s = tk.Entry(window)
    pwdentry = tk.Entry(window)
    value = 2
    check1 = tk.Checkbutton(window, text="Retweet & find tweets by account name?", onvalue=1, offvalue=2, command=checkbox)
    accname = tk.Entry(window, width="50")
    showhelp.pack()
    htgentry = tk.Entry(window, width="50")



    s.pack()
    s.insert(tk.END, "USERNAME and EMAIL")

    pwdentry.pack()
    pwdentry.insert(tk.END, "Password")

    check1.pack()

    accname.pack()
    accname.insert(tk.END, "Account name location (example: C:/Pete/Documents/e.txt)")

    hgentryon = tk.Checkbutton(window, text="Retweet & find tweets by hashtag?", onvalue=1, offvalue=2, command=hgbox)
    hgentryon.pack()

    startbtn = tk.Button(window, command=getit, text="Start")



    htgentry.pack()
    htgentry.insert(tk.END, "Hashtags location (ex: C:/Pete/Documents/j.txt)")

    startbtn.pack()

    window.mainloop()

    
    


except:
    print("(!) SOMETHING WENT WRONG! CONTINUING...")
    pass

#print("CONTINUING...")


#SELENIUM CODE STARTS HERE!

try:
    from time import sleep
except:
    print("(!) CANT IMPORT TIME FROM SLEEP!")

try:
    from selenium import webdriver
    pass
except:
    print("CAN'T IMPORT SELENIUM (WEBDRIVER)! Please make sure you have installed selenium (sudo pip3 install selenium)")



driver = webdriver.Firefox()


    
try:
    driver.get("https://twitter.com/login")


    sleep(5)
    usrbox = driver.find_element_by_name("session[username_or_email]")
    usrbox.send_keys(emailname)
    pswdbox = driver.find_element_by_name("session[password]")
    pswdbox.send_keys(passwordname)
    pswdbox.send_keys(Keys.ENTER)
    sleep(5)
    pass
except:
    errornot()

try:
    htgurl = "#"+htgentry
except:
    pass

try:
    sleep(5)
    if doyouhashtag == "true":
        try:
            
            varsti = []
            with open(hashpath, 'r') as inputfile:
                for line in inputfile:
                    varsti = line.rstrip('\n').split(', ')
                    hashkeys = varsti
    

        except:
            print("It looks like we have problems with importing HASHPATH .txt files. Please stop this program, and configure it.")

        for line in inputfile:

            srchtg = driver.find_element_by_css_selector('[data-testid="SearchBox_Search_Input"]')

            sleep(2)

            srchtg.send_keys(random.choice(varsti))

            srchtg.send_keys(Keys.RETURN)

            sleep(3)
            try:
        
                rtwtbtn = driver.find_element_by_css_selector('[data-testid="retweet"]')
                sleep(1)
                rtwtbtn.click()

                sleep(3)

                rtwtnow = driver.find_element_by_css_selector('[data-testid="tweetButton"]')

                rtwtnow.click()
            except:
                print("CAN'T FIND ANY RETWEETABLE TWEETS!")
                pass


        

        


        
        
    else:
        
        pass

    if doyouaccounttag == "true":
        print("DOUACCOUNTTAG = TRUE")
    else:
        print("DOYOUACCOUNTTAG FALSE!")
            


            
                
                


except:
    errornot()