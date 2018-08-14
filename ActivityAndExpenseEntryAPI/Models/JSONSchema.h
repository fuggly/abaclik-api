//
//  JSONSchema.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_JSONSCHEMA
#define APIMATIC_JSONSCHEMA

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "TypeEnum.h"
#import "TypeEnumHelper.h"
#import "FormatEnum.h"
#import "FormatEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol JSONSchema
@end

@interface JSONSchema : JSONModel

/**
* TODO: Write general description for this field
*/
@property enum TypeEnum type;
@property NSString* typeString;

/**
* TODO: Write general description for this field
*/
@property NSString* description;

/**
* TODO: Write general description for this field
*/
@property NSArray* enumType;

/**
* TODO: Write general description for this field
*/
@property NSNumber* isNullable;

/**
* TODO: Write general description for this field
*/
@property enum FormatEnum format;
@property NSString* formatString;

/**
* TODO: Write general description for this field
*/
@property NSString* constantValue;

/**
* TODO: Write general description for this field
*/
@property NSString* defaultValue;
@property NSString* comment;

/**
* TODO: Write general description for this field
*/
@property NSNumber* minLength;

/**
* TODO: Write general description for this field
*/
@property NSNumber* maxLength;

/**
* TODO: Write general description for this field
*/
@property NSString* pattern;

/**
* used for numbers and formatted values (e.g. for date-time values)
*/
@property NSNumber* minimum;

/**
* used for numbers and formatted values (e.g. for date-time values)
*/
@property NSNumber* maximum;

/**
* TODO: Write general description for this field
*/
@property NSNumber* multipleOf;

/**
* TODO: Write general description for this field
*/
@property NSObject* items;

/**
* TODO: Write general description for this field
*/
@property NSNumber* minItems;

/**
* TODO: Write general description for this field
*/
@property NSNumber* maxItems;

/**
* schemes for individual properties
*/
@property NSDictionary* properties;
//@property NSDictionary<NSString*, JSONSchema*>* properties; // should be htis???

/**
* A listing of all properties which must be present (does not determine nullability)
*/
@property NSArray* required;

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
