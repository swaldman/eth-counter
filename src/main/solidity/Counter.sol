pragma solidity ^0.4.24;

contract Counter {
  uint public count = 0;

  function increment() public returns ( uint new_count ) {
    uint old_count = count;
    count += 1;
    new_count = count;

    emit Incremented( old_count, new_count );
  }

  event Incremented( uint old_count, uint new_count );
}

