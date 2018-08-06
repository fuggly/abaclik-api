//
//  TypeEnum.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_TYPEENUMHELPER
#define APIMATIC_TYPEENUMHELPER

#include "TypeEnum.h"

/**
* Helper class interface for TypeEnum to NSString conversion
*/
@interface TypeEnumHelper : NSObject

+(id) stringFromTypeEnum:(enum TypeEnum) typeEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromTypeEnumArray:(NSArray<NSNumber*>*) array;


+(enum TypeEnum) typeEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) typeEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif