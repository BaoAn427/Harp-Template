call rename assets\css assets\_css
call harp compile --output output
call rename assets\_css assets\css
call lessc assets\css\layout.less output\assets\css\layout.css
call lessc assets\css\components.less output\assets\css\components.css
call lessc assets\css\responsive.less output\assets\css\responsive.css
call md output\assets\js
call xcopy assets\js output\assets\js /s/h/e/k/f/c
call md output\assets\images
call xcopy assets\images output\assets\images /s/h/e/k/f/c
call md output\assets\libs
call xcopy assets\libs output\assets\libs /s/h/e/k/f/c
call md output\assets\font
call xcopy assets\font output\assets\font /s/h/e/k/f/c
call md output\assets\less
call xcopy assets\less output\assets\less /s/h/e/k/f/c