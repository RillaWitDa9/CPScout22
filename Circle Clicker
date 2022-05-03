import pygame
import random
import math
pygame.init()
screen = pygame.display.set_mode((800, 800))
screen.fill((0, 0, 0))
pygame.display.set_caption("Randon Circles")

xpos = 0
ypos = 0

score = 0

seed = int(input("Input a seed\n"))
random.seed(seed)

xrand = random.randint(0, 800)
yrand = random.randint(0, 800)

pygame.draw.circle(screen, (random.randint(0, 255),10,250), (xrand, yrand), 40, 0)


mousePos = (xpos, ypos) 
draw = False

BLUE = (0,0,200)
RED = (200, 0,0)
GREEN = (0,200, 0)
YELLOW = (200, 200, 0)
PURPLE = (200, 0, 200)
TEAL = (0,200,200)
WHITE = (255, 255, 255)
BLACK = (0,0,0)
color = RED





while True:

    
    
    
    event = pygame.event.wait()
    screen.fill((0,0,0)) 
    if mousePos[0] > 0 and mousePos[0] < 50 and mousePos[1] >750:
        color = RED
    if mousePos[0] > 50 and mousePos[0] < 100 and mousePos[1] >750:
        color = BLUE
    
    if event.type == pygame.QUIT: 
        break

    if event.type == pygame.MOUSEBUTTONDOWN:
        draw = True

    if event.type == pygame.MOUSEBUTTONUP:
        draw = False

    if event.type == pygame.MOUSEMOTION:
        mousePos = event.pos
        pygame.draw.circle(screen, (255,255,255), (mousePos), 10)
        
    if math.sqrt((mousePos[0]-xrand)*(mousePos[0]-xrand) + (mousePos[1]-yrand)*(mousePos[1]-yrand)) and draw == True:
        score += 1 
        xrand = random.randint(0, 800)
        yrand = random.randint(0, 800)
        
    pygame.draw.circle(screen, (random.randint(0, 255),10,250), (xrand, yrand), 40, 0)



    font = pygame.font.Font(None, 74) #use default font    
    text = font.render(str(score), 1, (255, 255, 255))
    screen.blit(text, (350,10))



    pygame.display.flip()

#pygame.quit()
