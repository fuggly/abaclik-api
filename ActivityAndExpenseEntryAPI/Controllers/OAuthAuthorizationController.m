//
//  OAuthAuthorizationController.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "OAuthAuthorizationController.h"

@implementation OAuthAuthorizationController

/**
* Create a new OAuth 2 token.
* @param    authorization    Required parameter: Authorization header in Basic auth format
* @param    code    Required parameter: Authorization Code
* @param    redirectUri    Required parameter: Redirect Uri
* @param    fieldParameters    Additional optional form parameters are supported by this endpoint
* @return	Returns the void response from the API call */
- (void) createRequestTokenAsyncWithAuthorization:(NSString*) authorization
                code:(NSString*) code
                redirectUri:(NSString*) redirectUri
                fieldParameters:(NSDictionary*) fieldParameters
                completionBlock:(CompletedPostRequestToken) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/token"];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"grant_type": @"authorization_code",
        @"code": code,
        @"redirect_uri": redirectUri
    }];

    //optional form parameters
    [_parameters addEntriesFromDictionary: fieldParameters];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Authorization": authorization
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[OAuthProviderException alloc] initWithReason: @"OAuth 2 provider returned an error."
                                               andContext:_context];
         else if (_response.statusCode == 401)
             _statusError = [[OAuthProviderException alloc] initWithReason: @"OAuth 2 provider says client authentication failed."
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             OAuthToken* _result = (OAuthToken*) [APIHelper jsonDeserialize: _strResult
                toClass: OAuthToken.class];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Obtain a new access token using a refresh token
* @param    authorization    Required parameter: Authorization header in Basic auth format
* @param    refreshToken    Required parameter: Refresh token
* @param    scope    Optional parameter: Requested scopes as a space-delimited list.
* @param    fieldParameters    Additional optional form parameters are supported by this endpoint
* @return	Returns the void response from the API call */
- (void) createRefreshTokenAsyncWithAuthorization:(NSString*) authorization
                refreshToken:(NSString*) refreshToken
                scope:(NSString*) scope
                fieldParameters:(NSDictionary*) fieldParameters
                completionBlock:(CompletedPostRefreshToken) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/token"];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"grant_type": @"refresh_token",
        @"refresh_token": refreshToken,
        @"scope": (nil != scope) ? scope : [NSNull null]
    }];

    //optional form parameters
    [_parameters addEntriesFromDictionary: fieldParameters];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Authorization": authorization
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[OAuthProviderException alloc] initWithReason: @"OAuth 2 provider returned an error."
                                               andContext:_context];
         else if (_response.statusCode == 401)
             _statusError = [[OAuthProviderException alloc] initWithReason: @"OAuth 2 provider says client authentication failed."
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             OAuthToken* _result = (OAuthToken*) [APIHelper jsonDeserialize: _strResult
                toClass: OAuthToken.class];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end