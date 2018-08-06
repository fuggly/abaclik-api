//
//  EnumeratorConstraints.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "EnumeratorConstraints.h"

@implementation EnumeratorConstraints

/**
* TODO: Write general description for this method
*/
@synthesize enumeratorType;

/**
* TODO: Write general description for this method
*/
@synthesize enumeratorId;

/**
* for local constraint representation
*/
@synthesize assignableIn;

/**
* TODO: Write general description for this method
*/
@synthesize entrySchemes;

/**
* maps another EnumerationType to a restriction rule
*/
@synthesize combinationConstraints;

 /**
 * For serialization of enum EnumerationTypeEnum type property as NSString*
 */
-(id) JSONObjectForEnumeratorType
{
     
    return [EnumerationTypeEnumHelper stringFromEnumerationTypeEnum:(enum EnumerationTypeEnum) enumeratorType withDefault: nil];

}

/**
 * For deserialization of enum EnumerationTypeEnum type property from NSString*
 */
 
-(void)setEnumeratorTypeWithNSString:(NSString*) strValue
{
    enumeratorType = [EnumerationTypeEnumHelper enumerationTypeEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum EntryTypeEnum type property as NSString*
 */
-(id) JSONObjectForAssignableIn
{
      return [EntryTypeEnumHelper stringArrayFromEntryTypeEnumArray:assignableIn];

}

/**
 * For deserialization of enum EntryTypeEnum type property from NSArray<NSString*>*
 */
  -(void)setAssignableInWithNSArray:(NSArray<NSString*>*) array
{
    assignableIn = [EntryTypeEnumHelper entryTypeEnumArrayFromStringArray: array];
}





/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"enumeratorType": @"enumeratorType",
        @"enumeratorId": @"enumeratorId",
        @"assignableIn": @"assignableIn",
        @"entrySchemes": @"entrySchemes",
        @"combinationConstraints": @"combinationConstraints"  
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