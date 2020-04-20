from pynput.mouse import Button, Controller as Mouse_Controller
from pynput.keyboard import Key, Controller as Keyboard_Controller
from time import sleep


name = 'Caio Pedroso'
email = 'caio.pedroso.grid@gmail.com'
senha = 'admin123'
cpf = '48722946888'
cnh = '76389273340'
fabricante = 'Ford'
modelo = 'Belina'
ano = '1986'
placa = 'CYG3024'

mouse = Mouse_Controller()
keyboard = Keyboard_Controller()

sleep(10)

# Cadastrar
mouse.position = (200, 540)
sleep(1.0)
mouse.click(Button.left)
sleep(1.0)

mouse.position = (700, 300)
mouse.click(Button.left)
sleep(1.0)

keyboard.type(name)
sleep(1.0)

mouse.move(0, 100)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(email)
sleep(1.0)

mouse.move(0, 100)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(senha)
sleep(1.0)

mouse.move(0, 100)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(senha)
sleep(1.0)

# Finaliza Cadastro
mouse.position = (795, 670)
sleep(1.0)
mouse.click(Button.left)
sleep(3.0)

mouse.position = (795, 570)
sleep(1.0)
mouse.click(Button.left)

# Mostra menu
sleep(5.0)
mouse.scroll(0, -3)
sleep(2.5)
mouse.scroll(0, 3)
sleep(2.0)
mouse.position = (740, 365)
sleep(1.0)
mouse.click(Button.left)
sleep(4.0)

# Cadastra infos
mouse.click(Button.left)
sleep(1.0)
keyboard.type(cpf)
sleep(0.5)

mouse.move(0, 135)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(cnh)
sleep(1.0)

mouse.move(0, 135)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(fabricante)
sleep(1.0)

mouse.move(0, 135)
mouse.click(Button.left)


sleep(0.5)
keyboard.type(modelo)
sleep(1.0)

mouse.scroll(0, -5)
sleep(1.0)

mouse.position = (795, 520)
sleep(0.5)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(ano)
sleep(1.0)

mouse.move(0, 135)
mouse.click(Button.left)

sleep(0.5)
keyboard.type(placa)
sleep(1.0)

# Enviar
mouse.position = (795, 770)
sleep(1.0)
mouse.click(Button.left)
sleep(16.0)
mouse.position = (795, 670)
sleep(1.0)
mouse.click(Button.left)
sleep(1.0)

# Cotações
sleep(2.0)
mouse.position = (795, 530)
sleep(1.0)
mouse.click(Button.left)

# Pacotes
sleep(14.0)
mouse.position = (700, 650)
sleep(1.0)
mouse.click(Button.left)
sleep(3.0)
mouse.position = (700, 560)
sleep(0.5)
mouse.click(Button.left)

# Recompensas
sleep(3.0)
mouse.position = (1200, 120)
sleep(1.0)
mouse.click(Button.left)
sleep(6.0)

mouse.position = (850, 480)
sleep(1.0)
mouse.click(Button.left)
sleep(4.0)
mouse.move(0, 72)
sleep(1.0)
mouse.click(Button.left)
sleep(1.0)
mouse.move(2, 2)
sleep(1.0)
mouse.position = (930, 630)
sleep(2.0)
mouse.click(Button.left)
sleep(7.0)
mouse.click(Button.left)

# Sair
mouse.position = (1300, 120)
sleep(0.5)
mouse.click(Button.left)