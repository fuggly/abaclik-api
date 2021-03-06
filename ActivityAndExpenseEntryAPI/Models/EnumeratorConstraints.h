//
//  EnumeratorConstraints.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ENUMERATORCONSTRAINTS
#define APIMATIC_ENUMERATORCONSTRAINTS

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "EnumerationTypeEnum.h"
#import "EnumerationTypeEnumHelper.h"
#import "EntryTypeEnum.h"
#import "EntryTypeEnumHelper.h"
#import "JSONSchema.h"
#import "CombinationConstraintEntry.h"


//protocol defined for deserialization of JSON
@protocol EnumeratorConstraints
@end

@interface EnumeratorConstraints : JSONModel

/**
* TODO: Write general description for this field
*/
@property enum EnumerationTypeEnum enumeratorType;
@property NSString<Ignore>* enumeratorTypeString;

/**
* TODO: Write general description for this field
*/
@property NSString* enumeratorId;

/**
* for local constraint representation
*/
@property NSArray<NSNumber*>* assignableIn;

/**
* TODO: Write general description for this field
*/
@property JSONSchema* entrySchemes;

/**
* maps another EnumerationType to a restriction rule
*/
@property NSDictionary<NSString*, JSONModel<CombinationConstraintEntry>*>* combinationConstraints;


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
