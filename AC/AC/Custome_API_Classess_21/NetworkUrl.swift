//
//  NetworkUrl.swift
//  TANetworkingSwift
//
//  Created by Girijesh Kumar on 09/01/16.
//  Copyright © 2016 Girijesh Kumar. All rights reserved.
//

import Foundation
import UIKit

/** --------------------------------------------------------
* HTTP Basic Authentication
*	--------------------------------------------------------
*/

let kHTTPUsername           =   ""
let kHTTPPassword           =   ""
//let kDeviceName             = "iOS" //ios/ Andoid
let OS                      =   UIDevice.current.systemVersion
let kAppVersion             =   "1.0"
let kDeviceModel            =   UIDevice.current.model
let kAPIKEY                 =   ""
let kAppName                =   "ACE"

let kContentValue   = "application/json" //"application/x-www-form-urlencoded"let kToken          = "token"
let kLanguage       = "language"
let kBundleVersion  = "BundleVersion"
let kContentType    = "Content-Type"

/** --------------------------------------------------------
*		Techahead API Base URL defined by Targets.
*	--------------------------------------------------------
*/
let kAuthentication          = "Authentication"   //Header key of request  encrypt data
let kEncryptionKey           = "ACE"      //Encryption key replace this with your projectname


//#if DEBUG
//    static int ddLogLevel = LOG_LEVEL_VERBOSE;
//    #elif TEST
//    static int ddLogLevel = LOG_LEVEL_INFO;
//    #elif STAGE
//    static int ddLogLevel = LOG_LEVEL_WARN;
//    #else
//    static int ddLogLevel = LOG_LEVEL_ERROR;
//    #endif
    /*****************************************************************************/
    /* Entry/exit trace macros                                                   */
    /*****************************************************************************/
   // #define TRC_ENTRY()    DDLogVerbose(@"ENTRY: %s:%d:", __PRETTY_FUNCTION__,__LINE__);
   // #define TRC_EXIT()     DDLogVerbose(@"EXIT:  %s:%d:", __PRETTY_FUNCTION__,__LINE__);
    
    
/** --------------------------------------------------------
*		Used Web Services Name
*	--------------------------------------------------------
*/

//let kIMAGE_BASEURL                 = ""

let kBASEURL                         = ""
let kNameLanguage                    = "getlanguage"


/** --------------------------------------------------------
 *        Colour Code defined by Targets.
 *  --------------------------------------------------------
 */

let kColorBlueTheme               = "#1E1EE2"



/** --------------------------------------------------------
 *        String Multilingual Keys defined by Targets.
 *  --------------------------------------------------------
 */
