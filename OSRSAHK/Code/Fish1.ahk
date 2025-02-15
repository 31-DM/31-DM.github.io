=::

PixelSearch, Dx, Dy, 400, 400, 1000, 575, 0x887569, 0, Fast] 

Random, Dx2, Dx-10, Dx+10
Random Dy2, Dy-10, Dy+10

Mousemove, Dx2, Dy2, 5
sleep 100
click

-::reload
\::exitapp

]::
Sleep, 1000
Send, {Shift down}
Click
Loop, 6{
Mousemove,0,37,0,R
Click
}
Mousemove,37,0,0,R
Click
Loop, 6 {
Mousemove,0,-37,0,R
Click
}
Mousemove,37,0,0,R
Click
Loop, 6{
Mousemove,0,37,0,R
Click
}
Mousemove,60,-90,0,R
Click
Loop, 4{
Mousemove,0,-37,0,R
Click
}
Send, {Shift up}