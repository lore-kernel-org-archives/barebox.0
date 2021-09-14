Delivery-date: Tue, 14 Sep 2021 15:22:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ8OC-0001z7-2h
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 15:22:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ8OA-0007XS-SS
	for lore@pengutronix.de; Tue, 14 Sep 2021 15:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eflzzeUqlN232yvxocIFB1UTGiQcUWeYJka+nTYoitQ=; b=J+mz8MQuqqnVLN
	xKr+ubEO54v8L4HP2sBwTJMDc/Sd7YPvhVQsFLLEesHD7rrZwmhS1dY4qe6p8VJPNmgm3DhEOok0G
	tYVwJX4wZZExakI9xc6wvK3DxzaZZKWK2WWBbe9xe+pQLqTEHa0qaaRzfo1U4VT4Ort0OMeLeLRdg
	PjXLJL3Ay1nHLbI6Rmp1wXSEQl8RFCZ5hdo2nFDl+lZu/LU4clSzzNwvEH+fsdGbr4/9RVggwBb0D
	9fbqDDsU4iVDUBj2z2UCB4atWX6xhSU91RJELe+NtnYneDPQLzgnPpNySCns+vHyZVwzVj1T09Vd7
	CoqRi5vPKf9yUiYTQOBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ8Mi-005r6A-It; Tue, 14 Sep 2021 13:20:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ8Mc-005r4g-Ct
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 13:20:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQ8ML-0007Bz-4L; Tue, 14 Sep 2021 15:20:25 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQ8MK-0005y8-Ir; Tue, 14 Sep 2021 15:20:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de, rhi@pengutronix.de, uol@pengutronix.de,
 renaud.barbier@abaco.com, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 14 Sep 2021 15:20:15 +0200
Message-Id: <20210914132016.22572-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210914132016.22572-1-a.fatoum@pengutronix.de>
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_062042_476861_D2871EAA 
X-CRM114-Status: GOOD (  16.03  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] scripts: unify libusb.h inclusion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have three host tools using libusb:
imx-usb-loader omap3-usb-loader and omap4_usbboot

All three link against it using `pkg-config --libs libusb-1.0`. All
three also do `pkg-config --cflags libusb-1.0`, but omap3-usb-loader
doesn't actually use it and assumes that <libusb-1.0/libusb.h> will resolve
to something that's correct.

I've also run into downstream patches around broken toolchains that
change <libusb.h> to <libusb-1.0/libusb.h>, so the header is found.

Fix the first issue and workaround the broken toolchains by using GCC 5.0+
__has_include to fallback to <libusb-1.0/libusb.h> if it doesn't exist
or if GCC is older than 5.0.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c |  2 +-
 scripts/libusb.h             | 17 +++++++++++++++++
 scripts/omap3-usb-loader.c   |  2 +-
 scripts/omap4_usbboot.c      |  2 +-
 4 files changed, 20 insertions(+), 3 deletions(-)
 create mode 100644 scripts/libusb.h

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index cff77f27f264..78af2b61bb06 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -29,12 +29,12 @@
 #include <errno.h>
 #include <string.h>
 #include <stdlib.h>
-#include <libusb.h>
 #include <getopt.h>
 #include <arpa/inet.h>
 #include <linux/kernel.h>
 
 #include "../compiler.h"
+#include "../libusb.h"
 #include "imx.h"
 
 #define get_min(a, b) (((a) < (b)) ? (a) : (b))
diff --git a/scripts/libusb.h b/scripts/libusb.h
new file mode 100644
index 000000000000..892d5422c451
--- /dev/null
+++ b/scripts/libusb.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef SCRIPTS_LIBUSB_H_
+#define SCRIPTS_LIBUSB_H_
+
+#ifdef __has_include
+/* not using && to keep compatibility with older compilers */
+#if __has_include("<libusb.h>")
+#include <libusb.h>
+#define HAS_LIBUSB_H
+#endif
+#endif
+
+#ifndef HAS_LIBUSB_H
+#include <libusb-1.0/libusb.h>
+#endif
+
+#endif
diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 599a93856ac3..edc46938d9ba 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <libgen.h>		/* for basename */
 
-#include <libusb-1.0/libusb.h>		/* the main event */
+#include "libusb.h"
 
 /* Device specific defines (OMAP)
  * Primary source: http://www.ti.com/lit/pdf/sprugn4
diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
index 342efd0c9a40..71e4f0acd1fd 100644
--- a/scripts/omap4_usbboot.c
+++ b/scripts/omap4_usbboot.c
@@ -10,7 +10,7 @@
 #include <fcntl.h>
 #include <string.h>
 #include <sys/mman.h>
-#include <libusb.h>
+#include "libusb.h"
 #include <pthread.h>
 #include <termios.h>
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

