import pygame #import library (called "modules" in python)
from math import sin #so we don't have to type "math.sin" each time
from math import cos

pygame.init()#initializes Pygame
pygame.display.set_caption("Valentine's Hearts")#sets the window title
screen = pygame.display.set_mode((800, 800))#creates game screen
screen.fill((0, 0, 0))#paint background black
clock = pygame.time.Clock()

GameLoop = True #variable to run game loop

xpos = 0
ypos = 0
t=0
ticker = 2
adder = 1

# GAME LOOP-----------------------------------------------------------
while GameLoop:
   
   
   
    #pygame's way of listening for events (key presses, mouse clicks, etc)
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
           GameLoop = False #lets you quit program
   
    if ticker<1 or ticker>250:
        adder*=-1
    ticker+=adder
    t+=1

    xpos=-100*2.5 *sin(t)+100*.8*sin(3*t)-100*.5*cos(36*t/7)+400
    ypos = -100*2.7*cos(t)+100*cos(2*t)+100*.5*cos(3*t)-100*.5*sin(36*t/7)+400
    pygame.draw.circle(screen, (250, ticker, ticker), (xpos, ypos), 2)
   
   
#this stuff is for the milk chocolate
   
   
    #draws a heart using lines and arcs
    pygame.draw.arc(screen, (250, 0, 0), (400, 400, 40, 40), 0, 3.14,5)
    pygame.draw.arc(screen, (250, 100, 100), (360, 400, 40, 40), 0, 3.14,5)
    pygame.draw.line(screen, (250, 0, 0), (438, 420), (400, 475), 5)
    pygame.draw.line(screen, (250, 100, 100), (400, 475), (363, 420), 5)
   
    #draws a heart using circles and triangles
    pygame.draw.circle(screen, (250, 100, 100), (200, 250), 21)
    pygame.draw.circle(screen, (250, 100, 100), (240, 250), 21)
    pygame.draw.polygon(screen, (250, 100, 100), ((180, 255), (260, 255), (220, 300)))
   
    #draws a heart using circles and triangles
    pygame.draw.circle(screen, (250, 0, 0), (600, 250), 21)
    pygame.draw.circle(screen, (250, 0, 0), (560, 250), 21)
    pygame.draw.polygon(screen, (250, 0, 0), ((620, 255), (540, 255), (580, 300)))
   
       
    pygame.display.flip()
pygame.quit()
