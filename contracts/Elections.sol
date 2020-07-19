// smart contracts is a place where we write our business logic
// declaring version of solidity
pragma solidity ^0.5.0;

// contract is a class
contract Election{
    // model a candidate
    struct Candidate
    {
        uint id;
        string name;
        uint voteCount;
    }
    // store candidate using a hash 
    mapping(uint=>Candidate) public candidates;
    //mapping cannot  be iterated and it has no size method

    // count of candidates
    // default value is 0
    uint public CandidatesCount;
    // constructor
    constructor() public{
        // constructor invoking candidates
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
    // we only want our contract to invoke this function so we make it private
    function addCandidate(string memory _name) private{
        // increment the count of candidates
        CandidatesCount++;
        // refer candidates mapping
        candidates[CandidatesCount] = Candidate(CandidatesCount, _name,0);
    }
}