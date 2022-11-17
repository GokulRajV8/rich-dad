drop table richdad_test.expense_category_map;
drop table richdad_test.expense_replaced_data;
drop table richdad_test.expense_data;
drop table richdad_test.expense_category_data;
drop table richdad_test.currency_data;

create table richdad_test.currency_data (
  id int not null,
  name varchar(3) not null,
  primary key (id)
);

create table richdad_test.expense_data (
  id int not null,
  description varchar(1000) not null,
  amount decimal(14, 2) not null,
  currency_id int not null,
  entry_date date not null,
  primary key (id),
  foreign key (currency_id) references richdad_test.currency_data(id)
);

create table richdad_test.expense_category_data (
  id int not null,
  name varchar(100) not null,
  parent_id int not null,
  primary key (id),
  foreign key (parent_id) references richdad_test.expense_category_data(id)
);

create table richdad_test.expense_category_map (
  expense_id int not null,
  expense_category_id int not null,
  foreign key (expense_id) references richdad_test.expense_data(id),
  foreign key (expense_category_id) references richdad_test.expense_category_data(id)
);

create table richdad_test.expense_replaced_data (
  original_id int not null,
  replaced_id int not null,
  foreign key (original_id) references richdad_test.expense_data(id),
  foreign key (replaced_id) references richdad_test.expense_data(id)
);
