// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0 ;

contract learnArrays {
    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedSizeArray;

    // push() method to add one or more elements in to the end of an array and return the new length of array
    function push(uint number) public {
        myArray.push(number);
    }

    // pop() method removes the last element from an array and return that value
    function pop() public {
        myArray.pop();
    }

    // length is used to determine the length of a string or an array
    function getLength() public view returns(uint) {
        return myArray.length;
    }

    // delete , note that it only value of that index, not change the length, it will change the default value to 0
    function remove(uint i) public {
        delete myArray[i];
        // when you delete in your array, the length remains the same
        // [1, 2, 3] 
        // delete myArray[2]
        // [1, 2, 0]

    }

    // try to write function to get rid of element from an array
    uint[] public changeArray;
    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }
}