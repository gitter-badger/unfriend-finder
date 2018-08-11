import ballerina/http;
import biruntha13/facebook;

endpoint http:Listener listener {
    port:9090
};

@http:ServiceConfig {
    basepath: "/api"
}
service<http:Service> unfriendfinder bind listener{
    
    // The callback URI resource
    // @http:ResourceConfig {
    //     method: "GET",
    //     path: ""
    // }

    @http:ResourceConfig {
        method: "GET",
        path: "/hello"
    }
    sayHello(endpoint client, http:Request req) {
        
        http:Response response;
        json payload = {message: "Hello"};
        response.setJsonPayload(untaint payload, contentType = "application/json");

        _= client->respond(response);

    }

}

