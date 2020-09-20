**Description of Tidy data Set**
**Variables in the data set**
Tidy data contains 180 rows and 81 columns. Each row contains the average of each variable for each activity and each subject.

**Only the variables including mean and standard deviation were kept in the tidy data set.**

mean: Mean value
std: Standard deviation

**The data were grouped by subject and activity type.**
Subject column is numbered sequentially from 1 to 30. Activity column has 6 types as listed below.

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

**The tidy data contains 81 columns (79 activity labels).**
 [1] "subject"                                                       
 [2] "activitytype"                                                  
 [3] "timeDomainBodyAccelerometerMeanX"                              
 [4] "timeDomainBodyAccelerometerMeanY"                              
 [5] "timeDomainBodyAccelerometerMeanZ"                              
 [6] "timeDomainBodyAccelerometerStandardDeviationX"                 
 [7] "timeDomainBodyAccelerometerStandardDeviationY"                 
 [8] "timeDomainBodyAccelerometerStandardDeviationZ"                 
 [9] "timeDomainGravityAccelerometerMeanX"                           
[10] "timeDomainGravityAccelerometerMeanY"                           
[11] "timeDomainGravityAccelerometerMeanZ"                           
[12] "timeDomainGravityAccelerometerStandardDeviationX"              
[13] "timeDomainGravityAccelerometerStandardDeviationY"              
[14] "timeDomainGravityAccelerometerStandardDeviationZ"              
[15] "timeDomainBodyAccelerometerJerkMeanX"                          
[16] "timeDomainBodyAccelerometerJerkMeanY"                          
[17] "timeDomainBodyAccelerometerJerkMeanZ"                          
[18] "timeDomainBodyAccelerometerJerkStandardDeviationX"             
[19] "timeDomainBodyAccelerometerJerkStandardDeviationY"             
[20] "timeDomainBodyAccelerometerJerkStandardDeviationZ"             
[21] "timeDomainBodyGyroscopeMeanX"                                  
[22] "timeDomainBodyGyroscopeMeanY"                                  
[23] "timeDomainBodyGyroscopeMeanZ"                                  
[24] "timeDomainBodyGyroscopeStandardDeviationX"                     
[25] "timeDomainBodyGyroscopeStandardDeviationY"                     
[26] "timeDomainBodyGyroscopeStandardDeviationZ"                     
[27] "timeDomainBodyGyroscopeJerkMeanX"                              
[28] "timeDomainBodyGyroscopeJerkMeanY"       
[29] "timeDomainBodyGyroscopeJerkMeanZ"                              
[30] "timeDomainBodyGyroscopeJerkStandardDeviationX"                 
[31] "timeDomainBodyGyroscopeJerkStandardDeviationY"                 
[32] "timeDomainBodyGyroscopeJerkStandardDeviationZ"                 
[33] "timeDomainBodyAccelerometerMagnitudeMean"                      
[34] "timeDomainBodyAccelerometerMagnitudeStandardDeviation"         
[35] "timeDomainGravityAccelerometerMagnitudeMean"                   
[36] "timeDomainGravityAccelerometerMagnitudeStandardDeviation"      
[37] "timeDomainBodyAccelerometerJerkMagnitudeMean"                  
[38] "timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
[39] "timeDomainBodyGyroscopeMagnitudeMean"                          
[40] "timeDomainBodyGyroscopeMagnitudeStandardDeviation"             
[41] "timeDomainBodyGyroscopeJerkMagnitudeMean"                      
[42] "timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"         
[43] "frequencyDomainBodyAccelerometerMeanX"                         
[44] "frequencyDomainBodyAccelerometerMeanY"                         
[45] "frequencyDomainBodyAccelerometerMeanZ"                         
[46] "frequencyDomainBodyAccelerometerStandardDeviationX"            
[47] "frequencyDomainBodyAccelerometerStandardDeviationY"            
[48] "frequencyDomainBodyAccelerometerStandardDeviationZ"            
[49] "frequencyDomainBodyAccelerometerMeanFrequencyX"                
[50] "frequencyDomainBodyAccelerometerMeanFrequencyY"                
[51] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                
[52] "frequencyDomainBodyAccelerometerJerkMeanX"                     
[53] "frequencyDomainBodyAccelerometerJerkMeanY"                     
[54] "frequencyDomainBodyAccelerometerJerkMeanZ"                     
[55] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
[56] "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
[57] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        
[58] "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
[59] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
[60] "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
[61] "frequencyDomainBodyGyroscopeMeanX"                             
[62] "frequencyDomainBodyGyroscopeMeanY"                             
[63] "frequencyDomainBodyGyroscopeMeanZ"                             
[64] "frequencyDomainBodyGyroscopeStandardDeviationX"        
[65] "frequencyDomainBodyGyroscopeStandardDeviationY"                
[66] "frequencyDomainBodyGyroscopeStandardDeviationZ"                
[67] "frequencyDomainBodyGyroscopeMeanFrequencyX"                    
[68] "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
[69] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                    
[70] "frequencyDomainBodyAccelerometerMagnitudeMean"                 
[71] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
[72] "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
[73] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
[74] "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
[75] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    
[76] "frequencyDomainBodyGyroscopeMagnitudeMean"                     
[77] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
[78] "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
[79] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
[80] "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
[81] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"        

**Units**
Subject variable is integer type. activitytype variable is matrix/array type. The rest of the variables are numeric type, normalized and bounded within [-1,1].