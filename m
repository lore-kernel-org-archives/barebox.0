Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vc0-f174.google.com ([209.85.220.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WgXVy-00076d-Ln
 for barebox@lists.infradead.org; Sat, 03 May 2014 10:49:56 +0000
Received: by mail-vc0-f174.google.com with SMTP id ib6so6508753vcb.33
 for <barebox@lists.infradead.org>; Sat, 03 May 2014 03:49:28 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 3 May 2014 12:42:21 +0200
Message-ID: <CAArsGaZ6sYJrUc9LQ+g64EeKAO_iFVmy+-S_6TAT7cSKTW236g@mail.gmail.com>
From: Tormod Volden <lists.tormod@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bootloader bwPollTimeout quirk in dfu-util

Hi,

I am sending out this notice to those who seem to use a DFU boot
loader and an OpenMoko USB vendor ID, listed on
http://wiki.openmoko.org/wiki/USB_Product_IDs

If your device is never used together with dfu-util, please disregard,
sorry for the noise.

The OpenMoko FreeRunner has a bug in its bootloader which makes it
report bogus bwPollTimeout values to the DFU host computer (e.g.
dfu-util). We therefore introduced a quirk in dfu-util for ignoring
this value and instead using a default value of 5 ms on these devices.
At the time, only the FreeRunner was using the OpenMoko vendor ID and
since it was using a large range of product IDs, the quirk was
filtered on the vendor ID only.

Recently (?) OpenMoko started giving away product IDs to other
open-source projects. The 5 ms quirk has been applied to all these
devices. We just discovered this was causing problems for some devices
(when 5 ms was too short, and the device actually reports correct
values), e.g. https://community.spark.io/t/dfu-util-on-linux-fails-to-flash-solved/4080/21#

So we are now correcting this to only filter on the OpenMoko
FreeRunner devices, which cover a limited range of product IDs. This
will be part of the upcoming dfu-util 0.8 release:
https://gitorious.org/dfu-util/dfu-util/commit/cca127e4f53087c71253f3e3040b66165ce490af

*** This means dfu-util from now on will use the bwPollTimeout values
reported by your device. ***
*** If these values are wrong, please report to us so that we can add
a quirk for your device. ***

We believe most devices report correct values, so the change in
dfu-util will only lead to faster and/or more reliable programming. So
we will take the chance of applying this change across the board and
smoking the bad ones out (if any), instead of white-listing devices
one by one.

For testing with dfu-util, please use latest git from
https://gitorious.org/dfu-util/dfu-util

Best regards,
Tormod
dfu-util maintainer
http://dfu-util.gnumonks.org/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
