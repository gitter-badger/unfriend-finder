import ballerina/http;
import biruntha13/facebook;

endpoint http:Listener listener {
    port:9090
};

service<http:Service> unfriendfinder bind listener{
    
}

