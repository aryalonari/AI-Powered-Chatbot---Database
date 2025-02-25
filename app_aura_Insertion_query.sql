
-- staff insertion 
insert into staff_user (staff_name,staff_email,password,staff_type)
values("sno-1","sno1@gmail.com","sno1@123",1),("sno-2","sno2@gmail.com","sno2@123",2);

select * from staff_user;

-- user table  
insert into app_users (user_name,user_email,password,user_phone_no)
values("ram","ram@gmail.com","ram@123",1234567891),("rohit","rohit@gmail.com","rohit@123",12345678791);

select * from app_users;

-- model type table 
insert into app_model_type(model_name,model_version,credentials)
values("aura","1.1"
,"{'api' : 'https://cors-anywhere.herokuapp.com','payload':{{'Access-Control-Allow-Origin': '*','Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD','Content-Type': 'application/json','Authorization': 'Bearer $sToken',}}}");

insert into app_model_type(model_name,model_version,credentials)
values("chatgpt","4.0"
,"{'api' : 'https://cors-anywhere.herokuapp.com','payload':{{'Access-Control-Allow-Origin': '*','Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD','Content-Type': 'application/json','Authorization': 'Bearer $sToken',}}}"),
("BERT","2.0"
,"{'api' : 'https://cors-anywhere.herokuapp.com','payload':{{'Access-Control-Allow-Origin': '*','Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD','Content-Type': 'application/json','Authorization': 'Bearer $sToken',}}}"),
("deepseek ","r.1"
,"{'api' : 'https://cors-anywhere.herokuapp.com','payload':{{'Access-Control-Allow-Origin': '*','Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD','Content-Type': 'application/json','Authorization': 'Bearer $sToken',}}}");


select * from app_model_type;

-- mapped table
insert into user_model_mapped (user_id,model_id)
values(1,1),(2,3);


-- req_res_log table

insert into req_res_log( map_id,req_log,req_query,res_log,query_count)
values(4,"{'api' : 'https://cors-anywhere.herokuapp.com','payload':{{'query':'hi'}}}","hi","how are you?",0);


select * from req_res_log;