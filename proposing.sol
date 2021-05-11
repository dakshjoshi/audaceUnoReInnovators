interface Poposing {
    function propose(
        bytes32 productName,
        bytes32 typeOfInsurance,
        //we have to create enum for type of insurance
        bytes32 planValue,
        address addressEther,
        uint256 license,
        uint256 GWPmin,
        uint256 GWPmax,
        bytes32 currency,
        bytes32 Description,
        bytes32 brokerCompanyName
    ) external;

    //if brokerCompanyName == null, we will call compnayInfo function
    //if there is broker company, we will re-direct proposal for reviewing

    function companyInfo(
        bytes32 compnayName,
        uint256 registrationNumber,
        uint256 License,
        uint256 Phone,
        bytes32 email,
        address addressEther
    )
        external
        returns (
            //Going to oracle to verify company details
            bytes32 isApproved
            //if info is true, isApproved ==true, or else false
        );

    function proposalRejection(bytes32 isApproved) external;
    //if isApproved ==false, proposal will be rejected
}
