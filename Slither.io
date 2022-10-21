#slither game
#written by Dr. Mo, 1/20/2021? (Brandon)
import pygame #imports
import math #needed for square root function
import random


pygame.init() #initializes Pygame
pygame.display.set_caption("Slither") #sets the windows title
screen = pygame.display.set_mode((400,400)) #creates game screen
clock = pygame.time.Clock()# start game clock

#game variables
doExit = False

#player variables
xPos = 200
yPos = 200
Vx = 1
Vy = 1

#++++++++++++++++++++++++++++++++++++++++++++++   
class pellet:
    def __init__(self, xpos, ypos, red, green, blue, radius):
        self.xpos = xpos
        self.ypos = ypos
        self.red = red
        self.green = green
        self.blue = blue
        self.radius = radius
    def draw(self):
        pygame.draw.circle(screen, (self.red, self.green, self.blue), (self.xpos, self.ypos), self.radius)
    
    def collide(self, x, y):
        if math.sqrt((x-self.xpos)*(x-self.xpos)+(y-self.ypos)*(y-self.ypos)) < self.radius + 6:
            self.xpos = random.randrange(0,400)
            self.ypos = random.randrange(0,400)
            self.red = random.randrange(0,255)
            self.green = random.randrange(0,255)
            self.blue = random.randrange(0,255)
            self.radius = random.randrange(0,30)
            return True

class TailSeg:
    def __init__(self, xpos, ypos):
        self.xpos = xpos
        self.ypos = ypos
    def update(self, xpos, ypos):
        self.xpos = xpos
        self.ypos = ypos
    def draw(self):
        pygame.draw.circle(screen, (200, 0, 0), (self.xpos, self.ypos), 12)

#end class pellet++++++++++++++++++++++++++++++


#p1 = pellet(200, 50, 250, 20, 220, 10)
#p2 = pellet(100, 20, 50, 20, 220, 10)

#p3 = pellet(250, 250, 200, 150, 220, 10)
#p4 = pellet(300, 150, 150, 220, 220, 10)


pelletBag = list()#creates a list data structure
tail = list()

#push 10 pellets into the list


for i in range(10):
    pelletBag.append(pellet(random.randrange(0,400), random.randrange(0,400), random.randrange(0,255), random.randrange(0,255), random.randrange(0,255), random.randrange(0,30)))


oldX = 200
oldY = 200
counter = 0



#gameloop#######################################################
while not doExit:

#event/input section-------------------------------------------------
    clock.tick(60)
    
    for event in pygame.event.get(): #grabs any events (mouse movement, keyboard, etc)
        if event.type == pygame.QUIT: #lets you quit the game from the gamescreen
            doExit = True
    if event.type == pygame.MOUSEMOTION:
        mousePos = event.pos
        
        if mousePos[0]>xPos:
            Vx = 1
        else:
            Vx = -1
        if mousePos[1]>yPos:
            Vy = 1
        else:
            Vy = -1


    counter+=1 #update counter
    if counter == 10: #create a delay so the segments follow behind
        counter = 0 # reset counter every 20 ticks
        oldX = xPos # hold onto player position from 20 ticks ago
        oldY = yPos
    
        if(len(tail)>2): #don't push numbers if there are no nodes yet
            for i in range(len(tail)): #loop for each slot in list
                #start in LAST position, push the *second to last* into it, repeat till at eginning
                tail[len(tail)-i-1].xpos = tail[len(tail)-i-2].xpos
                tail[len(tail)-i-1].ypos = tail[len(tail)-i-2].ypos
            
            if(len(tail)>0): #IF you have at least one segment, pus old head position into that
               tail[0].update(oldX, oldY) #push head position into first position of list

#physics section----------------------------------------
   
   #update circle position
    xPos += Vx
    yPos += Vy

#check for collision with pellets

    for i in range(10):
        if pelletBag[i].collide(xPos, yPos) == True:
            tail.append(TailSeg(oldX, oldY))
            



#render section---------------------------------------------------------
    screen.fill((255,255,255)) #wipe screen (without this, things smear)
    
    pygame.draw.circle(screen, (0, 255, 50), (xPos, yPos), 12)
    
    
    for i in range(10):
        pelletBag[i].draw()
    
    for i in range(len(tail)):
        tail[i].draw()
    
    pygame.display.flip()
    
#end game loop##########################################

pygame.quit()
     
