yii-simplest-rbac
=================

Simplest possible RBAC for Yii

This is a very lean RBAC for Yii completely based on http://www.yiiframework.com/wiki/328/simple-rbac/. So all credits go to hasanavi (http://www.yiiframework.com/user/23674/). 
I am only collecting all bits and pieces here.


# Settings #

## /protected/config/main.php ##
<pre><code>
.....
	'components'=>array(
	.....
		'user'=>array(
			'class' => 'WebUser',
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
		),
		......
</code></pre>

## SQL table ##
Create a table in db using /protected/data/mysql.sql

For multiple rules, separate them by comma

## Check permissions ##

<pre><code>
Yii::app()->user->checkAccess('admin')
</code></pre>


