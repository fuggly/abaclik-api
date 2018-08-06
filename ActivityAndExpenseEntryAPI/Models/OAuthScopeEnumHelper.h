//
//  OAuthScopeEnum.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_OAUTHSCOPEENUMHELPER
#define APIMATIC_OAUTHSCOPEENUMHELPER

#include "OAuthScopeEnum.h"

/**
* Helper class interface for OAuthScopeEnum to NSString conversion
*/
@interface OAuthScopeEnumHelper : NSObject

+(id) stringFromOAuthScopeEnum:(enum OAuthScopeEnum) oAuthScopeEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromOAuthScopeEnumArray:(NSArray<NSNumber*>*) array;


+(enum OAuthScopeEnum) oAuthScopeEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) oAuthScopeEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif