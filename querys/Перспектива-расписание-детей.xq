(: Расписание обучающихся (c) С.С. Мишуров :)

import module namespace lipersRasp = 'http://lipers.ru/modules/расписание' 
  at 'https://raw.githubusercontent.com/kontur32/lipers-Zeitplan/master/modules/lipers-module-lipersRasp.xqm';


let $data := .

let $расписаниеДанные := $data//table[ @label = 'Расписание учителей' ]

let $словарьПредметов := $data//table[ @label = 'Кодификатор предметов' ]  
      
return
 lipersRasp:рендерингРасписаниеДетское( $расписаниеДанные, $словарьПредметов )