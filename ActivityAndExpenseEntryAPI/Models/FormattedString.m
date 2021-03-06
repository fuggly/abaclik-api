//
//  FormattedString.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "FormattedString.h"

@implementation FormattedString

/**
* untranslated default format string, which must take all arguments provided in formatStringArgs, if any
*/
@synthesize defaultFormatString;

/**
* global identifier for a translatable format string
*/
@synthesize formatStringId;

/**
* format string args for defaultFormatString or the format string identified by formatStringId
*/
@synthesize formatStringArgs;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"defaultFormatString": @"defaultFormatString",
        @"formatStringId": @"formatStringId",
        @"formatStringArgs": @"formatStringArgs"  
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