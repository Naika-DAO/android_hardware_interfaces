/*
 * Copyright 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.tv.tuner;

import android.hardware.tv.tuner.LnbEventType;

/**
 * This interface is used by the HAL to notify the Lnb event and DiSEqC (Digital
 * Satellite Equipment Control) message back to the client, the cient implements
 * the interfaces and passes a handle to the HAL.
 * @hide
 */
@VintfStability
oneway interface ILnbCallback {
    /**
     * The callback function that must be called by HAL implementation to notify
     * the client of new DiSEqC message.
     *
     * @param diseqcMessage a byte array of data for DiSEqC (Digital Satellite
     * Equipment Control) message which is specified by EUTELSAT Bus Functional
     * Specification Version 4.2.
     */
    void onDiseqcMessage(in byte[] diseqcMessage);

    /**
     * Notify the client that a new event happened on the Lnb.
     *
     * @param LnbEventType the event type.
     */
    void onEvent(in LnbEventType lnbEventType);
}
