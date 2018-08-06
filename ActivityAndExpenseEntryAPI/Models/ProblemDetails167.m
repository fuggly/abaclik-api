//
//  ProblemDetails167.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ProblemDetails167.h"

@implementation ProblemDetails167

/**
* An absolute URI [RFC3986] that identifies the
* problem type. When dereferenced, it SHOULD provide human-readable
* documentation for the problem type (e.g., using HTML
* [W3C.REC-html401-19991224]). When this member is not present, its
* value is assumed to be "about:blank".
*/
@synthesize type;

/**
* A short, human-readable summary of the problem
* type. It SHOULD NOT change from occurrence to occurrence of the
* problem, except for purposes of localisation.
*/
@synthesize title;

/**
* The HTTP status code ([RFC2616], Section 6)
* generated by the origin server for this occurrence of the problem.
*/
@synthesize status;

/**
* An human readable explanation specific to this
* occurrence of the problem.
*/
@synthesize detail;

/**
* An absolute URI that identifies the specific
* occurrence of the problem. It may or may not yield further
* information if dereferenced.
*/
@synthesize instance;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"type": @"type",
        @"title": @"title",
        @"status": @"status",
        @"detail": @"detail",
        @"instance": @"instance"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end