xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

module namespace ns1="saibot.airport/utilities";

declare function ns1:age($birthdate as xs:date) as xs:string {
    xs:string(fn:floor((fn:days-from-duration(xs:dayTimeDuration((fn:current-date() - $birthdate)) )) div 365))
};