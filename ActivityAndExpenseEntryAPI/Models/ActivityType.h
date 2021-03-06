//
//  ActivityType.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ACTIVITYTYPE
#define APIMATIC_ACTIVITYTYPE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Enumerator.h"
#import "Unit.h"
#import "InputFormatEnum.h"
#import "InputFormatEnumHelper.h"
#import "SubTypeEnum.h"
#import "SubTypeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol ActivityType
@end

@interface ActivityType : Enumerator

/**
* A subset of UCUM codes with a descriptive name.
* UCUM Specification: http://unitsofmeasure.org/ucum.html
*/
@property Unit* unit;

/**
* input format specifier
*/
@property enum InputFormatEnum inputFormat;
@property NSString* inputFormatString;

/**
* TODO: Write general description for this field
*/
@property enum SubTypeEnum subType;
@property NSString* subTypeString;

/**
* TODO: Write general description for this field
*/
@property NSNumber* billable;


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
