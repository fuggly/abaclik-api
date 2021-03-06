//
//  CodeEnum.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CODEENUMHELPER
#define APIMATIC_CODEENUMHELPER

#include "CodeEnum.h"

/**
* Helper class interface for CodeEnum to NSString conversion
*/
@interface CodeEnumHelper : NSObject

+(id) stringFromCodeEnum:(enum CodeEnum) codeEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromCodeEnumArray:(NSArray<NSNumber*>*) array;


+(enum CodeEnum) codeEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) codeEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif