Delivery-date: Mon, 20 Mar 2023 16:31:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTh-007zH5-VU
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTg-0001m8-Rg
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5x9QbVPIfeqMVPGyjozj06ZDqRq1x5Eys32FwNzBYrY=; b=Qo41YJq4cTqPbGEFMK5wzeZHC2
	qZ5FWhCGvkH0v6H5Q0jdDHbokAQ6CMwdeCdhVoTwj2kefPIoYN4eStq4B/8eL3CFok0Zqk90MjQAm
	tXM/rtFtyZdlXDu8efsM6MnVXnXWSs+J7hQ/ch42rxZGnE0IaOdmobIj25qr2qPV0p3rkNOGAZuXG
	8Dyi8cC76ewFo0m8VzQqpwZXze1dJXEF10JI64TkgC5ZQPkJ8QY1d6r2x8exHtxN6yV+tvs/AeSrf
	SQCw9bWUK4um6edcK1U8AexwbK7xP7+Byd3kso8s1XHtolF3QPWlk4Wii610JqYUTsDhoCc0vIcI2
	hsrcYwpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHST-009XmO-2d;
	Mon, 20 Mar 2023 15:30:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009XfV-2s
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSC-0000oN-Uf; Mon, 20 Mar 2023 16:29:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSC-005UYh-4v; Mon, 20 Mar 2023 16:29:44 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00DbzR-2y; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:25 +0100
Message-Id: <20230320152941.3155428-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082950_948996_5F873C64 
X-CRM114-Status: GOOD (  22.94  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/18] usb: gadget: drop gadget_chips.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

gadget_chips.h is mostly unused and no longer present in upstream Linux,
so drop it from barebox as well. The only thing we still need is
gadget_is_pxa() which is added to epautoconf.c directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/epautoconf.c   | 42 +----------------------
 drivers/usb/gadget/f_acm.c        |  1 -
 drivers/usb/gadget/f_serial.c     |  1 -
 drivers/usb/gadget/gadget_chips.h | 56 -------------------------------
 drivers/usb/gadget/serial.c       |  1 -
 5 files changed, 1 insertion(+), 100 deletions(-)
 delete mode 100644 drivers/usb/gadget/gadget_chips.h

diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index e9f13f4262..2f1b9d1a0b 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -14,7 +14,7 @@
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 
-#include "gadget_chips.h"
+#define gadget_is_pxa(g)                (!strcmp("pxa25x_udc", (g)->name))
 
 /*
  * This should work with endpoints from controller drivers sharing the
@@ -182,18 +182,6 @@ ep_matches (
 	return 1;
 }
 
-static struct usb_ep *
-find_ep (struct usb_gadget *gadget, const char *name)
-{
-	struct usb_ep	*ep;
-
-	list_for_each_entry (ep, &gadget->ep_list, ep_list) {
-		if (0 == strcmp (ep->name, name))
-			return ep;
-	}
-	return NULL;
-}
-
 /**
  * usb_ep_autoconfig_ss() - choose an endpoint matching the ep
  * descriptor and ep companion descriptor
@@ -249,34 +237,6 @@ struct usb_ep *usb_ep_autoconfig_ss(
 
 	type = desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
 
-	/* First, apply chip-specific "best usage" knowledge.
-	 * This might make a good usb_gadget_ops hook ...
-	 */
-	if (gadget_is_net2280 (gadget) && type == USB_ENDPOINT_XFER_INT) {
-		/* ep-e, ep-f are PIO with only 64 byte fifos */
-		ep = find_ep (gadget, "ep-e");
-		if (ep && ep_matches(gadget, ep, desc, ep_comp))
-			goto found_ep;
-		ep = find_ep (gadget, "ep-f");
-		if (ep && ep_matches(gadget, ep, desc, ep_comp))
-			goto found_ep;
-
-	} else if (gadget_is_goku (gadget)) {
-		if (USB_ENDPOINT_XFER_INT == type) {
-			/* single buffering is enough */
-			ep = find_ep(gadget, "ep3-bulk");
-			if (ep && ep_matches(gadget, ep, desc, ep_comp))
-				goto found_ep;
-		} else if (USB_ENDPOINT_XFER_BULK == type
-				&& (USB_DIR_IN & desc->bEndpointAddress)) {
-			/* DMA may be available */
-			ep = find_ep(gadget, "ep2-bulk");
-			if (ep && ep_matches(gadget, ep, desc,
-					      ep_comp))
-				goto found_ep;
-		}
-	}
-
 	/* Second, look at endpoints until an unclaimed one looks usable */
 	list_for_each_entry (ep, &gadget->ep_list, ep_list) {
 		if (ep_matches(gadget, ep, desc, ep_comp))
diff --git a/drivers/usb/gadget/f_acm.c b/drivers/usb/gadget/f_acm.c
index 42438947c1..3d2595edd7 100644
--- a/drivers/usb/gadget/f_acm.c
+++ b/drivers/usb/gadget/f_acm.c
@@ -19,7 +19,6 @@
 #include <usb/composite.h>
 
 #include "u_serial.h"
-#include "gadget_chips.h"
 
 
 /*
diff --git a/drivers/usb/gadget/f_serial.c b/drivers/usb/gadget/f_serial.c
index 33cf54dc1c..494f6c872e 100644
--- a/drivers/usb/gadget/f_serial.c
+++ b/drivers/usb/gadget/f_serial.c
@@ -12,7 +12,6 @@
 #include <linux/err.h>
 
 #include "u_serial.h"
-#include "gadget_chips.h"
 
 
 /*
diff --git a/drivers/usb/gadget/gadget_chips.h b/drivers/usb/gadget/gadget_chips.h
deleted file mode 100644
index 78e0601027..0000000000
--- a/drivers/usb/gadget/gadget_chips.h
+++ /dev/null
@@ -1,56 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * USB device controllers have lots of quirks.  Use these macros in
- * gadget drivers or other code that needs to deal with them, and which
- * autoconfigures instead of using early binding to the hardware.
- *
- * This SHOULD eventually work like the ARM mach_is_*() stuff, driven by
- * some config file that gets updated as new hardware is supported.
- * (And avoiding all runtime comparisons in typical one-choice configs!)
- *
- * NOTE:  some of these controller drivers may not be available yet.
- * Some are available on 2.4 kernels; several are available, but not
- * yet pushed in the 2.6 mainline tree.
- */
-
-#ifndef __GADGET_CHIPS_H
-#define __GADGET_CHIPS_H
-
-#include <usb/gadget.h>
-
-/*
- * NOTICE: the entries below are alphabetical and should be kept
- * that way.
- *
- * Always be sure to add new entries to the correct position or
- * accept the bashing later.
- *
- * If you have forgotten the alphabetical order let VIM/EMACS
- * do that for you.
- */
-#define gadget_is_at91(g)		(!strcmp("at91_udc", (g)->name))
-#define gadget_is_goku(g)		(!strcmp("goku_udc", (g)->name))
-#define gadget_is_musbhdrc(g)		(!strcmp("musb-hdrc", (g)->name))
-#define gadget_is_net2280(g)		(!strcmp("net2280", (g)->name))
-#define gadget_is_pxa(g)		(!strcmp("pxa25x_udc", (g)->name))
-#define gadget_is_pxa27x(g)		(!strcmp("pxa27x_udc", (g)->name))
-
-/**
- * gadget_supports_altsettings - return true if altsettings work
- * @gadget: the gadget in question
- */
-static inline bool gadget_supports_altsettings(struct usb_gadget *gadget)
-{
-	/* PXA 21x/25x/26x has no altsettings at all */
-	if (gadget_is_pxa(gadget))
-		return false;
-
-	/* PXA 27x and 3xx have *broken* altsetting support */
-	if (gadget_is_pxa27x(gadget))
-		return false;
-
-	/* Everything else is *presumably* fine ... */
-	return true;
-}
-
-#endif /* __GADGET_CHIPS_H */
diff --git a/drivers/usb/gadget/serial.c b/drivers/usb/gadget/serial.c
index 0ef2665b69..6321f3f207 100644
--- a/drivers/usb/gadget/serial.c
+++ b/drivers/usb/gadget/serial.c
@@ -18,7 +18,6 @@
 #include <asm/byteorder.h>
 
 #include "u_serial.h"
-#include "gadget_chips.h"
 
 
 /* Defines */
-- 
2.30.2



