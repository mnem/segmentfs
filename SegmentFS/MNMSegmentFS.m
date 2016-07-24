//
//  MNMSegmentFS.m
//  SegmentFS
//
//  Created by David Wagner on 24/07/2016.
//  Copyright © 2016 Noise & Heat. All rights reserved.
//

#import "MNMSegmentFS.h"

#include <mach-o/getsect.h>
#include <mach-o/ldsyms.h>

@implementation MNMSegmentFS

+ (NSData *)data {
    unsigned long size = 0;
    void *ptr = getsectiondata(&_mh_execute_header, "__TEXT", "mnm_payload", &size);
    NSData *data = [NSData dataWithBytesNoCopy:ptr length:size freeWhenDone:NO];
    return data;
}

@end
