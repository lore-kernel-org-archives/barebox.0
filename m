Delivery-date: Fri, 12 Mar 2021 17:27:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkdZ-00056s-0p
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 17:27:41 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkdX-0006KW-QT
	for lore@pengutronix.de; Fri, 12 Mar 2021 17:27:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p7UR4qBuoYZy4GnAMLjxtRa4U+t0QOEIwyE41l6ca6Q=; b=m/URd8299UmYv4RPSGFyIMQR8F
	oTkAORYBTn4ZQOMvEAlhVg6mgpiTpi9H+WFmUi0rAK/TEAsHm8qWeHLfSw/vfOY7hty6ohR+A8bX7
	FaTaaTYTVzPxAZsIftpIn/TWSDP1KVhWRt/VHyjmiRo/JJ3ll+bxIFw20FBOv9b761WmVZ5lM3MCN
	KrWo1sokKfp5rwcXiuI4ZPLZ/H5U9ZXG0DaqTCGRqZ6rFuF+kFFw2m4/LW/CN0qD8OrNcaroQwcj3
	SCI97XneHBSv9Qp+fjr/QtUNaqDYWdj1wd4IcDDqvIQE7ols6FoB/TFQn4D30enGQW16wtg6Uq4Vz
	Tt8FmleA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKkcM-00Bx7X-Pe; Fri, 12 Mar 2021 16:26:29 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKkay-00Bwco-Bv
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 16:25:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 12D831A3BC6
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 16:25:00 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KM6IGN53;
 Fri, 12 Mar 2021 16:24:59 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id DA3281A0123;
 Fri, 12 Mar 2021 16:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B2ED527E0514;
 Fri, 12 Mar 2021 17:24:59 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Lr1y_qrpKA6Y; Fri, 12 Mar 2021 17:24:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3986327E0512;
 Fri, 12 Mar 2021 17:24:59 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3986327E0512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615566299;
 bh=v5BZA/jgu9XalUYcBCaxmM3fiNjGkwAIoHxQB8CmIx8=;
 h=From:To:Date:Message-Id;
 b=L4aWdUDwTfQHO2rukucsL4JWMNgsOBtDVORnoTwFVt8Kwy4PSAs8nOfvXOw4dTpTw
 OL5hOYebBAMBiqGtISYk21saI9sYlnGdQTEaigIcfYR94213azMMZ+r+XWHRFaluav
 U65T2SFh59JisDGWIPKOvKmx3IfkjTuGaXhDOCMQ=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Hm5IeKU-t09X; Fri, 12 Mar 2021 17:24:59 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 266FE27E02DD;
 Fri, 12 Mar 2021 17:24:59 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri, 12 Mar 2021 17:24:31 +0100
Message-Id: <20210312162432.9189-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210312162432.9189-1-jmaselbas@kalray.eu>
References: <20210312162432.9189-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_162500_708425_FC7633A7 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: Jules Maselbas <jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] usb: dwc2: Move wait_for_mode and iddig_filter_enabled to
 core
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move functions dwc2_wait_for_mode() and dwc2_iddig_filter_enabled()
into core.c so they can be used during dwc2_core_init().

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c   | 53 +++++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.h   |  3 +++
 drivers/usb/dwc2/gadget.c | 53 ---------------------------------------
 3 files changed, 56 insertions(+), 53 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 8ec77d68a..24efe5a41 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -681,6 +681,59 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
 	return 0;
 }
 
+/**
+ * dwc2_wait_for_mode() - Waits for the controller mode.
+ * @dwc2:	Programming view of the DWC_otg controller.
+ * @host_mode:	If true, waits for host mode, otherwise device mode.
+ */
+void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
+{
+	unsigned int timeout = 110 * USECOND;
+	int ret;
+
+	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
+		 host_mode ? "host" : "device");
+
+	ret = wait_on_timeout(timeout, dwc2_is_host_mode(dwc2) == host_mode);
+	if (ret)
+		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
+				 __func__, host_mode ? "host" : "device");
+
+	dev_vdbg(dwc2->dev, "%s mode set\n",
+		 host_mode ? "Host" : "Device");
+}
+
+/**
+ * dwc2_iddig_filter_enabled() - Returns true if the IDDIG debounce
+ * filter is enabled.
+ *
+ * @hsotg: Programming view of DWC_otg controller
+ */
+bool dwc2_iddig_filter_enabled(struct dwc2 *dwc2)
+{
+	u32 gsnpsid;
+	u32 ghwcfg4;
+
+	/* Check if core configuration includes the IDDIG filter. */
+	ghwcfg4 = dwc2_readl(dwc2, GHWCFG4);
+	if (!(ghwcfg4 & GHWCFG4_IDDIG_FILT_EN))
+		return false;
+
+	/*
+	 * Check if the IDDIG debounce filter is bypassed. Available
+	 * in core version >= 3.10a.
+	 */
+	gsnpsid = dwc2_readl(dwc2, GSNPSID);
+	if (gsnpsid >= DWC2_CORE_REV_3_10a) {
+		u32 gotgctl = dwc2_readl(dwc2, GOTGCTL);
+
+		if (gotgctl & GOTGCTL_DBNCE_FLTR_BYPASS)
+			return false;
+	}
+
+	return true;
+}
+
 /*
  * Do core a soft reset of the core.  Be careful with this because it
  * resets all the internal state machines of the core.
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index b9fdda850..31827d4c7 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -25,6 +25,9 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2);
 int dwc2_core_reset(struct dwc2 *dwc2);
 void dwc2_core_init(struct dwc2 *dwc2);
 
+void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode);
+bool dwc2_iddig_filter_enabled(struct dwc2 *dwc2);
+
 /* Host functions */
 #ifdef CONFIG_USB_DWC2_HOST
 int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 3fc7099d7..3df5d7352 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -2660,59 +2660,6 @@ static int dwc2_eps_alloc(struct dwc2 *dwc2)
 	return 0;
 }
 
-/**
- * dwc2_wait_for_mode() - Waits for the controller mode.
- * @dwc2:	Programming view of the DWC_otg controller.
- * @host_mode:	If true, waits for host mode, otherwise device mode.
- */
-static void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
-{
-	unsigned int timeout = 110 * USECOND;
-	int ret;
-
-	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
-		 host_mode ? "host" : "device");
-
-	ret = wait_on_timeout(timeout, dwc2_is_host_mode(dwc2) == host_mode);
-	if (ret)
-		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
-				 __func__, host_mode ? "host" : "device");
-
-	dev_vdbg(dwc2->dev, "%s mode set\n",
-		 host_mode ? "Host" : "Device");
-}
-
-/**
- * dwc2_iddig_filter_enabled() - Returns true if the IDDIG debounce
- * filter is enabled.
- *
- * @hsotg: Programming view of DWC_otg controller
- */
-static bool dwc2_iddig_filter_enabled(struct dwc2 *dwc2)
-{
-	u32 gsnpsid;
-	u32 ghwcfg4;
-
-	/* Check if core configuration includes the IDDIG filter. */
-	ghwcfg4 = dwc2_readl(dwc2, GHWCFG4);
-	if (!(ghwcfg4 & GHWCFG4_IDDIG_FILT_EN))
-		return false;
-
-	/*
-	 * Check if the IDDIG debounce filter is bypassed. Available
-	 * in core version >= 3.10a.
-	 */
-	gsnpsid = dwc2_readl(dwc2, GSNPSID);
-	if (gsnpsid >= DWC2_CORE_REV_3_10a) {
-		u32 gotgctl = dwc2_readl(dwc2, GOTGCTL);
-
-		if (gotgctl & GOTGCTL_DBNCE_FLTR_BYPASS)
-			return false;
-	}
-
-	return true;
-}
-
 /**
  * dwc2_force_mode() - Force the mode of the controller.
  *
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

