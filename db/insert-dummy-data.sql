/* Insert currency data */
insert into richdad_test.currency_data
select 1, 'INR' from dual;

/* Insert expense category data */
insert into richdad_test.expense_category_data
select 0, 'expense', 0 from dual;

insert into richdad_test.expense_category_data
select 1, 'food', 0 from dual;

insert into richdad_test.expense_category_data
select 2, 'groceries', 0 from dual;

insert into richdad_test.expense_category_data
select 3, 'supplies', 0 from dual;

insert into richdad_test.expense_category_data
select 4, 'transport', 0 from dual;

insert into richdad_test.expense_category_data
select 5, 'leisure', 0 from dual;

/* Insert expense data */
insert into richdad_test.expense_data
select 1, 'Yummy Ice-cream!!', 20, 1 from dual;

insert into richdad_test.expense_data
select 2, 'Bus ticket to shop', 10, 1 from dual;

insert into richdad_test.expense_data
select 3, 'Buying tomatoes', 20, 1 from dual;

insert into richdad_test.expense_data
select 4, 'Olive oil', 100, 1 from dual;

insert into richdad_test.expense_data
select 5, 'Veggies for lunch', 50, 1 from dual;

insert into richdad_test.expense_data
select 6, 'Movies', 200, 1 from dual;

insert into richdad_test.expense_data
select 7, 'Theme park ride', 150, 1 from dual;

/* Insert expense-category map data */
insert into richdad_test.expense_category_map
select 1, 1 from dual;

insert into richdad_test.expense_category_map
select 2, 4 from dual;

insert into richdad_test.expense_category_map
select 3, 2 from dual;

insert into richdad_test.expense_category_map
select 4, 2 from dual;

insert into richdad_test.expense_category_map
select 4, 3 from dual;

insert into richdad_test.expense_category_map
select 5, 2 from dual;

insert into richdad_test.expense_category_map
select 6, 5 from dual;

insert into richdad_test.expense_category_map
select 7, 5 from dual;

/* Commit */
commit;
