# nginx-add-custom-header

### 简介 ###

使用openresty写的一个扩展。
添加一个自定义的header--`x-mls-logid`，用来追踪接口之间的调用流程。

### 测试环境 ###

* MacOSX 10.10.3 8GB i5
* openresty 1.7.2.1
* PHP 5.4.38

### 测试结果 ###

使用wrk进行测试

#### 未启用php ####

* 不加载扩展

![](https://github.com/pein0119/nginx-add-custom-header/blob/master/img/test1.png?raw=true) 

* 加载扩展

![](https://github.com/pein0119/nginx-add-custom-header/blob/master/img/test2.png?raw=true) 

#### 启用php ####

* 不加载扩展

![](https://github.com/pein0119/nginx-add-custom-header/blob/master/img/test3.png?raw=true) 

* 加载扩展

![](https://github.com/pein0119/nginx-add-custom-header/blob/master/img/test4.png?raw=true) 

## 总结 ##

在启用php的情况下，扩展对nginx的性能影响很小。
