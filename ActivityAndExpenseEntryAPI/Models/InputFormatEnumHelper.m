//
//  InputFormatEnum.h
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#include "InputFormatEnumHelper.h"

/**
* Helper class implementation for InputFormatEnum to NSString conversion
*/
@implementation InputFormatEnumHelper

+(id) stringFromInputFormatEnum:(enum InputFormatEnum) inputFormatEnum withDefault: (id) defaultValue
{
    switch(inputFormatEnum)
    {
        case InputFormatSCALAR:
            return @"SCALAR";

        case InputFormatRANGE:
            return @"RANGE";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromInputFormatEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [InputFormatEnumHelper stringFromInputFormatEnum:(enum InputFormatEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum InputFormatEnum) inputFormatEnumFromString:(NSString*) strValue
{
    NSArray* InputFormatEnumArray = [NSArray arrayWithObjects:
                                        @"SCALAR",
                                        @"RANGE",
                                        nil];

    return (enum InputFormatEnum) [InputFormatEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) inputFormatEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ InputFormatEnumHelper inputFormatEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end