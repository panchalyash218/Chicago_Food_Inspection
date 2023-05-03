/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Chicago_DM.DM1
 *
 * Date Created : Saturday, February 25, 2023 21:32:46
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: Dim_Chicago_BusinessLicenses 
 */

CREATE TABLE Dim_Chicago_BusinessLicenses(
    LicenseSK                            int                IDENTITY(1,1),
    ID                                   char(16)           NOT NULL,
    License_ID                           int                NULL,
    Account_Number                       int                NULL,
    Legal_Name                           varchar(20)        NULL,
    Site_Number                          int                NULL,
    Doing_Business_As_Name               varchar(128)       NULL,
    Address                              varchar(80)        NULL,
    City                                 varchar(30)        NULL,
    State                                char(2)            NULL,
    Zip_Code                             char(5)            NULL,
    Ward                                 int                NULL,
    Precinct                             int                NULL,
    Ward_Precinct                        char(6)            NULL,
    Police_District                      int                NULL,
    License_Code                         int                NULL,
    License_Description                  varchar(60)        NULL,
    Business_Activity_ID                 varchar(81)        NULL,
    Business_Activity                    varchar(180000)    NULL,
    Application_Type                     char(6)            NULL,
    License_Number                       int                NULL,
    Application_Created_Date             varchar(10)        NULL,
    Application_Requirements_Complete    char(10)           NULL,
    Payment_Date                         char(10)           NULL,
    Conditional_Approval                 char(1)            NULL,
    License_Term_Start_Date              char(10)           NULL,
    License_Term_Expiration_Date         char(10)           NULL,
    License_Approved_For_Issuance        char(10)           NULL,
    Date_Issued                          char(10)           NULL,
    License_Status                       char(10)           NULL,
    License_Status_Change_Date           varchar(10)        NULL,
    SSA                                  int                NULL,
    Latitude                             float              NULL,
    Longitude                            float              NULL,
    Location                             char(40)           NULL,
    DI_CreateDate                        datetime           NULL,
    DI_WorkflowDirectory                 nvarchar(256)      NULL,
    DI_WorkflowFileName                  nvarchar(256)      NULL,
    CONSTRAINT PK5_6 PRIMARY KEY NONCLUSTERED (LicenseSK)
)

go


IF OBJECT_ID('Dim_Chicago_BusinessLicenses') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_BusinessLicenses >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_BusinessLicenses >>>'
go

/* 
 * TABLE: Dim_Chicago_FacilityType 
 */

CREATE TABLE Dim_Chicago_FacilityType(
    FacilitySK              int              IDENTITY(1,1),
    FacilityType            varchar(47)      NOT NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK5_5 PRIMARY KEY NONCLUSTERED (FacilitySK)
)

go


IF OBJECT_ID('Dim_Chicago_FacilityType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_FacilityType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_FacilityType >>>'
go

/* 
 * TABLE: Dim_Chicago_FoodInspectionResults 
 */

CREATE TABLE Dim_Chicago_FoodInspectionResults(
    ResultsSK               int              IDENTITY(1,1),
    Results                 varchar(20)      NOT NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK5_1 PRIMARY KEY NONCLUSTERED (ResultsSK)
)

go


IF OBJECT_ID('Dim_Chicago_FoodInspectionResults') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_FoodInspectionResults >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_FoodInspectionResults >>>'
go

/* 
 * TABLE: Dim_Chicago_FoodInspectionType 
 */

CREATE TABLE Dim_Chicago_FoodInspectionType(
    InspectionTypeSK        int              IDENTITY(1,1),
    InspectionType          varchar(41)      NOT NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK5_2 PRIMARY KEY NONCLUSTERED (InspectionTypeSK)
)

go


IF OBJECT_ID('Dim_Chicago_FoodInspectionType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_FoodInspectionType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_FoodInspectionType >>>'
go

/* 
 * TABLE: Dim_Chicago_FoodRiskCategory 
 */

CREATE TABLE Dim_Chicago_FoodRiskCategory(
    RiskSK                  int              IDENTITY(1,1),
    Risk                    char(15)         NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (RiskSK)
)

go


IF OBJECT_ID('Dim_Chicago_FoodRiskCategory') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_FoodRiskCategory >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_FoodRiskCategory >>>'
go

/* 
 * TABLE: Dim_Chicago_Geo 
 */

CREATE TABLE Dim_Chicago_Geo(
    GeoSK                   int              IDENTITY(1,1),
    Address                 varchar(51)      NOT NULL,
    City                    varchar(20)      NULL,
    State                   char(2)          NULL,
    Zip                     int              NULL,
    Latitude                char(18)         NULL,
    Longitude               char(18)         NULL,
    Location                char(40)         NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK5_4 PRIMARY KEY NONCLUSTERED (GeoSK)
)

go


IF OBJECT_ID('Dim_Chicago_Geo') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_Geo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_Geo >>>'
go

/* 
 * TABLE: Dim_Chicago_Restuarant 
 */

CREATE TABLE Dim_Chicago_Restuarant(
    RestaurantSK            int              IDENTITY(1,1),
    DBA_Name                varchar(79)      NOT NULL,
    AKA_Name                varchar(79)      NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK5_3 PRIMARY KEY NONCLUSTERED (RestaurantSK)
)

go


IF OBJECT_ID('Dim_Chicago_Restuarant') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_Restuarant >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_Restuarant >>>'
go

/* 
 * TABLE: Dim_Chicago_ViolationCodes_SCD 
 */

CREATE TABLE Dim_Chicago_ViolationCodes_SCD(
    ViolationSk             int             NOT NULL,
    ViolationCode           int             NULL,
    ViolationDescription    varchar(256)    NULL,
    Version                 varchar(20)     NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (ViolationSk)
)

go


IF OBJECT_ID('Dim_Chicago_ViolationCodes_SCD') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Chicago_ViolationCodes_SCD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Chicago_ViolationCodes_SCD >>>'
go

/* 
 * TABLE: FCT_Chicago_FoodInspections 
 */

CREATE TABLE FCT_Chicago_FoodInspections(
    InspectionID            int              IDENTITY(1,1),
    LicenseSK               int              NOT NULL,
    GeoSK                   int              NOT NULL,
    ResultSK                int              NOT NULL,
    RestaurantSK            int              NOT NULL,
    InspectionTypeSK        int              NOT NULL,
    FacilitySK              int              NOT NULL,
    RiskSK                  int              NOT NULL,
    InspectionDate          date             NULL,
    InspectionDateSK        int              NULL,
    LicenseNumber           int              NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (InspectionID)
)

go


IF OBJECT_ID('FCT_Chicago_FoodInspections') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Chicago_FoodInspections >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Chicago_FoodInspections >>>'
go

/* 
 * TABLE: FCT_Chicago_FoodInspections_Violation 
 */

CREATE TABLE FCT_Chicago_FoodInspections_Violation(
    InspectionID            int                 NOT NULL,
    ViolationSk             int                 NOT NULL,
    ViolationComment        nvarchar(180000)    NULL,
    DI_CreateDate           datetime            NULL,
    DI_WorkflowDirectory    nvarchar(256)       NULL,
    DI_WorkflowFileName     nvarchar(256)       NULL
)

go


IF OBJECT_ID('FCT_Chicago_FoodInspections_Violation') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Chicago_FoodInspections_Violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Chicago_FoodInspections_Violation >>>'
go

/* 
 * TABLE: FCT_Chicago_FoodInspections 
 */

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_BusinessLicenses10 
    FOREIGN KEY (LicenseSK)
    REFERENCES Dim_Chicago_BusinessLicenses(LicenseSK)
go

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_FacilityType11 
    FOREIGN KEY (FacilitySK)
    REFERENCES Dim_Chicago_FacilityType(FacilitySK)
go

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_FoodInspectionType13 
    FOREIGN KEY (InspectionTypeSK)
    REFERENCES Dim_Chicago_FoodInspectionType(InspectionTypeSK)
go

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_Restuarant14 
    FOREIGN KEY (RestaurantSK)
    REFERENCES Dim_Chicago_Restuarant(RestaurantSK)
go

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_FoodInspectionResults15 
    FOREIGN KEY (ResultSK)
    REFERENCES Dim_Chicago_FoodInspectionResults(ResultsSK)
go

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_FoodRiskCategory17 
    FOREIGN KEY (RiskSK)
    REFERENCES Dim_Chicago_FoodRiskCategory(RiskSK)
go

ALTER TABLE FCT_Chicago_FoodInspections ADD CONSTRAINT RefDim_Chicago_Geo18 
    FOREIGN KEY (GeoSK)
    REFERENCES Dim_Chicago_Geo(GeoSK)
go


/* 
 * TABLE: FCT_Chicago_FoodInspections_Violation 
 */

ALTER TABLE FCT_Chicago_FoodInspections_Violation ADD CONSTRAINT RefFCT_Chicago_FoodInspections6 
    FOREIGN KEY (InspectionID)
    REFERENCES FCT_Chicago_FoodInspections(InspectionID)
go

ALTER TABLE FCT_Chicago_FoodInspections_Violation ADD CONSTRAINT RefDim_Chicago_ViolationCodes_SCD7 
    FOREIGN KEY (ViolationSk)
    REFERENCES Dim_Chicago_ViolationCodes_SCD(ViolationSk)
go


