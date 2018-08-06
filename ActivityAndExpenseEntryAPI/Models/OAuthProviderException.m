
#import "OAuthProviderException.h"
@implementation OAuthProviderException

/**
* Error code
*/
@synthesize error;

/**
* Human-readable text providing additional information on error.
* Used to assist the client developer in understanding the error that occurred.
*/
@synthesize errorDescription;

/**
* A URI identifying a human-readable web page with information about the error, used to provide the client developer with additional information about the error
*/
@synthesize errorUri;


- (OAuthProviderException*) initWithReason: (NSString*) reason
                                  andContext: (HttpContext*) context
{
    self = [super initWithReason:reason andContext:context];
    return self;
}

- (void) unbox
{
    NSDictionary* data = [APIHelper jsonDeserializeObject: self.context.response.rawBody];
    error = [data objectForKey: @"error"];
    errorDescription = [data objectForKey: @"error_description"];
    errorUri = [data objectForKey: @"error_uri"];
}
@end