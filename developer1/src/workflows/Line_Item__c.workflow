<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>insert_merchandise_price</fullName>
        <field>Unit_Price__c</field>
        <formula>merchandise__r.price__c</formula>
        <name>insert merchandise price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_stock_inventory</fullName>
        <field>Total_inventory__c</field>
        <formula>IF (
ISNEW(),
merchandise__r.Total_inventory__c - Units_Sold__c ,
merchandise__r.Total_inventory__c - (Units_Sold__c - PRIORVALUE(Units_Sold__c))
)</formula>
        <name>update stock inventory</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>merchandise__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Line Item Created</fullName>
        <actions>
            <name>insert_merchandise_price</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Line item updated</fullName>
        <actions>
            <name>update_stock_inventory</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Invoice_Statement__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
