
.model small

.stack 100h

.data
project db 10,13, "This project is created by ADIBA ZAMAN CHOWDHURY$"


input_name  db 10,13, 'Please Enter Your Name:$'  ;must be 9 character
name db '$' 

input_password db 10,13, 'Please Enter Your Password:$';must be 9 character
password db 'Adiba3924$'

incorrect_password db 10,13, 'Incorrect Password$' 




welcome db 10,13,10,13,    '*** WELCOME TO OUR ROOFTOP PLANTS NURSERY ***$'

msg0 db 10,13,10,13,       '******************************************** $'
msg1 db 10,13,10,13,       '***          Choose a Option              ***$'
msg2 db 10,13,10,13,       '***       What Do You Want To Buy         ***$'
msg_plants db 10,13,       '***       Press 1 to buy plants           ***$'
Plant_sold db 10,13,       '***  Press 2 to see plants statistics     ***$'
amount_print db 10,13,     '***  Press 3 to show amount earned today  ***$'
exit_program db 10,13,     '***         Press 4 to exit               ***$'
msg3 db 10,13,10,13,       '******************************************** $'

input_again db 10,13, 'Please Press one of the above given keys$'

wrong_input db 10,13, 'Wrong Input please again$' 


opt1 db 10,13, '1. Brobe kamini plants           - 4 dollar$'
opt2 db 10,13, '2. Morning Glory Plants          - 2 dollar$'
opt3 db 10,13, '3. Adenium mini plants           - 3 dollar$'
opt4 db 10,13, '4. Allamanda flower plant        - 3 dollar$'
opt5 db 10,13, '5. Bagan Bilash                  - 2 dollar$'
opt6 db 10,13, '6. Belly flower plant            - 3 dollar$'
opt7 db 10,13, '7. Blue Aparajita Flower plant   - 2 dollar$'
opt8 db 10,13, '8. Star cactus plant             - 3 dollar$'
opt9 db 10,13, '9. rose plant                    - 3 dollar$'


newLine db 10,13, '$'


msg_Brobekamini  db 10,13,10,13,      'How many Brobe kamini plants do you want to buy$';(you cannot buy at a time not more than 2 plants)
msg_MorningGlory db 10,13,10,13,     'How many Morning Glory Plants do you want to buy $';(you cannot buy at a time not more than 4 plants)
msg_Adenium db 10,13,10,13,          'How many Adenium mini plants do you want to buy$';(you cannot buy at a time not more than 3 plants)
msg_Allamanda db 10,13,10,13,        'How many Allamanda flower plant do you want to buy $';(you cannot buy at a time not more than 3 plants)
msg_BaganBilash db 10,13,10,13,      'How many Bagan Bilash do you want to buy$';(you cannot buy at a time not more than 4 plants)
msg_Belly  db 10,13,10,13,           'How many Belly flower plant do you want to buy$';(you cannot buy at a time not more than 3 plants)
msg_BlueAparajita db 10,13,10,13,    'How many Blue Aparajita Flower plant do you want to buy$' ;(you cannot buy at a time not more than 4 plants)
msg_Starcactus db 10,13,10,13,       'How many Star cactus plant do you want to buy$';(you cannot buy at a time not more than 3 plants)
msg_rose db 10,13,10,13,             'How many rose plant do you want to buy$';(you cannot buy at a time not more than 3 plants)


total_msg dw 10,13, 'Total amount= $'


price_Brobekamini         dw 4
price_MorningGlory        dw 2
price_Adenium             dw 3
price_Allamanda           dw 3
price_BaganBilash         dw 2
price_Belly               dw 3
price_BlueAparajita       dw 2
price_Starcactus          dw 3
price_rose                dw 3


input_employname db 10,13,'Please Enter Your Name:$'  ;must be 9 character
name1 db '$' 

input_employpassword db 10,13, 'Please Enter Your Password:$'    ;must be 9 character
password1 db 'adieshfar$'

incorrect_password1 db 10,13, 'Incorrect Password$'
amount_earned db 10,13,10,13, 'Amount earned=  $'
amount db 0

Brobekamini_sold         db 0
MorningGlory_sold        db 0
Adenium_sold             db 0
Allamanda_sold           db 0
BaganBilash_sold         db 0
Belly_sold               db 0
BlueAparajita_sold       db 0
Starcactus_sold          db 0
rose_sold                db 0
 
 Plants_sold db 10,13, '***  Press 2 to see plants statistics     ***$' 
 
Brobekamini_print db 10,13,        'Brobe kamini plants sold         = $'
MorningGlory_print db 10,13,       'Morning Glory Plants sold        = $'
Adenium_print db 10,13,            'Adenium mini plants sold         = $'
Allamanda_print db 10,13,          'Allamanda flower plant sold      = $'
BaganBilash_print db 10,13,        'Bagan Bilash sold                = $'
Belly_print db 10,13,              'Belly flower plant sold          = $'
BlueAparajita_print db 10,13,      'Blue Aparajita Flower plant sold = $'
Starcactus_print db 10,13,         'Star cactus plant sold           = $'
rose_print db 10,13,               'rose plant sold                  = $'


.code

main proc


mov ax,@data
mov ds,ax 

mov dx,offset project
mov ah,9
int 21h   

mov dx,offset newLine
mov ah,9
int 21h  


mov dx,offset input_Name
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov cx,9

ll2:
mov ah,1
int 21h
cmp al,[bx]
inc bx
loop ll2


mov dx,offset input_password
mov ah,9
int 21h 

mov dx,offset newLine
mov ah,9
int 21h

mov bx,offset password
mov cx,9

l1:
mov ah,1
int 21h
cmp al,[bx] 

jne incorrect
inc bx
loop l1



start:
mov dx,offset newLine
mov ah,9
int 21h  

call menu

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

cmp al,'1'
je menu2
cmp al,'2'
je Plants_stats
cmp al,'3'
je employ
cmp al,'4'
je exit
   
   
mov dx,offset wrong_input
mov ah,9
int 21h  


mov dx,offset input_again
mov ah,9
int 21h  


jmp start
  
  


Brobekamini:

mov dx,offset msg_Brobekamini 
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add Brobekamini_sold,al
mul price_Brobekamini 
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h

mov dx,offset total_msg
mov ah,9
int 21h   

mov dl,cl
add dl,48
mov ah,2
int 21h

  
jmp start  
  
MorningGlory:

mov dx,offset msg_MorningGlory
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add MorningGlory_sold,al
mul price_MorningGlory
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h

mov dx,offset total_msg
mov ah,9
int 21h   

mov dl,cl
add dl,48
mov ah,2
int 21h


Jmp start
 
 
 
 
 

Adenium:

mov dx,offset msg_Adenium
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add Adenium_sold,al
mul price_Adenium 
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h  

mov dx,offset total_msg
mov ah,9
int 21h  

mov dl,cl
add dl,48
mov ah,2
int 21h

jmp start
      
      
      
      
Allamanda:

mov dx,offset msg_Allamanda 
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add Allamanda_sold,al
mul price_Allamanda  
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h 

mov dx,offset total_msg
mov ah,9
int 21h 

mov dl,cl
add dl,48
mov ah,2
int 21h



jmp start
     
     
     
     
     
BaganBilash:

mov dx,offset msg_BaganBilash
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add BaganBilash_sold,al
mul price_BaganBilash

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h

mov dx,offset total_msg
mov ah,9
int 21h  

mov dl,cl
add dl,48
mov ah,2
int 21h



jmp start
         
         
         
         
         
Belly:

mov dx,offset msg_Belly
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add Belly_sold,al
mul price_Belly 
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h 

mov dx,offset total_msg
mov ah,9
int 21h 

mov dl,cl
add dl,48
mov ah,2
int 21h



jmp start
         
         
         
         
         
BlueAparajita:

mov dx,offset msg_BlueAparajita
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add BlueAparajita_sold,al
mul price_BlueAparajita
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h 

mov dx,offset total_msg
mov ah,9
int 21h 

mov dl,cl
add dl,48
mov ah,2
int 21h

jmp start
       
       
       
       
Starcactus:

mov dx,offset msg_Starcactus
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add Starcactus_sold,al
mul price_Starcactus 
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h  

mov dx,offset total_msg
mov ah,9
int 21h 

mov dl,cl
add dl,48
mov ah,2
int 21h

jmp start
   
   
   
   
rose:

mov dx,offset msg_rose
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48

add rose_sold,al
mul price_rose
aam

add amount,al
mov cl,al
mov dx,offset newLine
mov ah,9
int 21h 

mov dx,offset total_msg
mov ah,9
int 21h 

mov dl,cl
add dl,48
mov ah,2
int 21h

jmp start  


 employ:  

mov dx,offset input_employName
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov cx,9

lll2:
mov ah,1
int 21h
cmp al,[bx]
inc bx
loop lll2


mov dx,offset input_employpassword
mov ah,9
int 21h 

mov dx,offset newLine
mov ah,9
int 21h

mov bx,offset password1
mov cx,9

ll1:
mov ah,1
int 21h
cmp al,[bx] 

jne incorrect
inc bx
loop ll1 

jmp show_amount



show_amount:

mov dx,offset amount_earned
mov ah,9
int 21h

mov dl,amount
add ch,48
mov ah,2
int 21h 
aaa

jmp start  




incorrect:

mov dx,offset incorrect_password
mov ah,9
int 21h
jmp exit   



exit:
mov ah,4ch
int 21h 


main endp
           
           
         
           
menu proc 
    
    

mov dx,offset welcome
mov ah,9
int 21h

mov dx,offset msg0
mov ah,9
int 21h

mov dx,offset msg1
mov ah,9
int 21h

mov dx,offset msg_plants
mov ah,9
int 21h

mov dx,offset Plants_sold
mov ah,9
int 21h

mov dx,offset amount_print
mov ah,9
int 21h

mov dx,offset exit_program
mov ah,9
int 21h

mov dx,offset msg3
mov ah,9
int 21h



ret

menu endp 






menu2 proc

mov dx,offset msg2
mov ah,9
int 21h

mov dx,offset opt1
mov ah,9
int 21h

mov dx,offset opt2
mov ah,9
int 21h

mov dx,offset opt3
mov ah,9
int 21h

mov dx,offset opt4
mov ah,9
int 21h

mov dx,offset opt5
mov ah,9
int 21h

mov dx,offset opt6
mov ah,9
int 21h

mov dx,offset opt7
mov ah,9
int 21h

mov dx,offset opt8
mov ah,9
int 21h

mov dx,offset opt9
mov ah,9
int 21h

mov dx,offset newLine
mov ah,9
int 21h

mov ah,1
int 21h 




cmp al,'1'
je Brobekamini
cmp al,'2'
je MorningGlory
cmp al,'3'
je Adenium
cmp al,'4'
je Allamanda 
cmp al,'5'
je BaganBilash
cmp al,'6'
je Belly
cmp al,'7'
je BlueAparajita
cmp al,'8'
je Starcactus
cmp al,'9'
je rose

ret
   
   
   

menu2 endp

Plants_stats proc




mov dx,offset Brobekamini_print
mov ah,9
int 21h

add Brobekamini_sold,48

mov dl,Brobekamini_sold
mov ah,2
int 21h



mov dx,offset MorningGlory_print
mov ah,9
int 21h

add MorningGlory_sold,48

mov dl,MorningGlory_sold
mov ah,2
int 21h
 
 
 

mov dx,offset Adenium_print
mov ah,9
int 21h

add Adenium_sold,48

mov dl,Adenium_sold
mov ah,2
int 21h



mov dx,offset Allamanda_print
mov ah,9
int 21h

add Allamanda_sold,48

mov dl,Allamanda_sold
mov ah,2
int 21h
  
  
  
  
mov dx,offset BaganBilash_print
mov ah,9
int 21h

add BaganBilash_sold,48

mov dl,BaganBilash_sold
mov ah,2
int 21h
 
 
 
 
mov dx,offset Belly_print
mov ah,9
int 21h

add Belly_sold,48

mov dl,Belly_sold
mov ah,2
int 21h
  
  
  
  
mov dx,offset BlueAparajita_print
mov ah,9
int 21h

add BlueAparajita_sold,48

mov dl,BlueAparajita_sold
mov ah,2
int 21h




mov dx,offset Starcactus_print
mov ah,9
int 21h

add Starcactus_sold,48

mov dl,Starcactus_sold
mov ah,2
int 21h 



 
mov dx,offset rose_print
mov ah,9
int 21h

add rose_sold,48

mov dl,rose_sold
mov ah,2
int 21h 
    
            
            

           

ret

Plants_stats endp

end main





INT 19h        ; reboot

