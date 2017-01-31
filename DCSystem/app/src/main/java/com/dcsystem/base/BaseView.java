package com.dcsystem.base;

import android.support.annotation.NonNull;

/**
 * Created by Dimon on 2017/1/30.
 */

public interface BaseView<T extends BasePresenter> {

    void setPresenter(@NonNull T presenter);

    void setLoadingIndicator(final boolean active);

    boolean isActive();
}
