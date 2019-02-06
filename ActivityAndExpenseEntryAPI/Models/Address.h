//
//  Address.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ADDRESS
#define APIMATIC_ADDRESS

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol Address
@end

@interface Address : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* name;

/**
* TODO: Write general description for this field
*/
@property NSString* vatNumber;

/**
* TODO: Write general description for this field
*/
@property NSString* firstname;

/**
* TODO: Write general description for this field
*/
@property NSString* lastname;

/**
* TODO: Write general description for this field
*/
@property NSString* street;

/**
* TODO: Write general description for this field
*/
@property NSString* crossStreet;

/**
* TODO: Write general description for this field
*/
@property NSString* houseNumber;

/**
* TODO: Write general description for this field
*/
@property NSString* district;

/**
* TODO: Write general description for this field
*/
@property NSString* postcode;

/**
* TODO: Write general description for this field
*/
@property NSString* city;

/**
* TODO: Write general description for this field
*/
@property NSString* state;

/**
* TODO: Write general description for this field
*/
@property NSString* country;

/**
* TODO: Write general description for this field
*/
@property NSString* countryCode;


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