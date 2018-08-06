//
//  Enumerator.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ENUMERATOR
#define APIMATIC_ENUMERATOR

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol Enumerator
@end

@interface Enumerator : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* mid;

/**
* TODO: Write general description for this field
*/
@property NSString* label;

/**
* TODO: Write general description for this field
*/
@property NSString* customId;

/**
* TODO: Write general description for this field
*/
@property NSString* type;

/**
* TODO: Write general description for this field
*/
@property NSString* secondaryLabel;

/**
* TODO: Write general description for this field
*/
@property NSString* categoryLabel;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif