# Getting started

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

Open the project workspace using the (ActivityAndExpenseEntryAPI.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the ActivityAndExpenseEntryAPI library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'ActivityAndExpenseEntryAPI', :path => 'Vendor/ActivityAndExpenseEntryAPI'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the ActivityAndExpenseEntryAPI.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=Activity%20and%20Expense%20Entry%20API-ObjC&workspaceName=ActivityAndExpenseEntryAPI&projectName=ActivityAndExpenseEntryAPI&rootNamespace=ActivityAndExpenseEntryAPI)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| oAuthClientId | OAuth 2 Client ID |
| oAuthClientSecret | OAuth 2 Client Secret |
| oAuthRedirectUri | OAuth 2 Redirection endpoint or Callback Uri |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_OAuthClientId = "Configuration_OAuthClientId"; // OAuth 2 Client ID
Configuration_OAuthClientSecret = "Configuration_OAuthClientSecret"; // OAuth 2 Client Secret
Configuration_OAuthRedirectUri = "Configuration_OAuthRedirectUri"; // OAuth 2 Redirection endpoint or Callback Uri

```

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [ClikController](#clik_controller)

## <a name="clik_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ClikController") ClikController

### Get singleton instance
```objc
Clik* clik = [[Clik alloc]init] ;
```

### <a name="list_enumerators_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.listEnumeratorsAsyncWithMandant") listEnumeratorsAsyncWithMandant

> List enumerators


```objc
function listEnumeratorsAsyncWithMandant:(NSString*) mandant
                type:(enum EnumerationTypeEnum) type
                parentProject:(NSString*) parentProject
                xPage:(NSString*) xPage
                xPageSize:(NSNumber*) xPageSize
                completionBlock:(CompletedGetListEnumerators) onCompleted(mandant type : type parentProject : parentProject xPage : xPage xPageSize : xPageSize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| type |  ``` Required ```  | The enumerator type |
| parentProject |  ``` Optional ```  | The parent project to filter by |
| xPage |  ``` Optional ```  | A server defined page reference returned in the header "x-next-page" |
| xPageSize |  ``` Optional ```  ``` DefaultValue ```  | How many items to return in a page |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    EnumerationTypeEnum type = PROJECT;
    NSString* parentProject = @"parentProject";
    NSString* xPage = @"x-page";
    NSNumber* xPageSize = 129;

    [self.clik listEnumeratorsAsyncWithMandant: mandant type : type parentProject : parentProject xPage : xPage xPageSize : xPageSize  completionBlock:^(BOOL success, HttpContext* context, NSArray<Enumerator> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | Enumeration does not exist |
| 0 | unexpected error |



### <a name="get_read_a_specific_enumerator_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.getReadASpecificEnumeratorAsyncWithMandant") getReadASpecificEnumeratorAsyncWithMandant

> Read a specific enumerator


```objc
function getReadASpecificEnumeratorAsyncWithMandant:(NSString*) mandant
                type:(enum EnumerationTypeEnum) type
                mid:(NSString*) mid
                completionBlock:(CompletedGetReadASpecificEnumerator) onCompleted(mandant type : type mid : mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| type |  ``` Required ```  | The enumerator type |
| mid |  ``` Required ```  | The id of the enumerator to retrieve |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    EnumerationTypeEnum type = PROJECT;
    NSString* mid = @"id";

    [self.clik getReadASpecificEnumeratorAsyncWithMandant: mandant type : type mid : mid  completionBlock:^(BOOL success, HttpContext* context, Enumerator* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | Enumerator does not exist |
| 0 | unexpected error |



### <a name="get_read_constraints_for_a_single_enumerator_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.getReadConstraintsForASingleEnumeratorAsyncWithMandant") getReadConstraintsForASingleEnumeratorAsyncWithMandant

> Read constraints for a single enumerator


```objc
function getReadConstraintsForASingleEnumeratorAsyncWithMandant:(NSString*) mandant
                enumeratorType:(enum EnumerationTypeEnum) enumeratorType
                combinationConstraints:(BOOL) combinationConstraints
                xPage:(NSString*) xPage
                xPageSize:(NSNumber*) xPageSize
                completionBlock:(CompletedGetReadConstraintsForASingleEnumerator) onCompleted(mandant enumeratorType : enumeratorType combinationConstraints : combinationConstraints xPage : xPage xPageSize : xPageSize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| enumeratorType |  ``` Required ```  | The enumerator type to retrieve restrictions for |
| combinationConstraints |  ``` Required ```  ``` DefaultValue ```  | Includes/excludes the property combinationConstraints.
Must be set explicitly to false for performance reasons. |
| xPage |  ``` Optional ```  | A server defined page reference returned in the header "x-next-page" |
| xPageSize |  ``` Optional ```  ``` DefaultValue ```  | How many items to return in a page |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    EnumerationTypeEnum enumeratorType = PROJECT;
    BOOL combinationConstraints = true;
    NSString* xPage = @"x-page";
    NSNumber* xPageSize = 129;

    [self.clik getReadConstraintsForASingleEnumeratorAsyncWithMandant: mandant enumeratorType : enumeratorType combinationConstraints : combinationConstraints xPage : xPage xPageSize : xPageSize  completionBlock:^(BOOL success, HttpContext* context, NSArray<EnumeratorConstraints> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | Enumeration does not exist |
| 0 | unexpected error |



### <a name="get_read_constraints_for_a_single_enumerator_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.getReadConstraintsForASingleEnumeratorAsyncWithMandant") getReadConstraintsForASingleEnumeratorAsyncWithMandant

> Read constraints for a single enumerator


```objc
function getReadConstraintsForASingleEnumeratorAsyncWithMandant:(NSString*) mandant
                enumeratorType:(enum EnumerationTypeEnum) enumeratorType
                enumeratorId:(NSString*) enumeratorId
                combinationConstraints:(NSNumber*) combinationConstraints
                completionBlock:(CompletedGetReadConstraintsForASingleEnumerator) onCompleted(mandant enumeratorType : enumeratorType enumeratorId : enumeratorId combinationConstraints : combinationConstraints)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| enumeratorType |  ``` Required ```  | The enumerator type to retrieve restrictions for |
| enumeratorId |  ``` Required ```  | The id of the enumerator to retrieve restrictions for |
| combinationConstraints |  ``` Optional ```  ``` DefaultValue ```  | Includes/excludes the property combinationConstraints |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    EnumerationTypeEnum enumeratorType = PROJECT;
    NSString* enumeratorId = @"enumeratorId";
    NSNumber* combinationConstraints = true;

    [self.clik getReadConstraintsForASingleEnumeratorAsyncWithMandant: mandant enumeratorType : enumeratorType enumeratorId : enumeratorId combinationConstraints : combinationConstraints  completionBlock:^(BOOL success, HttpContext* context, EnumeratorConstraints* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | The enumeration or enumerator does not exist |
| 0 | unexpected error |



### <a name="list_entries_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.listEntriesAsyncWithMandant") listEntriesAsyncWithMandant

> List entries


```objc
function listEntriesAsyncWithMandant:(NSString*) mandant
                status:(NSArray<NSNumber*>*) status
                startDate:(NSString*) startDate
                xPage:(NSString*) xPage
                xPageSize:(NSNumber*) xPageSize
                completionBlock:(CompletedGetListEntries) onCompleted(mandant status : status startDate : startDate xPage : xPage xPageSize : xPageSize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| status |  ``` Optional ```  ``` Collection ```  | One or more statuses (disjunctive) |
| startDate |  ``` Optional ```  | The minimum date of entries |
| xPage |  ``` Optional ```  | A server defined page reference returned in the header "x-next-page" |
| xPageSize |  ``` Optional ```  ``` DefaultValue ```  | How many items to return in a page |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    NSArray<NSNumber*>* status = @[draft,draft,draft];
    NSString* startDate = @"startDate";
    NSString* xPage = @"x-page";
    NSNumber* xPageSize = 129;

    [self.clik listEntriesAsyncWithMandant: mandant status : status startDate : startDate xPage : xPage xPageSize : xPageSize  completionBlock:^(BOOL success, HttpContext* context, NSArray<Entry> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 0 | unexpected error |



### <a name="create_or_update_one_or_multiple_entries_independently_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.createOrUpdateOneOrMultipleEntriesIndependentlyAsyncWithMandant") createOrUpdateOneOrMultipleEntriesIndependentlyAsyncWithMandant

> Create or update one or multiple entries independently


```objc
function createOrUpdateOneOrMultipleEntriesIndependentlyAsyncWithMandant:(NSString*) mandant
                body:(NSArray<Entry> *) body
                completionBlock:(CompletedPostCreateOrUpdateOneOrMultipleEntriesIndependently) onCompleted(mandant body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| body |  ``` Optional ```  ``` Collection ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    NSArray<Entry> * body = (NSArray<Entry>*) [Entry arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: @"nil"] error: nil];

    [self.clik createOrUpdateOneOrMultipleEntriesIndependentlyAsyncWithMandant: mandant body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Entry> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed or invalid request |
| 0 | unexpected error |



### <a name="get_read_an_entry_by_its_id_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.getReadAnEntryByItsIdAsyncWithMandant") getReadAnEntryByItsIdAsyncWithMandant

> Read an entry by its id


```objc
function getReadAnEntryByItsIdAsyncWithMandant:(NSString*) mandant
                mid:(NSString*) mid
                completionBlock:(CompletedGetReadAnEntryByItsId) onCompleted(mandant mid : mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| mid |  ``` Required ```  | The id of the entry to retrieve |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    NSString* mid = @"id";

    [self.clik getReadAnEntryByItsIdAsyncWithMandant: mandant mid : mid  completionBlock:^(BOOL success, HttpContext* context, Entry* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | Entry not found |
| 0 | unexpected error |



### <a name="create_or_update_an_entry_by_id_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.createOrUpdateAnEntryByIdAsyncWithMandant") createOrUpdateAnEntryByIdAsyncWithMandant

> Create or update an entry by id


```objc
function createOrUpdateAnEntryByIdAsyncWithMandant:(NSString*) mandant
                mid:(NSString*) mid
                body:(Entry*) body
                completionBlock:(CompletedPutCreateOrUpdateAnEntryById) onCompleted(mandant mid : mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| mid |  ``` Required ```  | The id of the entry to retrieve |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    NSString* mid = @"id";
    Entry* body = [[Entry alloc]init];

    [self.clik createOrUpdateAnEntryByIdAsyncWithMandant: mandant mid : mid body : body  completionBlock:^(BOOL success, HttpContext* context, Entry* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed or invalid request |
| 0 | unexpected error |



### <a name="delete_a_an_entry_by_id_async_with_mandant"></a>![Method: ](https://apidocs.io/img/method.png ".ClikController.deleteAAnEntryByIdAsyncWithMandant") deleteAAnEntryByIdAsyncWithMandant

> Delete a an entry by id


```objc
function deleteAAnEntryByIdAsyncWithMandant:(NSString*) mandant
                mid:(NSString*) mid
                completionBlock:(CompletedDeleteAAnEntryById) onCompleted(mandant mid : mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mandant |  ``` Required ```  | The mandant to operate on |
| mid |  ``` Required ```  | The id of the entry to retrieve |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mandant = @"mandant";
    NSString* mid = @"id";

    [self.clik deleteAAnEntryByIdAsyncWithMandant: mandant mid : mid  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | Entry not found |
| 0 | unexpected error |



[Back to List of Controllers](#list_of_controllers)



