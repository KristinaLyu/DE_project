Установка Postgres базу данных к себе на компьютер
Установка клиент SQL для подключения базы данных. 
Создание 3 таблицы и загрузка данных из [Superstore Excel файл](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls) в вашу базу данных. Сохраните в вашем GitHub скрипт загрузки данных и создания таблиц. Вы можете использовать готовый [пример sql файлов](https://github.com/Data-Learn/data-engineering/tree/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1).
Запросы, решающие вопросы из [Модуля 01](https://github.com/Data-Learn/data-engineering/tree/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1#%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0-%D0%B2-excel). 

Скрипт загрузки данных и создания таблиц.

1. Вам необходимо нарисовать модель данных для нашего файлика [Superstore](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls):

- Концептуальную
- Логическую
- Физическую
  Вы можете использовать бесплатную версию [SqlDBM](https://sqldbm.com/Home/) или любой другой софт для создания моделей данных баз данных.

2. Когда вы нарисуете модель данных, вам нужно скопировать DDL и выполнить его в SQL клиенте.
3. Вам необходимо сделать `INSERT INTO SQL`, чтобы заполнить **Dimensions** таблицы и **Sales Fact** таблицу. Сначала мы заполняем **Dimensions** таблицы, где в качестве **id** мы генерим последовательность чисел, а зачем **Sales Fact** таблицу, в которую вставляем **id** из **Dimensions** таблиц. Такой пример я рассматривал в видео.

https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Module02.md?plain=1#:~:text=1.%20%D0%92%D0%B0%D0%BC%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D0%BE%20%5B%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D1%82%D1%8C,orders%60%20%D0%B8%D0%BB%D0%B8%20%60stg.orders%60.


1. Вам необходимо [создать учетную запись в AWS](https://github.com/Data-Learn/data-engineering/blob/master/how-to/How%20to%20create%20AWS%20Account.md). Это бесплатно. Если вы запускаете сервис в AWS, не забудьте его удалить, когда он не нужен, а то могут и денюшку списать.
2. Используя сервис AWS Lightsail или [AWS RDS (смотрите инструкцию)](https://github.com/Data-Learn/data-engineering/blob/master/how-to/how_to_amazon_rds.md) создайте БД Postgres и активируйте **Public access**
3. Подключитесь к новой БД через SQL клиент (например DBeaver)
4. Загрузите данные из модуля 2.3 (Superstore dataset) в staging (схема БД `stg`) и загрузите dimensional model (схема `dw`). Вы можете использовать мой пример SQL для этого упражнения:

- Staging [stg.orders.sql](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1/stg.orders.sql)
- Business Layer [from_stg_to_dw.sql](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1/from_stg_to_dw.sql)

5. Попробуйте выполнить свои запросы из предыдущих упражнений. Не забудьте указать схему перед название таблицы. Например, `public.orders` или `stg.orders`.

В качестве домашнего задания вам необходимо создать дашборд в одном из решений, которые мы рассмотрели. ДЛя идей можно использовать задание из 1го модуля. Данные должны быть в Postgres в AWS и вы сможете подключиться сервисом к БД и создать несколько отчетов. Для практики можно и во всех 3х создать.

