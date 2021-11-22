import pygame
pygame.init()  
pygame.display.set_caption("sprite sheet")  # sets the window title
screen = pygame.display.set_mode((800, 800))  # creates game screen
screen.fill((0,0,0))
clock = pygame.time.Clock() #set up clock
gameover = False #variable to run our game loop

Link = pygame.image.load('link.png') #load your spritesheet
Link.set_colorkey((255, 0, 255)) #this makes bright pink (255, 0, 255) transparent (sort of)

#player variables
xpos = 500 #xpos of player
ypos = 200 #ypos of player
vx = 0 #x velocity of player
vy = 0
keys = [False, False, False, False] #this list holds whether each key has been pressed


#animation variables variables
frameWidth = 64
frameHeight = 96
RowNum = 0 #for left animation, this will need to change for other animations
frameNum = 0
ticker = 0

while not gameover:
    clock.tick(100) #FPS
    
    for event in pygame.event.get(): #quit game if x is pressed in top corner
        if event.type == pygame.QUIT:
            gameover = True
      
        if event.type == pygame.KEYDOWN: #keyboard input
            if event.key == pygame.K_LEFT:
                keys[0]=True
            elif event.key == pygame.K_RIGHT:
                keys[1]=True
            elif event.key == pygame.K_UP:
                keys[2]=True
            elif event.key == pygame.K_DOWN:
                keys[3]=True
        elif event.type == pygame.KEYUP:
            if event.key == pygame.K_LEFT:
                keys[0]=False
            elif event.key == pygame.K_RIGHT:
                keys[1]=False
            elif event.key == pygame.K_UP:
                keys[2]=False
            elif event.key == pygame.K_DOWN:
                keys[3]=False
          

    #LEFT MOVEMENT
    if keys[0]==True:
        vx=-3
        RowNum = 0
    #RIGHT MOVEMENT
    elif keys[1] == True:
        vx = 3
        RowNum = 1
    else:
        vx = 0
        
    #UP MOVEMENT
    if keys[2] == True:
        vy = -3
        RowNum = 2
    #DOWN MOVEMENT
    elif keys[3] == True:
        vy = 3
        RowNum = 3
    #turn off velocity
    else:
        vy = 0
        
    #UPDATE POSITION BASED ON VELOCITY
        
    xpos+=vx #update player xpos
    ypos += vy
        
    #ANIMATION-------------------------------------------------------------------
        
    # Update Animation Information
    # Only animate when in motion
    if vx != 0 or vy !=0:
        ticker+=1
        if ticker%10==0: #only change frames every 10 ticks
          frameNum+=1
           #If we are over the number of frames in our sprite, reset to 0.
           #In this particular case, there are 10 frames (0 through 9)
        if frameNum>7: 
           frameNum = 0
    
    
    # RENDER--------------------------------------------------------------------------------
    # Once we've figured out what frame we're on and where we are, time to render.
            
    screen.fill((0,0,0)) #wipe screen so it doesn't smear
    screen.blit(Link, (xpos, ypos), (frameWidth*frameNum, RowNum*frameHeight, frameWidth, frameHeight)) 
    pygame.display.flip()#this actually puts the pixel on the screen
    
#end game loop------------------------------------------------------------------------------
pygame.quit()
