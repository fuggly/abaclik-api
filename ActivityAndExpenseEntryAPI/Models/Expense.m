//
//  Expense.m
//  ActivityAndExpenseEntryAPI
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "Expense.h"

@implementation Expense

/**
* ISO 8601:2004 date and time in UTC or with a specific offset
*/
@synthesize date;

/**
* TODO: Write general description for this method
*/
@synthesize quantity;

/**
* A subset of UCUM codes with a descriptive name.
* UCUM Specification: http://unitsofmeasure.org/ucum.html
*/
@synthesize unit;

/**
* TODO: Write general description for this method
*/
@synthesize amount;

/**
* TODO: Write general description for this method
*/
@synthesize currency;

/**
* TODO: Write general description for this method
*/
@synthesize creditCard;

/**
* TODO: Write general description for this method
*/
@synthesize project;

/**
* TODO: Write general description for this method
*/
@synthesize workPackage;

/**
* TODO: Write general description for this method
*/
@synthesize expenseType;

/**
* TODO: Write general description for this method
*/
@synthesize location;

/**
* TODO: Write general description for this method
*/
@synthesize comment;

/**
* TODO: Write general description for this method
*/
@synthesize internalComment;

/**
* TODO: Write general description for this method
*/
@synthesize externalComment;

/**
* TODO: Write general description for this method
*/
@synthesize attachments;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"date": @"date",
        @"quantity": @"quantity",
        @"unit": @"unit",
        @"amount": @"amount",
        @"currency": @"currency",
        @"creditCard": @"creditCard",
        @"project": @"project",
        @"workPackage": @"workPackage",
        @"expenseType": @"expenseType",
        @"location": @"location",
        @"comment": @"comment",
        @"internalComment": @"internalComment",
        @"externalComment": @"externalComment",
        @"attachments": @"attachments"  
    }];
    [map addEntriesFromDictionary: [super keyMap]];   

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end