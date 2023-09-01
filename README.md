# О заданиях
## Вступление
Этот репозиторий содержит в себе проекты с задачами по Delphi, Java, C#. Это задачи базового уровня, они рассчитаны на сентябрь.

Вместе с задачами идут юнит-тесты. Используйте их для оценки выполнения заданий. Также решения будут оценивать проверяющие.
## Инструкция
Вот последовательность действий для выполнения заданий:

1. Заклонить репозиторий на свой компьютер.
1. Открыть проект в IDE.
1. В структуре проекта открыть юнит нужного задания.
1. Поработать с кодом. Добиться того, чтобы проект запускался **без ошибок** и проходил как можно больше тестов(оч желательно все).
1. Делать коммиты(*Commit*). *Возвращаться на пункт 3 нужное число раз.*
1. Отправить накопленные изменения в свой репозиторий(*Push*)

Когда  изменения будут отправлены, это увидит проверяющий. Далее возможен процесс фидбека и общения, это будет происходит на странице коммита.
## Возможные вопросы
### Как отключить ненужные тесты/оставить только определенные?
#### В Delphi
Для этого необходимо либо временно исключить юнит с невостребованными тестами из проекта(не забудьте его вернуть:upside_down_face:), либо исключить их выполнение.

Для второго варианта делаем следующее: в структуре проекта выбираем .exe файл, открываем код файла(**Ctrl + V** либо **ПКМ->View Source**), в коде находим
    
    UTests_1 In 'Tests\uTests_1.pas',
    UTests_2 In 'Tests\uTests_2.pas',
    UTests_3 In 'Tests\uTests_3.pas',
    UTests_4 In 'Tests\uTests_4.pas',
    UTests_5 In 'Tests\uTests_5.pas';

и закомменчиваем невостребованные тесты(в данном случае будет выполнен только 1-ый блок тестов):

    UTests_1 In 'Tests\uTests_1.pas',
    //UTests_2 In 'Tests\uTests_2.pas',
    //UTests_3 In 'Tests\uTests_3.pas',
    //UTests_4 In 'Tests\uTests_4.pas',
    //UTests_5 In 'Tests\uTests_5.pas';

#### В С++
Сначала необходимо забилдить решение(F7): [Скриншот вкладки Build](/assets/images/Screenshot_1.png)
Затем открываем вкладку Tests - Test Explorer. В открывшемся окне/вкладке раскрываем список тестов и запускаем необходимые. Для запуска всех тестов можно сразу Run all tests(Crtl + R, A):
#### В Java
