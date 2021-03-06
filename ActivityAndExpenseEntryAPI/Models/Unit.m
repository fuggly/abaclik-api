//
//  Unit.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "Unit.h"

@implementation Unit

/**
* The ucum code.
* See following sections in the UCUM specification:
* * TABLES OF TERMINAL SYMBOLS / PREFIXES
* * TABLES OF TERMINAL SYMBOLS / BASE UNITS
* * EXAMPLES FOR SOME NON-UNITS
*/
@synthesize code;

/**
* TODO: Write general description for this method
*/
@synthesize descriptiveName;

 /**
 * For serialization of enum CodeEnum type property as NSString*
 */
-(id) JSONObjectForCode
{
     
    return [CodeEnumHelper stringFromCodeEnum:(enum CodeEnum) code withDefault: nil];

}

/**
 * For deserialization of enum CodeEnum type property from NSString*
 */
 
-(void)setCodeWithNSString:(NSString*) strValue
{
    code = [CodeEnumHelper codeEnumFromString:(NSString*) strValue];
  _codeString = strValue;
}




/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"code": @"code",
        @"descriptiveName": @"descriptiveName"  
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
