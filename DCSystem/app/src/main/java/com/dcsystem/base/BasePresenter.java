package com.dcsystem.base;

import rx.Subscription;

/**
 * Created by Dimon on 2017/1/30.
 */

public interface BasePresenter {

    void subscribe();

    void unsubscribe();

    void bindSubscribe(Subscription subscription);
}
