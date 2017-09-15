pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		if (position == 0) {
			return 0;
		} else {
			uint prev = 0;
			uint curr = 1;
			uint i;
			for (i = 1; i < position; i++) {
				uint temp = prev + curr;
				prev = curr;
				curr = temp;
			}
			return result;
		}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() payable { }
}
