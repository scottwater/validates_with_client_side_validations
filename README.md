# This is just a sample to help diagnose a potential bug. Please ignore. 

## Setup

* git clone
* bundle 
* rails s


## Details 

* The example uses formtastic, but I was able to verify the exception with a plain old form_for. I left formtastic in since the formatting is a little nicer. 
* If you remove the validates_with validator on the user model (in user.rb) the example works properly.


## Error Message

	TypeError in Users#new
	_nil is not a symbol_
