interface Register {
    function add(
        bytes32 name,
        address addressEther,
        uint256 license
    ) external returns (uint256 tempID);

    function verifyNewUser(uint256 tempID)
        external
        returns (
            //If license == null --> unlicensed Broker
            //If there is license, we should pass that to an orcale, which will verify
            uint256 permenantID
        );

    function suspendUser(uint256 permenantID, uint256 timePeriod) external;

    function banUser(uint256 permenantID, uint256 timePeriod) external;

    //Difference between suspend and ban is :
    //Suspend can be done in case of suspision of malicious activity
    //Ban is done in case of proved malicious activity

    function awardUser(uint256 permenantID, uint256 awardID) external;
    //Awarding users with badges for being active innovator on UnoRe for 1/3/5 years.
    //Giving him a trust badge, to tell people he is trusted from UnoRe admin himself
}
