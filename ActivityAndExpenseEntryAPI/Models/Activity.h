//
//  Activity.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ACTIVITY
#define APIMATIC_ACTIVITY

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Entry.h"
#import "Location.h"
#import "Attachment.h"


//protocol defined for deserialization of JSON
@protocol Activity
@end

@interface Activity : Entry

/**
* ISO 8601:2004 date and time in UTC or with a specific offset
*/
@property NSString* startDate;

/**
* ISO 8601:2004 date and time in UTC or with a specific offset
*/
@property NSString* endDate;

/**
* ISO 8601:2004 date
*/
@property NSString* date;

/**
* TODO: Write general description for this field
*/
@property NSNumber* quantity;

/**
* TODO: Write general description for this field
*/
@property NSString* project;

/**
* TODO: Write general description for this field
*/
@property NSString* workPackage;

/**
* TODO: Write general description for this field
*/
@property NSString* activityType;

/**
* TODO: Write general description for this field
*/
@property Location* location;

/**
* TODO: Write general description for this field
*/
@property NSString* comment;

/**
* TODO move to properties (user fields)
*/
@property NSString* internalComment;

/**
* TODO move to properties (user fields)
*/
@property NSString* externalComment;

/**
* TODO: Write general description for this field
*/
@property NSArray<Attachment> * attachments;


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
