
####High number of pedestrian strikes
ACCIDENT %>%
    aggregate(ACCIDENT_NO ~ Accident.Type.Desc, ., length) %>%
     .[order(.$ACCIDENT_NO),]

####Lots of "Fell from vehicle"
ACCIDENT_EVENT %>% 
    aggregate(ACCIDENT_NO ~ Event.Type.Desc, ., length) %>%
    .[order(.$ACCIDENT_NO),]

####Non human/car collisions
ACCIDENT_EVENT %>% 
    aggregate(ACCIDENT_NO ~ Object.Type.Desc, ., length) %>%
    .[order(.$ACCIDENT_NO),]

####Maybe have a look at DCA by injury types
ACCIDENT %>%
    aggregate(ACCIDENT_NO ~ DCA.Description, ., length) %>%
    .[order(.$ACCIDENT_NO),]


####Maybe have a look at DCA by injury types
ACCIDENT %>%
    aggregate(NO_PERSONS ~  DCA.Description ,., sum) %>%
    .[order(.$NO_PERSONS),]


####Ho hum
ACCIDENT %>%
    aggregate(ACCIDENT_NO ~ Road.Geometry.Desc, ., length) %>%
    .[order(.$ACCIDENT_NO),]

####Maybe raining is interesting?
ATMOSPHERIC_COND %>%
    aggregate(ACCIDENT_NO ~ Atmosph.Cond.Desc, ., length) %>%
    .[order(.$ACCIDENT_NO),]


####Bicyclists
PERSON %>%
    aggregate(ACCIDENT_NO ~ Road.User.Type.Desc, ., length) %>%
    .[order(.$ACCIDENT_NO),]



####Wet
ROAD_SURFACE_COND %>%
    aggregate(ACCIDENT_NO ~ Surface.Cond.Desc, ., length) %>%
    .[order(.$ACCIDENT_NO),]
