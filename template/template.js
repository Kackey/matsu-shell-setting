var Person = (function(){
	var _name = 'kazushi',
		_age = 36;

function _init() {
	// ���餫�ν���
}

function _getName() {
	return _name;
}

function _getAge() {
	return _age;
}

function _doSomething() {
	...
}

// �������¹Ԥ���
_init();

// ����API���֤�
return {
	getName: _getName,
		getAge : _getAge
};
}());


