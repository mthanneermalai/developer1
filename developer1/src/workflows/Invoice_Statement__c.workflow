<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Final_approval_status</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Final approval status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_rejection_status</fullName>
        <field>Status__c</field>
        <literalValue>Open</literalValue>
        <name>Final rejection status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>initial_approval_status</fullName>
        <field>Status__c</field>
        <literalValue>Pending</literalValue>
        <name>initial approval status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
