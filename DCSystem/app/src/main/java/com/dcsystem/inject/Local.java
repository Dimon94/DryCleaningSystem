package com.dcsystem.inject;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.inject.Qualifier;

/**
 * Created by Dimon on 2017/1/30.
 */

@Qualifier @Documented @Retention(RetentionPolicy.RUNTIME) public @interface Local {
}
