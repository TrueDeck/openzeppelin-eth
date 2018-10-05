pragma solidity ^0.4.24;

import "../Initializable.sol";
import "../access/roles/PauserRole.sol";


contract PauserRoleMock is Initializable, PauserRole {
  constructor() public {
    PauserRole.initialize();
  }

  function removePauser(address account) public {
    _removePauser(account);
  }

  function onlyPauserMock() public view onlyPauser {
  }

  // Causes a compilation error if super._removePauser is not internal
  function _removePauser(address account) internal {
    super._removePauser(account);
  }
}