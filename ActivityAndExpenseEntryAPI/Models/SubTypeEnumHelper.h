//
//  SubTypeEnum.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SUBTYPEENUMHELPER
#define APIMATIC_SUBTYPEENUMHELPER

#include "SubTypeEnum.h"

/**
* Helper class interface for SubTypeEnum to NSString conversion
*/
@interface SubTypeEnumHelper : NSObject

+(id) stringFromSubTypeEnum:(enum SubTypeEnum) subTypeEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromSubTypeEnumArray:(NSArray<NSNumber*>*) array;


+(enum SubTypeEnum) subTypeEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) subTypeEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif