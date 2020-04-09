/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  saksham
 * Created: Apr 9, 2020
 */

CREATE DATABASE cocktails;
CREATE USER cocktails_admin ENCRYPTED PASSWORD  'pass';
GRANT ALL PRIVILEGES ON DATABASE cocktails TO cocktails_admin;  
