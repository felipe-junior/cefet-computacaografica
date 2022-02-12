from OpenGL.GLUT import *
from OpenGL.GLU import *
from OpenGL.GL import *
 
vertices = (
    ( 0, 1, 0),
    (-1,-1,-1),
    (-1,-1, 1),
    ( 1,-1, 1),
    ( 1,-1,-1)
    )
 
linhas = (
    (0,1),
    (0,2),
    (0,3),
    (0,4),
    (1,2),
    (1,4),
    (2,3),
    (3,4)
    )
 
faces = (
    (0,1,2),
    (0,2,3),
    (0,3,4),
    (0,1,4),
    (1,2,4),
    (2,3,4)
    )
 
cores = ( (1,1,0),(1,1,0),(1,1,0),(1,1,0),(1,1,0) )
 
def desenha_piramide():
    glBegin(GL_TRIANGLE_STRIP)
    i = 0
    for face in faces:
        glColor3fv((1,1,1))
        for vertex in face:
            glVertex3fv(vertices[vertex])
        i = i+1
    glEnd()
 
    glColor3fv((0.,0.,0.))
    glBegin(GL_LINES)
    for linha in linhas:
        for vertice in linha:
            glVertex3fv(vertices[vertice])
    glEnd()
 
def handle_piramide():
    global a
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
    glRotatef(a,0,1,0)
    desenha_piramide()
    glutSwapBuffers()
  
def timer(i):
    glutPostRedisplay()
    glutTimerFunc(50,timer,1)
a = 1
def main():
    global a
    glutInit(sys.argv)
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_MULTISAMPLE)
    glutInitWindowSize(1000,1000)
    glutCreateWindow("Trabalho da piramide")
    glutDisplayFunc(handle_piramide)
    glEnable(GL_MULTISAMPLE)
    glEnable(GL_DEPTH_TEST)
    glClearColor(0.,0.,0.,1.)
    gluPerspective(20,1000/1000,0.1,50.0)
    glTranslatef(0.0,0.0,-20)
    
    glutTimerFunc(50,timer,1)
    glutMainLoop()
    a= a+1
main()