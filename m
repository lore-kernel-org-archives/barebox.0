Delivery-date: Fri, 28 Nov 2025 18:22:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Ac-005rF3-0n
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Ab-0001PY-24
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Hx0LRo/kY7FyucLW+66Ehm+oMcMbsDXE0VEM4PkhZVs=; b=dY3cQ4QAeBYVyxDhqlo4/HCyxr
	uM+9X4nZ1XUJf1VtfhXQ00UpRhWlHA5iKAS/EmXthbHxLGPK0jBIeIZ67y/e0PjOMUM8b057HpK6l
	I5hD7WhgaX6TGKYAfo3PWnyQKmO0F1ejbEO72EEvR4F7coNVYea0MHycKEu4XrILRmB9xf0jB7JBV
	3AgPWvH0LTVnt7ks8axz3JxEssKHgjPODDSkOvdnOr1koQFIV0qAkelgwEPB/71gwz46vB8vcPSV6
	XQOAMDkVAVvuFZUsIujqSYLesYNnHgTvtSt4e4uHH9GX0HmoUx5E9aI9TVbVOPzPq2wrAZwe54lTO
	4oXvIuew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AB-00000000iqR-17G8;
	Fri, 28 Nov 2025 17:21:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2A8-00000000iod-2pF5
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2A7-000198-51; Fri, 28 Nov 2025 18:21:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2A6-002zV8-36;
	Fri, 28 Nov 2025 18:21:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2A6-000000009Kr-3bMk;
	Fri, 28 Nov 2025 18:21:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:35 +0100
Message-ID: <20251128172138.35867-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092140_712689_9F5F2164 
X-CRM114-Status: GOOD (  15.66  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: align with Linux usb_get_dr_mode API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no of_usb_get_dr_mode() in Linux, but drivers call
usb_get_dr_mode() instead, which also handles OF.

Adapt barebox accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/of.c          | 42 +++++++++++++++++++++-------------
 drivers/usb/dwc2/core.c        |  2 +-
 drivers/usb/dwc3/core.c        |  2 +-
 drivers/usb/imx/chipidea-imx.c |  2 +-
 drivers/usb/musb/musb_dsps.c   |  2 +-
 include/linux/usb/usb.h        |  3 +--
 6 files changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
index 9d4bd2b5f978..bfe0ae315763 100644
--- a/drivers/usb/core/of.c
+++ b/drivers/usb/core/of.c
@@ -17,32 +17,42 @@ static const char *usb_dr_modes[] = {
 };
 
 /**
- * of_usb_get_dr_mode - Get dual role mode for given device_node
- * @np:	Pointer to the given device_node
+ * usb_get_dr_mode_from_string() - Get dual role mode for given string
+ * @str: String to find the corresponding dual role mode for
+ *
+ * This function performs a lookup for the given string and returns the
+ * corresponding enum usb_dr_mode. If no match for the string could be found,
+ * 'USB_DR_MODE_UNKNOWN' is returned.
+ */
+static enum usb_dr_mode usb_get_dr_mode_from_string(const char *str)
+{
+	int ret;
+
+	ret = match_string(usb_dr_modes, ARRAY_SIZE(usb_dr_modes), str);
+	return (ret < 0) ? USB_DR_MODE_UNKNOWN : ret;
+}
+
+/**
+ * usb_get_dr_mode - Get dual role mode for given device
+ * @dev:	Pointer to the given device
  *
  * The function gets phy interface string from property 'dr_mode',
- * and returns the correspondig enum usb_dr_mode
+ * in the given device's device tree node and returns the correspondig
+ * enum usb_dr_mode
  */
-enum usb_dr_mode of_usb_get_dr_mode(struct device_node *np,
-		const char *propname)
+enum usb_dr_mode usb_get_dr_mode(struct device *dev)
 {
+	struct device_node *np = dev_of_node(dev);
 	const char *dr_mode;
-	int err, i;
+	int err;
 
-	if (!propname)
-		propname = "dr_mode";
-
-	err = of_property_read_string(np, propname, &dr_mode);
+	err = of_property_read_string(np, "dr_mode", &dr_mode);
 	if (err < 0)
 		return USB_DR_MODE_UNKNOWN;
 
-	for (i = 0; i < ARRAY_SIZE(usb_dr_modes); i++)
-		if (!strcmp(dr_mode, usb_dr_modes[i]))
-			return i;
-
-	return USB_DR_MODE_UNKNOWN;
+	return usb_get_dr_mode_from_string(dr_mode);
 }
-EXPORT_SYMBOL_GPL(of_usb_get_dr_mode);
+EXPORT_SYMBOL_GPL(usb_get_dr_mode);
 
 static const char *usbphy_modes[] = {
 	[USBPHY_INTERFACE_MODE_UNKNOWN]	= "",
diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index b198ba6bf88d..60cc690fdbc0 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -672,7 +672,7 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
 {
 	enum usb_dr_mode mode;
 
-	mode = of_usb_get_dr_mode(dwc2->dev->of_node, NULL);
+	mode = usb_get_dr_mode(dwc2->dev);
 	dwc2->dr_mode = mode;
 
 	if (dwc2_hw_is_device(dwc2)) {
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 985213deb4f1..7f2cb6c4a70a 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1179,7 +1179,7 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 
 	dwc->maximum_speed = of_usb_get_maximum_speed(dev->of_node, NULL);
 //	dwc->max_ssp_rate = usb_get_maximum_ssp_rate(dev);
-	dwc->dr_mode = of_usb_get_dr_mode(dev->of_node, NULL);
+	dwc->dr_mode = usb_get_dr_mode(dev);
 	dwc->hsphy_mode = of_usb_get_phy_mode(dev->of_node, NULL);
 
 	dwc->sysdev_is_parent = of_property_read_bool(dev->of_node,
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index e09857f23c27..a3b8452d8c17 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -118,7 +118,7 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 
 	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 
-	ci->mode = of_usb_get_dr_mode(ci->dev->of_node, NULL);
+	ci->mode = usb_get_dr_mode(ci->dev);
 
 	if (ci->mode == USB_DR_MODE_UNKNOWN) {
 		/*
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 914212498c79..89fb64902dfc 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -264,7 +264,7 @@ static int get_musb_port_mode(struct device *dev)
 {
 	enum usb_dr_mode mode;
 
-	mode = of_usb_get_dr_mode(dev->of_node, NULL);
+	mode = usb_get_dr_mode(dev);
 	switch (mode) {
 	case USB_DR_MODE_HOST:
 		return MUSB_PORT_MODE_HOST;
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index cc994fdff1e6..c25f3d73c3c8 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -461,8 +461,7 @@ struct usb_device_id {
 #define USB_CTRL_SET_TIMEOUT   5000
 #define USB_CTRL_GET_TIMEOUT   5000
 
-enum usb_dr_mode of_usb_get_dr_mode(struct device_node *np,
-		const char *propname);
+enum usb_dr_mode usb_get_dr_mode(struct device *dev);
 
 enum usb_dr_mode {
 	USB_DR_MODE_UNKNOWN,
-- 
2.47.3



