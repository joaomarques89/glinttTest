xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="glintt/mdw/xsd/xsd_greatingschema";
(:: import schema at "Schema/xsd_GreatingSchema.xsd" ::)

import module namespace uti="saibot.airport/utilities" at "TimeAndDateLibrary.xqy";

declare variable $person as element() (:: schema-element(ns1:person) ::) external;

declare function local:produceGreenting($person as element() (:: schema-element(ns1:person) ::)) as element() (:: schema-element(ns1:greeting) ::) {
    <ns1:greeting>
        <ns1:Salutation>{fn:concat("Welcome Mr. or Mrs. ", $person/ns1:FirstName, " ", $person/ns1:LastName)}</ns1:Salutation>
        <ns1:Message>{fn:concat("Thank you for being here, at your agr of ", uti:age($person/ns1:Birthdate))}</ns1:Message>
    </ns1:greeting>
};

local:produceGreenting($person)