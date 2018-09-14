//
//  Activity.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "Activity.h"

@implementation Activity

/**
* ISO 8601:2004 date and time in UTC or with a specific offset
*/
@synthesize startDate;

/**
* ISO 8601:2004 date and time in UTC or with a specific offset
*/
@synthesize endDate;

/**
* ISO 8601:2004 date
*/
@synthesize date;

/**
* TODO: Write general description for this method
*/
@synthesize duration;

/**
* TODO: Write general description for this method
*/
@synthesize project;

/**
* TODO: Write general description for this method
*/
@synthesize workPackage;

/**
* TODO: Write general description for this method
*/
@synthesize activityType;

/**
* TODO: Write general description for this method
*/
@synthesize location;

/**
* TODO: Write general description for this method
*/
@synthesize comment;

/**
* TODO move to properties (user fields)
*/
@synthesize internalComment;

/**
* TODO move to properties (user fields)
*/
@synthesize externalComment;

/**
* TODO: Write general description for this method
*/
@synthesize attachments;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"start": @"startDate",
        @"end": @"endDate",
        @"date": @"date",
        @"quantity": @"quantity",
        @"project": @"project",
        @"workPackage": @"workPackage",
        @"activityType": @"activityType",
        @"location": @"location",
        @"comment": @"comment",
        @"internalComment": @"internalComment",
        @"externalComment": @"externalComment",
        @"attachments": @"attachments"  
    }];
    [map addEntriesFromDictionary: [super keyMap]];   

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
