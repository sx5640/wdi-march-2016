function Employee() {
  this.name = '';
  this.dept = 'general';
}



// newEmployee = new Employee();


function Manager() {
  // `this` is an object of type Manager
  Employee.call(this);
  this.reports = [];
}

Manager.prototype = Object.create(Employee.prototype);

function WorkerBee() {
  // `this` is an object of type Manager
  Employee.call(this);
  this.projects = [];
}

WorkerBee.prototype = Object.create(Employee.prototype);


function Sales() {
  WorkerBee.call(this);
  this.dept = 'sales';
  this.quote = 100;
  // this.hello = function() {
  //
  // }
}

Sales.prototype = Object.create(WorkerBee.prototype);

// ES2015
class Sales extends WorkerBee {
  constructor {
    this.dept = 'sales';
    this.quote = 100;
  }
}


// Adding a behaviour to an object
Sales.prototype.hello = function() {
  return "Hello from " + this.name;
}
