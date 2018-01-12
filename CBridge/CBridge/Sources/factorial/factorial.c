//
//  factorial.c
//  CBridge
//
//  Created by Tibor Bödecs on 2018. 01. 12..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

#include "factorial.h"

long factorial(int n) {
    if (n == 0 || n == 1) return 1;
    return n * factorial(n-1);
}
