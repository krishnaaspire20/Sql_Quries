use student_detials;
create table category(
	category_id int Not null primary key,
    category_name varchar(20)
);

create table product(
    product_id int not null primary key,
    product_name varchar(30),
    cost int,
    category_id int,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

insert into category(category_id,category_name ) values (1,'electronics'),(2,'daily product');
insert into product(product_id,product_name,cost,category_id ) values (1,'labtop',20000,1),(2,'milk',45,2);

select category.category_name, product.product_name,product.cost from category
left join product on category.category_id = product.category_id;