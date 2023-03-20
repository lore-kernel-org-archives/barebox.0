Delivery-date: Mon, 20 Mar 2023 16:32:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHUV-007zO2-KM
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:32:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHUL-0002FW-FJ
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:32:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zb3QCv9Q4prYxEDiqj3CgDr+QP+Ct0PQ5i0wmjITjxA=; b=RlmFvT9V3J7KJNf2wC2japZAfA
	gqOkvXBy+RWevDOJLC7+Q5F1kksrKhFFGoNzYVf1loW5idDIkjigE7Opbax3NHSbGEYqKe9JlC1IX
	Pi7vmfY70EC6rmY+QmgrN8TSbr/rrMVVlhKTPWQ7o9aEeqhMtDGSFrwlOElVoQSQNXv5YZLeJPlFK
	VcDnDNKNAVZCYPWmo32r8xy7vYUUpnXcjxWYMXxx10Kf+tY44uA1IYgJElVObE9KDV0hGCQIF/JFE
	MZ1Q5pxTDICP4jb/3YYo866+CvEoBoL0XGBHRxn3XzljqFiTIN8IaoC/xZtdbmgmSkY8jmHGlWJin
	RAufksyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSj-009Y1r-1U;
	Mon, 20 Mar 2023 15:30:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSL-009Xfr-0I
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:30:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-0000rS-Po; Mon, 20 Mar 2023 16:29:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-005UZQ-3f; Mon, 20 Mar 2023 16:29:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc1o-Gt; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:34 +0100
Message-Id: <20230320152941.3155428-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082953_626338_4F9B22F3 
X-CRM114-Status: GOOD (  36.25  )
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
Subject: [PATCH 11/18] usb: gadget: update composite.c from Linux-6.3-rc2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sync composite.c with Linux-6.3-rc2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig     |    1 +
 drivers/usb/gadget/composite.c | 1064 +++++++++++++++++++++++++++-----
 drivers/usb/gadget/u_os_desc.h |  120 ++++
 include/linux/usb/composite.h  |  197 +++++-
 include/linux/usb/webusb.h     |   80 +++
 5 files changed, 1275 insertions(+), 187 deletions(-)
 create mode 100644 drivers/usb/gadget/u_os_desc.h
 create mode 100644 include/linux/usb/webusb.h

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 96c51768f6..ffaf355936 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -2,6 +2,7 @@
 menuconfig USB_GADGET
 	select USB
 	select POLLER
+	select NLS
 	bool "USB gadget support"
 
 config USB_GADGET_DRIVER_ARC_PBL
diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index af3dee48f4..58c10f1191 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * composite.c - infrastructure for Composite USB Gadgets
  *
@@ -13,10 +13,30 @@
 #include <linux/err.h>
 #include <linux/bitmap.h>
 #include <linux/usb/composite.h>
+#include <linux/bitfield.h>
+#include <linux/uuid.h>
 #include <asm/unaligned.h>
 #include <asm/byteorder.h>
 
-static unsigned int usb_gadget_vbus_draw_ma = 2;
+#include "u_os_desc.h"
+
+#define CONFIG_USB_GADGET_VBUS_DRAW 2 /* FIXME */
+
+/**
+ * struct usb_os_string - represents OS String to be reported by a gadget
+ * @bLength: total length of the entire descritor, always 0x12
+ * @bDescriptorType: USB_DT_STRING
+ * @qwSignature: the OS String proper
+ * @bMS_VendorCode: code used by the host for subsequent requests
+ * @bPad: not used, must be zero
+ */
+struct usb_os_string {
+	__u8	bLength;
+	__u8	bDescriptorType;
+	__u8	qwSignature[OS_STRING_QW_SIGN_LEN];
+	__u8	bMS_VendorCode;
+	__u8	bPad;
+} __packed;
 
 /*
  * The code in this file is utility code, used to build a gadget driver
@@ -32,40 +52,89 @@ static struct usb_gadget_strings **get_containers_gs(
 }
 
 /**
- * next_ep_desc() - advance to the next EP descriptor
+ * function_descriptors() - get function descriptors for speed
+ * @f: the function
+ * @speed: the speed
+ *
+ * Returns the descriptors or NULL if not set.
+ */
+static struct usb_descriptor_header **
+function_descriptors(struct usb_function *f,
+		     enum usb_device_speed speed)
+{
+	struct usb_descriptor_header **descriptors;
+
+	/*
+	 * NOTE: we try to help gadget drivers which might not be setting
+	 * max_speed appropriately.
+	 */
+
+	switch (speed) {
+	case USB_SPEED_SUPER_PLUS:
+		descriptors = f->ssp_descriptors;
+		if (descriptors)
+			break;
+		fallthrough;
+	case USB_SPEED_SUPER:
+		descriptors = f->ss_descriptors;
+		if (descriptors)
+			break;
+		fallthrough;
+	case USB_SPEED_HIGH:
+		descriptors = f->hs_descriptors;
+		if (descriptors)
+			break;
+		fallthrough;
+	default:
+		descriptors = f->fs_descriptors;
+	}
+
+	/*
+	 * if we can't find any descriptors at all, then this gadget deserves to
+	 * Oops with a NULL pointer dereference
+	 */
+
+	return descriptors;
+}
+
+/**
+ * next_desc() - advance to the next desc_type descriptor
  * @t: currect pointer within descriptor array
+ * @desc_type: descriptor type
  *
- * Return: next EP descriptor or NULL
+ * Return: next desc_type descriptor or NULL
  *
- * Iterate over @t until either EP descriptor found or
+ * Iterate over @t until either desc_type descriptor found or
  * NULL (that indicates end of list) encountered
  */
 static struct usb_descriptor_header**
-next_ep_desc(struct usb_descriptor_header **t)
+next_desc(struct usb_descriptor_header **t, u8 desc_type)
 {
 	for (; *t; t++) {
-		if ((*t)->bDescriptorType == USB_DT_ENDPOINT)
+		if ((*t)->bDescriptorType == desc_type)
 			return t;
 	}
 	return NULL;
 }
 
 /*
- * for_each_ep_desc()- iterate over endpoint descriptors in the
- *		descriptors list
- * @start:	pointer within descriptor array.
- * @ep_desc:	endpoint descriptor to use as the loop cursor
+ * for_each_desc() - iterate over desc_type descriptors in the
+ * descriptors list
+ * @start: pointer within descriptor array.
+ * @iter_desc: desc_type descriptor to use as the loop cursor
+ * @desc_type: wanted descriptr type
  */
-#define for_each_ep_desc(start, ep_desc) \
-	for (ep_desc = next_ep_desc(start); \
-	      ep_desc; ep_desc = next_ep_desc(ep_desc+1))
+#define for_each_desc(start, iter_desc, desc_type) \
+	for (iter_desc = next_desc(start, desc_type); \
+	     iter_desc; iter_desc = next_desc(iter_desc + 1, desc_type))
 
 /**
- * config_ep_by_speed() - configures the given endpoint
+ * config_ep_by_speed_and_alt() - configures the given endpoint
  * according to gadget speed.
  * @g: pointer to the gadget
  * @f: usb function
  * @_ep: the endpoint to configure
+ * @alt: alternate setting number
  *
  * Return: error code, 0 on success
  *
@@ -78,44 +147,80 @@ next_ep_desc(struct usb_descriptor_header **t)
  * Note: the supplied function should hold all the descriptors
  * for supported speeds
  */
-int config_ep_by_speed(struct usb_gadget *g,
-			struct usb_function *f,
-			struct usb_ep *_ep)
+int config_ep_by_speed_and_alt(struct usb_gadget *g,
+				struct usb_function *f,
+				struct usb_ep *_ep,
+				u8 alt)
 {
-	struct usb_composite_dev *cdev;
 	struct usb_endpoint_descriptor *chosen_desc = NULL;
+	struct usb_interface_descriptor *int_desc = NULL;
 	struct usb_descriptor_header **speed_desc = NULL;
 
 	struct usb_ss_ep_comp_descriptor *comp_desc = NULL;
 	int want_comp_desc = 0;
 
 	struct usb_descriptor_header **d_spd; /* cursor for speed desc */
+	struct usb_composite_dev *cdev;
+	bool incomplete_desc = false;
 
 	if (!g || !f || !_ep)
 		return -EIO;
 
-	cdev = get_gadget_data(g);
-
 	/* select desired speed */
 	switch (g->speed) {
+	case USB_SPEED_SUPER_PLUS:
+		if (gadget_is_superspeed_plus(g)) {
+			if (f->ssp_descriptors) {
+				speed_desc = f->ssp_descriptors;
+				want_comp_desc = 1;
+				break;
+			}
+			incomplete_desc = true;
+		}
+		fallthrough;
 	case USB_SPEED_SUPER:
 		if (gadget_is_superspeed(g)) {
-			speed_desc = f->ss_descriptors;
-			want_comp_desc = 1;
-			break;
+			if (f->ss_descriptors) {
+				speed_desc = f->ss_descriptors;
+				want_comp_desc = 1;
+				break;
+			}
+			incomplete_desc = true;
 		}
-		/* else: Fall trough */
+		fallthrough;
 	case USB_SPEED_HIGH:
 		if (gadget_is_dualspeed(g)) {
-			speed_desc = f->hs_descriptors;
-			break;
+			if (f->hs_descriptors) {
+				speed_desc = f->hs_descriptors;
+				break;
+			}
+			incomplete_desc = true;
 		}
-		/* else: fall through */
+		fallthrough;
 	default:
 		speed_desc = f->fs_descriptors;
 	}
+
+	cdev = get_gadget_data(g);
+	if (incomplete_desc)
+		WARNING(cdev,
+			"%s doesn't hold the descriptors for current speed\n",
+			f->name);
+
+	/* find correct alternate setting descriptor */
+	for_each_desc(speed_desc, d_spd, USB_DT_INTERFACE) {
+		int_desc = (struct usb_interface_descriptor *)*d_spd;
+
+		if (int_desc->bAlternateSetting == alt) {
+			speed_desc = d_spd;
+			goto intf_found;
+		}
+	}
+	return -EIO;
+
+intf_found:
 	/* find descriptors */
-	for_each_ep_desc(speed_desc, d_spd) {
+	for_each_desc(speed_desc, d_spd, USB_DT_ENDPOINT) {
 		chosen_desc = (struct usb_endpoint_descriptor *)*d_spd;
 		if (chosen_desc->bEndpointAddress == _ep->address)
 			goto ep_found;
@@ -128,7 +233,12 @@ ep_found:
 	_ep->desc = chosen_desc;
 	_ep->comp_desc = NULL;
 	_ep->maxburst = 0;
-	_ep->mult = 0;
+	_ep->mult = 1;
+
+	if (g->speed == USB_SPEED_HIGH && (usb_endpoint_xfer_isoc(_ep->desc) ||
+				usb_endpoint_xfer_int(_ep->desc)))
+		_ep->mult = usb_endpoint_maxp_mult(_ep->desc);
+
 	if (!want_comp_desc)
 		return 0;
 
@@ -141,11 +251,12 @@ ep_found:
 	    (comp_desc->bDescriptorType != USB_DT_SS_ENDPOINT_COMP))
 		return -EIO;
 	_ep->comp_desc = comp_desc;
-	if (g->speed == USB_SPEED_SUPER) {
+	if (g->speed >= USB_SPEED_SUPER) {
 		switch (usb_endpoint_type(_ep->desc)) {
 		case USB_ENDPOINT_XFER_ISOC:
 			/* mult: bits 1:0 of bmAttributes */
-			_ep->mult = comp_desc->bmAttributes & 0x3;
+			_ep->mult = (comp_desc->bmAttributes & 0x3) + 1;
+			fallthrough;
 		case USB_ENDPOINT_XFER_BULK:
 		case USB_ENDPOINT_XFER_INT:
 			_ep->maxburst = comp_desc->bMaxBurst + 1;
@@ -159,6 +270,32 @@ ep_found:
 	}
 	return 0;
 }
+EXPORT_SYMBOL_GPL(config_ep_by_speed_and_alt);
+
+/**
+ * config_ep_by_speed() - configures the given endpoint
+ * according to gadget speed.
+ * @g: pointer to the gadget
+ * @f: usb function
+ * @_ep: the endpoint to configure
+ *
+ * Return: error code, 0 on success
+ *
+ * This function chooses the right descriptors for a given
+ * endpoint according to gadget speed and saves it in the
+ * endpoint desc field. If the endpoint already has a descriptor
+ * assigned to it - overwrites it with currently corresponding
+ * descriptor. The endpoint maxpacket field is updated according
+ * to the chosen descriptor.
+ * Note: the supplied function should hold all the descriptors
+ * for supported speeds
+ */
+int config_ep_by_speed(struct usb_gadget *g,
+			struct usb_function *f,
+			struct usb_ep *_ep)
+{
+	return config_ep_by_speed_and_alt(g, f, _ep, 0);
+}
 EXPORT_SYMBOL_GPL(config_ep_by_speed);
 
 /**
@@ -190,6 +327,12 @@ int usb_add_function(struct usb_configuration *config,
 	function->config = config;
 	list_add_tail(&function->list, &config->functions);
 
+	if (function->bind_deactivated) {
+		value = usb_function_deactivate(function);
+		if (value)
+			goto done;
+	}
+
 	/* REVISIT *require* function->bind? */
 	if (function->bind) {
 		value = function->bind(config, function);
@@ -211,6 +354,8 @@ int usb_add_function(struct usb_configuration *config,
 		config->highspeed = true;
 	if (!config->superspeed && function->ss_descriptors)
 		config->superspeed = true;
+	if (!config->superspeed_plus && function->ssp_descriptors)
+		config->superspeed_plus = true;
 
 done:
 	if (value)
@@ -229,6 +374,9 @@ void usb_remove_function(struct usb_configuration *c, struct usb_function *f)
 	list_del(&f->list);
 	if (f->unbind)
 		f->unbind(c, f);
+
+	if (f->bind_deactivated)
+		usb_function_activate(f);
 }
 EXPORT_SYMBOL_GPL(usb_remove_function);
 
@@ -254,13 +402,20 @@ EXPORT_SYMBOL_GPL(usb_remove_function);
 int usb_function_deactivate(struct usb_function *function)
 {
 	struct usb_composite_dev	*cdev = function->config->cdev;
+	unsigned long			flags;
 	int				status = 0;
 
-	if (cdev->deactivations == 0)
-		status = usb_gadget_disconnect(cdev->gadget);
+	spin_lock_irqsave(&cdev->lock, flags);
+
+	if (cdev->deactivations == 0) {
+		spin_unlock_irqrestore(&cdev->lock, flags);
+		status = usb_gadget_deactivate(cdev->gadget);
+		spin_lock_irqsave(&cdev->lock, flags);
+	}
 	if (status == 0)
 		cdev->deactivations++;
 
+	spin_unlock_irqrestore(&cdev->lock, flags);
 	return status;
 }
 EXPORT_SYMBOL_GPL(usb_function_deactivate);
@@ -278,16 +433,23 @@ EXPORT_SYMBOL_GPL(usb_function_deactivate);
 int usb_function_activate(struct usb_function *function)
 {
 	struct usb_composite_dev	*cdev = function->config->cdev;
+	unsigned long			flags;
 	int				status = 0;
 
+	spin_lock_irqsave(&cdev->lock, flags);
+
 	if (WARN_ON(cdev->deactivations == 0))
 		status = -EINVAL;
 	else {
 		cdev->deactivations--;
-		if (cdev->deactivations == 0)
-			status = usb_gadget_connect(cdev->gadget);
+		if (cdev->deactivations == 0) {
+			spin_unlock_irqrestore(&cdev->lock, flags);
+			status = usb_gadget_activate(cdev->gadget);
+			spin_lock_irqsave(&cdev->lock, flags);
+		}
 	}
 
+	spin_unlock_irqrestore(&cdev->lock, flags);
 	return status;
 }
 EXPORT_SYMBOL_GPL(usb_function_activate);
@@ -334,18 +496,20 @@ static u8 encode_bMaxPower(enum usb_device_speed speed,
 {
 	unsigned val;
 
-	if (c->MaxPower)
+	if (c->MaxPower || (c->bmAttributes & USB_CONFIG_ATT_SELFPOWER))
 		val = c->MaxPower;
 	else
-		val = usb_gadget_vbus_draw_ma;
+		val = CONFIG_USB_GADGET_VBUS_DRAW;
 	if (!val)
 		return 0;
-	switch (speed) {
-	case USB_SPEED_SUPER:
-		return DIV_ROUND_UP(val, 8);
-	default:
-		return DIV_ROUND_UP(val, 2);
-	}
+	if (speed < USB_SPEED_SUPER)
+		return min(val, 500U) / 2;
+	else
+		/*
+		 * USB 3.x supports up to 900mA, but since 900 isn't divisible
+		 * by 8 the integral division will effectively cap to 896mA.
+		 */
+		return min(val, 900U) / 8;
 }
 
 static int config_buf(struct usb_configuration *config,
@@ -383,17 +547,7 @@ static int config_buf(struct usb_configuration *config,
 	list_for_each_entry(f, &config->functions, list) {
 		struct usb_descriptor_header **descriptors;
 
-		switch (speed) {
-		case USB_SPEED_SUPER:
-			descriptors = f->ss_descriptors;
-			break;
-		case USB_SPEED_HIGH:
-			descriptors = f->hs_descriptors;
-			break;
-		default:
-			descriptors = f->fs_descriptors;
-		}
-
+		descriptors = function_descriptors(f, speed);
 		if (!descriptors)
 			continue;
 		status = usb_descriptor_fillbuf(next, len,
@@ -413,10 +567,11 @@ static int config_desc(struct usb_composite_dev *cdev, unsigned w_value)
 {
 	struct usb_gadget		*gadget = cdev->gadget;
 	struct usb_configuration	*c;
+	struct list_head		*pos;
 	u8				type = w_value >> 8;
 	enum usb_device_speed		speed = USB_SPEED_UNKNOWN;
 
-	if (gadget->speed == USB_SPEED_SUPER)
+	if (gadget->speed >= USB_SPEED_SUPER)
 		speed = gadget->speed;
 	else if (gadget_is_dualspeed(gadget)) {
 		int	hs = 0;
@@ -431,9 +586,26 @@ static int config_desc(struct usb_composite_dev *cdev, unsigned w_value)
 
 	/* This is a lookup by config *INDEX* */
 	w_value &= 0xff;
-	list_for_each_entry(c, &cdev->configs, list) {
+
+	pos = &cdev->configs;
+	c = cdev->os_desc_config;
+	if (c)
+		goto check_config;
+
+	while ((pos = pos->next) !=  &cdev->configs) {
+		c = list_entry(pos, typeof(*c), list);
+
+		/* skip OS Descriptors config which is handled separately */
+		if (c == cdev->os_desc_config)
+			continue;
+
+check_config:
 		/* ignore configs that won't work at this speed */
 		switch (speed) {
+		case USB_SPEED_SUPER_PLUS:
+			if (!c->superspeed_plus)
+				continue;
+			break;
 		case USB_SPEED_SUPER:
 			if (!c->superspeed)
 				continue;
@@ -461,18 +633,24 @@ static int count_configs(struct usb_composite_dev *cdev, unsigned type)
 	unsigned			count = 0;
 	int				hs = 0;
 	int				ss = 0;
+	int				ssp = 0;
 
 	if (gadget_is_dualspeed(gadget)) {
 		if (gadget->speed == USB_SPEED_HIGH)
 			hs = 1;
 		if (gadget->speed == USB_SPEED_SUPER)
 			ss = 1;
+		if (gadget->speed == USB_SPEED_SUPER_PLUS)
+			ssp = 1;
 		if (type == USB_DT_DEVICE_QUALIFIER)
 			hs = !hs;
 	}
 	list_for_each_entry(c, &cdev->configs, list) {
 		/* ignore configs that won't work at this speed */
-		if (ss) {
+		if (ssp) {
+			if (!c->superspeed_plus)
+				continue;
+		} else if (ss) {
 			if (!c->superspeed)
 				continue;
 		} else if (hs) {
@@ -499,9 +677,9 @@ static int count_configs(struct usb_composite_dev *cdev, unsigned type)
 static int bos_desc(struct usb_composite_dev *cdev)
 {
 	struct usb_ext_cap_descriptor	*usb_ext;
-	struct usb_ss_cap_descriptor	*ss_cap;
 	struct usb_dcd_config_params	dcd_config_params;
 	struct usb_bos_descriptor	*bos = cdev->req->buf;
+	unsigned int			besl = 0;
 
 	bos->bLength = USB_DT_BOS_SIZE;
 	bos->bDescriptorType = USB_DT_BOS;
@@ -509,45 +687,173 @@ static int bos_desc(struct usb_composite_dev *cdev)
 	bos->wTotalLength = cpu_to_le16(USB_DT_BOS_SIZE);
 	bos->bNumDeviceCaps = 0;
 
+	/* Get Controller configuration */
+	if (cdev->gadget->ops->get_config_params) {
+		cdev->gadget->ops->get_config_params(cdev->gadget,
+						     &dcd_config_params);
+	} else {
+		dcd_config_params.besl_baseline =
+			USB_DEFAULT_BESL_UNSPECIFIED;
+		dcd_config_params.besl_deep =
+			USB_DEFAULT_BESL_UNSPECIFIED;
+		dcd_config_params.bU1devExitLat =
+			USB_DEFAULT_U1_DEV_EXIT_LAT;
+		dcd_config_params.bU2DevExitLat =
+			cpu_to_le16(USB_DEFAULT_U2_DEV_EXIT_LAT);
+	}
+
+	if (dcd_config_params.besl_baseline != USB_DEFAULT_BESL_UNSPECIFIED)
+		besl = USB_BESL_BASELINE_VALID |
+			USB_SET_BESL_BASELINE(dcd_config_params.besl_baseline);
+
+	if (dcd_config_params.besl_deep != USB_DEFAULT_BESL_UNSPECIFIED)
+		besl |= USB_BESL_DEEP_VALID |
+			USB_SET_BESL_DEEP(dcd_config_params.besl_deep);
+
 	/*
 	 * A SuperSpeed device shall include the USB2.0 extension descriptor
 	 * and shall support LPM when operating in USB2.0 HS mode.
 	 */
-	usb_ext = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
-	bos->bNumDeviceCaps++;
-	le16_add_cpu(&bos->wTotalLength, USB_DT_USB_EXT_CAP_SIZE);
-	usb_ext->bLength = USB_DT_USB_EXT_CAP_SIZE;
-	usb_ext->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
-	usb_ext->bDevCapabilityType = USB_CAP_TYPE_EXT;
-	usb_ext->bmAttributes = cpu_to_le32(USB_LPM_SUPPORT);
+	if (cdev->gadget->lpm_capable) {
+		usb_ext = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
+		bos->bNumDeviceCaps++;
+		le16_add_cpu(&bos->wTotalLength, USB_DT_USB_EXT_CAP_SIZE);
+		usb_ext->bLength = USB_DT_USB_EXT_CAP_SIZE;
+		usb_ext->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
+		usb_ext->bDevCapabilityType = USB_CAP_TYPE_EXT;
+		usb_ext->bmAttributes = cpu_to_le32(USB_LPM_SUPPORT |
+							USB_BESL_SUPPORT | besl);
+	}
 
 	/*
 	 * The Superspeed USB Capability descriptor shall be implemented by all
 	 * SuperSpeed devices.
 	 */
-	ss_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
-	bos->bNumDeviceCaps++;
-	le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SS_CAP_SIZE);
-	ss_cap->bLength = USB_DT_USB_SS_CAP_SIZE;
-	ss_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
-	ss_cap->bDevCapabilityType = USB_SS_CAP_TYPE;
-	ss_cap->bmAttributes = 0; /* LTM is not supported yet */
-	ss_cap->wSpeedSupported = cpu_to_le16(USB_LOW_SPEED_OPERATION |
-				USB_FULL_SPEED_OPERATION |
-				USB_HIGH_SPEED_OPERATION |
-				USB_5GBPS_OPERATION);
-	ss_cap->bFunctionalitySupport = USB_LOW_SPEED_OPERATION;
+	if (gadget_is_superspeed(cdev->gadget)) {
+		struct usb_ss_cap_descriptor *ss_cap;
+
+		ss_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
+		bos->bNumDeviceCaps++;
+		le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SS_CAP_SIZE);
+		ss_cap->bLength = USB_DT_USB_SS_CAP_SIZE;
+		ss_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
+		ss_cap->bDevCapabilityType = USB_SS_CAP_TYPE;
+		ss_cap->bmAttributes = 0; /* LTM is not supported yet */
+		ss_cap->wSpeedSupported = cpu_to_le16(USB_LOW_SPEED_OPERATION |
+						      USB_FULL_SPEED_OPERATION |
+						      USB_HIGH_SPEED_OPERATION |
+						      USB_5GBPS_OPERATION);
+		ss_cap->bFunctionalitySupport = USB_LOW_SPEED_OPERATION;
+		ss_cap->bU1devExitLat = dcd_config_params.bU1devExitLat;
+		ss_cap->bU2DevExitLat = dcd_config_params.bU2DevExitLat;
+	}
 
-	/* Get Controller configuration */
-	if (cdev->gadget->ops->get_config_params)
-		cdev->gadget->ops->get_config_params(cdev->gadget, &dcd_config_params);
-	else {
-		dcd_config_params.bU1devExitLat = USB_DEFAULT_U1_DEV_EXIT_LAT;
-		dcd_config_params.bU2DevExitLat =
-			cpu_to_le16(USB_DEFAULT_U2_DEV_EXIT_LAT);
+	/* The SuperSpeedPlus USB Device Capability descriptor */
+	if (gadget_is_superspeed_plus(cdev->gadget)) {
+		struct usb_ssp_cap_descriptor *ssp_cap;
+		u8 ssac = 1;
+		u8 ssic;
+		int i;
+
+		if (cdev->gadget->max_ssp_rate == USB_SSP_GEN_2x2)
+			ssac = 3;
+
+		/*
+		 * Paired RX and TX sublink speed attributes share
+		 * the same SSID.
+		 */
+		ssic = (ssac + 1) / 2 - 1;
+
+		ssp_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
+		bos->bNumDeviceCaps++;
+
+		le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SSP_CAP_SIZE(ssac));
+		ssp_cap->bLength = USB_DT_USB_SSP_CAP_SIZE(ssac);
+		ssp_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
+		ssp_cap->bDevCapabilityType = USB_SSP_CAP_TYPE;
+		ssp_cap->bReserved = 0;
+		ssp_cap->wReserved = 0;
+
+		ssp_cap->bmAttributes =
+			cpu_to_le32(FIELD_PREP(USB_SSP_SUBLINK_SPEED_ATTRIBS, ssac) |
+				    FIELD_PREP(USB_SSP_SUBLINK_SPEED_IDS, ssic));
+
+		ssp_cap->wFunctionalitySupport =
+			cpu_to_le16(FIELD_PREP(USB_SSP_MIN_SUBLINK_SPEED_ATTRIBUTE_ID, 0) |
+				    FIELD_PREP(USB_SSP_MIN_RX_LANE_COUNT, 1) |
+				    FIELD_PREP(USB_SSP_MIN_TX_LANE_COUNT, 1));
+
+		/*
+		 * Use 1 SSID if the gadget supports up to gen2x1 or not
+		 * specified:
+		 * - SSID 0 for symmetric RX/TX sublink speed of 10 Gbps.
+		 *
+		 * Use 1 SSID if the gadget supports up to gen1x2:
+		 * - SSID 0 for symmetric RX/TX sublink speed of 5 Gbps.
+		 *
+		 * Use 2 SSIDs if the gadget supports up to gen2x2:
+		 * - SSID 0 for symmetric RX/TX sublink speed of 5 Gbps.
+		 * - SSID 1 for symmetric RX/TX sublink speed of 10 Gbps.
+		 */
+		for (i = 0; i < ssac + 1; i++) {
+			u8 ssid;
+			u8 mantissa;
+			u8 type;
+
+			ssid = i >> 1;
+
+			if (cdev->gadget->max_ssp_rate == USB_SSP_GEN_2x1 ||
+			    cdev->gadget->max_ssp_rate == USB_SSP_GEN_UNKNOWN)
+				mantissa = 10;
+			else
+				mantissa = 5 << ssid;
+
+			if (i % 2)
+				type = USB_SSP_SUBLINK_SPEED_ST_SYM_TX;
+			else
+				type = USB_SSP_SUBLINK_SPEED_ST_SYM_RX;
+
+			ssp_cap->bmSublinkSpeedAttr[i] =
+				cpu_to_le32(FIELD_PREP(USB_SSP_SUBLINK_SPEED_SSID, ssid) |
+					    FIELD_PREP(USB_SSP_SUBLINK_SPEED_LSE,
+						       USB_SSP_SUBLINK_SPEED_LSE_GBPS) |
+					    FIELD_PREP(USB_SSP_SUBLINK_SPEED_ST, type) |
+					    FIELD_PREP(USB_SSP_SUBLINK_SPEED_LP,
+						       USB_SSP_SUBLINK_SPEED_LP_SSP) |
+					    FIELD_PREP(USB_SSP_SUBLINK_SPEED_LSM, mantissa));
+		}
+	}
+
+	/* The WebUSB Platform Capability descriptor */
+	if (cdev->use_webusb) {
+		struct usb_plat_dev_cap_descriptor *webusb_cap;
+		struct usb_webusb_cap_data *webusb_cap_data;
+		guid_t webusb_uuid = WEBUSB_UUID;
+
+		webusb_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
+		webusb_cap_data = (struct usb_webusb_cap_data *) webusb_cap->CapabilityData;
+		bos->bNumDeviceCaps++;
+		le16_add_cpu(&bos->wTotalLength,
+			USB_DT_USB_PLAT_DEV_CAP_SIZE(USB_WEBUSB_CAP_DATA_SIZE));
+
+		webusb_cap->bLength = USB_DT_USB_PLAT_DEV_CAP_SIZE(USB_WEBUSB_CAP_DATA_SIZE);
+		webusb_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
+		webusb_cap->bDevCapabilityType = USB_PLAT_DEV_CAP_TYPE;
+		webusb_cap->bReserved = 0;
+		export_guid(webusb_cap->UUID, &webusb_uuid);
+
+		if (cdev->bcd_webusb_version != 0)
+			webusb_cap_data->bcdVersion = cpu_to_le16(cdev->bcd_webusb_version);
+		else
+			webusb_cap_data->bcdVersion = WEBUSB_VERSION_1_00;
+
+		webusb_cap_data->bVendorCode = cdev->b_webusb_vendor_code;
+
+		if (strnlen(cdev->landing_page, sizeof(cdev->landing_page)) > 0)
+			webusb_cap_data->iLandingPage = WEBUSB_LANDING_PAGE_PRESENT;
+		else
+			webusb_cap_data->iLandingPage = WEBUSB_LANDING_PAGE_NOT_PRESENT;
 	}
-	ss_cap->bU1devExitLat = dcd_config_params.bU1devExitLat;
-	ss_cap->bU2DevExitLat = dcd_config_params.bU2DevExitLat;
 
 	return le16_to_cpu(bos->wTotalLength);
 }
@@ -575,45 +881,41 @@ static void reset_config(struct usb_composite_dev *cdev)
 {
 	struct usb_function		*f;
 
-	if (cdev->in_reset_config)
-		return;
-
-	cdev->in_reset_config = 1;
-
 	DBG(cdev, "reset config\n");
 
 	list_for_each_entry(f, &cdev->config->functions, list) {
 		if (f->disable)
 			f->disable(f);
+
 		bitmap_zero(f->endpoints, 32);
 	}
 	cdev->config = NULL;
 	cdev->delayed_status = 0;
-	cdev->in_reset_config = 0;
 }
 
 static int set_config(struct usb_composite_dev *cdev,
 		const struct usb_ctrlrequest *ctrl, unsigned number)
 {
 	struct usb_gadget	*gadget = cdev->gadget;
-	struct usb_configuration *c = NULL;
+	struct usb_configuration *c = NULL, *iter;
 	int			result = -EINVAL;
 	unsigned		power = gadget_is_otg(gadget) ? 8 : 100;
 	int			tmp;
 
 	if (number) {
-		list_for_each_entry(c, &cdev->configs, list) {
-			if (c->bConfigurationValue == number) {
-				/*
-				 * We disable the FDs of the previous
-				 * configuration only if the new configuration
-				 * is a valid one
-				 */
-				if (cdev->config)
-					reset_config(cdev);
-				result = 0;
-				break;
-			}
+		list_for_each_entry(iter, &cdev->configs, list) {
+			if (iter->bConfigurationValue != number)
+				continue;
+			/*
+			 * We disable the FDs of the previous
+			 * configuration only if the new configuration
+			 * is a valid one
+			 */
+			if (cdev->config)
+				reset_config(cdev);
+			c = iter;
+			result = 0;
+			break;
 		}
 		if (result < 0)
 			goto done;
@@ -624,12 +926,13 @@ static int set_config(struct usb_composite_dev *cdev,
 	}
 
 	INFO(cdev, "%s config #%d: %s\n",
-	     usb_speed_string(gadget->speed),
-	     number, c ? c->label : "unconfigured");
+	    usb_speed_string(gadget->speed),
+	    number, c ? c->label : "unconfigured");
 
 	if (!c)
 		goto done;
 
+	usb_gadget_set_state(gadget, USB_STATE_CONFIGURED);
 	cdev->config = c;
 
 	/* Initialize all interfaces by setting them to altsetting zero. */
@@ -646,16 +949,7 @@ static int set_config(struct usb_composite_dev *cdev,
 		 * function's setup callback instead of the current
 		 * configuration's setup callback.
 		 */
-		switch (gadget->speed) {
-		case USB_SPEED_SUPER:
-			descriptors = f->ss_descriptors;
-			break;
-		case USB_SPEED_HIGH:
-			descriptors = f->hs_descriptors;
-			break;
-		default:
-			descriptors = f->fs_descriptors;
-		}
+		descriptors = function_descriptors(f, gadget->speed);
 
 		for (; *descriptors; ++descriptors) {
 			struct usb_endpoint_descriptor *ep;
@@ -690,8 +984,21 @@ static int set_config(struct usb_composite_dev *cdev,
 	}
 
 	/* when we return, be sure our power usage is valid */
-	power = c->MaxPower ? c->MaxPower : usb_gadget_vbus_draw_ma;
+	if (c->MaxPower || (c->bmAttributes & USB_CONFIG_ATT_SELFPOWER))
+		power = c->MaxPower;
+	else
+		power = CONFIG_USB_GADGET_VBUS_DRAW;
+
+	if (gadget->speed < USB_SPEED_SUPER)
+		power = min(power, 500U);
+	else
+		power = min(power, 900U);
 done:
+	if (power <= USB_SELF_POWER_VBUS_MAX_DRAW)
+		usb_gadget_set_selfpowered(gadget);
+	else
+		usb_gadget_clear_selfpowered(gadget);
+
 	usb_gadget_vbus_draw(gadget, power);
 	if (result >= 0 && cdev->delayed_status)
 		result = USB_GADGET_DELAYED_STATUS;
@@ -775,8 +1082,9 @@ int usb_add_config(struct usb_composite_dev *cdev,
 	} else {
 		unsigned	i;
 
-		DBG(cdev, "cfg %d/%p speeds:%s%s%s\n",
+		DBG(cdev, "cfg %d/%p speeds:%s%s%s%s\n",
 			config->bConfigurationValue, config,
+			config->superspeed_plus ? " superplus" : "",
 			config->superspeed ? " super" : "",
 			config->highspeed ? " high" : "",
 			config->fullspeed
@@ -795,9 +1103,7 @@ int usb_add_config(struct usb_composite_dev *cdev,
 		}
 	}
 
-	/* set_alt(), or next bind(), sets up
-	 * ep->driver_data as needed.
-	 */
+	/* set_alt(), or next bind(), sets up ep->claimed as needed */
 	usb_ep_autoconfig_reset(cdev->gadget);
 
 done:
@@ -816,12 +1122,8 @@ static void remove_config(struct usb_composite_dev *cdev,
 
 		f = list_first_entry(&config->functions,
 				struct usb_function, list);
-		list_del(&f->list);
-		if (f->unbind) {
-			DBG(cdev, "unbind function '%s'/%p\n", f->name, f);
-			f->unbind(config, f);
-			/* may free memory for "f" */
-		}
+
+		usb_remove_function(config, f);
 	}
 	list_del(&config->list);
 	if (config->unbind) {
@@ -843,9 +1145,15 @@ static void remove_config(struct usb_composite_dev *cdev,
 void usb_remove_config(struct usb_composite_dev *cdev,
 		      struct usb_configuration *config)
 {
+	unsigned long flags;
+
+	spin_lock_irqsave(&cdev->lock, flags);
+
 	if (cdev->config == config)
 		reset_config(cdev);
 
+	spin_unlock_irqrestore(&cdev->lock, flags);
+
 	remove_config(cdev, config);
 }
 
@@ -853,7 +1161,7 @@ void usb_remove_config(struct usb_composite_dev *cdev,
 
 /* We support strings in multiple languages ... string descriptor zero
  * says which languages are supported.  The typical case will be that
- * only one language (probably English) is used, with I18N handled on
+ * only one language (probably English) is used, with i18n handled on
  * the host side.
  */
 
@@ -866,7 +1174,7 @@ static void collect_langs(struct usb_gadget_strings **sp, __le16 *buf)
 	while (*sp) {
 		s = *sp;
 		language = cpu_to_le16(s->language);
-		for (tmp = buf; *tmp && tmp < &buf[126]; tmp++) {
+		for (tmp = buf; *tmp && tmp < &buf[USB_MAX_STRING_LEN]; tmp++) {
 			if (*tmp == language)
 				goto repeat;
 		}
@@ -906,7 +1214,7 @@ static int get_string(struct usb_composite_dev *cdev,
 	struct usb_function		*f;
 	int				len;
 
-	/* Yes, not only is USB's I18N support probably more than most
+	/* Yes, not only is USB's i18n support probably more than most
 	 * folk will ever care about ... also, it's all supported here.
 	 * (Except for UTF8 support for Unicode's "Astral Planes".)
 	 */
@@ -941,7 +1249,7 @@ static int get_string(struct usb_composite_dev *cdev,
 			collect_langs(sp, s->wData);
 		}
 
-		for (len = 0; len <= 126 && s->wData[len]; len++)
+		for (len = 0; len <= USB_MAX_STRING_LEN && s->wData[len]; len++)
 			continue;
 		if (!len)
 			return -EINVAL;
@@ -950,6 +1258,19 @@ static int get_string(struct usb_composite_dev *cdev,
 		return s->bLength;
 	}
 
+	if (cdev->use_os_string && language == 0 && id == OS_STRING_IDX) {
+		struct usb_os_string *b = buf;
+		b->bLength = sizeof(*b);
+		b->bDescriptorType = USB_DT_STRING;
+		compiletime_assert(
+			sizeof(b->qwSignature) == sizeof(cdev->qw_sign),
+			"qwSignature size must be equal to qw_sign");
+		memcpy(&b->qwSignature, cdev->qw_sign, sizeof(b->qwSignature));
+		b->bMS_VendorCode = cdev->b_vendor_code;
+		b->bPad = 0;
+		return sizeof(*b);
+	}
+
 	list_for_each_entry(uc, &cdev->gstrings, list) {
 		struct usb_gadget_strings **sp;
 
@@ -1013,7 +1334,7 @@ int usb_string_id(struct usb_composite_dev *cdev)
 EXPORT_SYMBOL_GPL(usb_string_id);
 
 /**
- * usb_string_ids() - allocate unused string IDs in batch
+ * usb_string_ids_tab() - allocate unused string IDs in batch
  * @cdev: the device whose string descriptor IDs are being allocated
  * @str: an array of usb_string objects to assign numbers to
  * Context: single threaded during gadget setup
@@ -1105,11 +1426,11 @@ static struct usb_gadget_string_container *copy_gadget_strings(
  * This function will create a deep copy of usb_gadget_strings and usb_string
  * and attach it to the cdev. The actual string (usb_string.s) will not be
  * copied but only a referenced will be made. The struct usb_gadget_strings
- * array may contain multiple languges and should be NULL terminated.
+ * array may contain multiple languages and should be NULL terminated.
  * The ->language pointer of each struct usb_gadget_strings has to contain the
  * same amount of entries.
  * For instance: sp[0] is en-US, sp[1] is es-ES. It is expected that the first
- * usb_string entry of es-ES containts the translation of the first usb_string
+ * usb_string entry of es-ES contains the translation of the first usb_string
  * entry of en-US. Therefore both entries become the same id assign.
  */
 struct usb_string *usb_gstrings_attach(struct usb_composite_dev *cdev,
@@ -1211,6 +1532,8 @@ static void composite_setup_complete(struct usb_ep *ep, struct usb_request *req)
 
 	if (cdev->req == req)
 		cdev->setup_pending = false;
+	else if (cdev->os_desc_req == req)
+		cdev->os_desc_pending = false;
 	else
 		WARN(1, "unknown request %p\n", req);
 }
@@ -1224,6 +1547,8 @@ static int composite_ep0_queue(struct usb_composite_dev *cdev,
 	if (ret == 0) {
 		if (cdev->req == req)
 			cdev->setup_pending = true;
+		else if (cdev->os_desc_req == req)
+			cdev->os_desc_pending = true;
 		else
 			WARN(1, "unknown request %p\n", req);
 	}
@@ -1231,6 +1556,156 @@ static int composite_ep0_queue(struct usb_composite_dev *cdev,
 	return ret;
 }
 
+static int count_ext_compat(struct usb_configuration *c)
+{
+	int i, res;
+
+	res = 0;
+	for (i = 0; i < c->next_interface_id; ++i) {
+		struct usb_function *f;
+		int j;
+
+		f = c->interface[i];
+		for (j = 0; j < f->os_desc_n; ++j) {
+			struct usb_os_desc *d;
+
+			if (i != f->os_desc_table[j].if_id)
+				continue;
+			d = f->os_desc_table[j].os_desc;
+			if (d && d->ext_compat_id)
+				++res;
+		}
+	}
+	BUG_ON(res > 255);
+	return res;
+}
+
+static int fill_ext_compat(struct usb_configuration *c, u8 *buf)
+{
+	int i, count;
+
+	count = 16;
+	buf += 16;
+	for (i = 0; i < c->next_interface_id; ++i) {
+		struct usb_function *f;
+		int j;
+
+		f = c->interface[i];
+		for (j = 0; j < f->os_desc_n; ++j) {
+			struct usb_os_desc *d;
+
+			if (i != f->os_desc_table[j].if_id)
+				continue;
+			d = f->os_desc_table[j].os_desc;
+			if (d && d->ext_compat_id) {
+				*buf++ = i;
+				*buf++ = 0x01;
+				memcpy(buf, d->ext_compat_id, 16);
+				buf += 22;
+			} else {
+				++buf;
+				*buf = 0x01;
+				buf += 23;
+			}
+			count += 24;
+			if (count + 24 >= USB_COMP_EP0_OS_DESC_BUFSIZ)
+				return count;
+		}
+	}
+
+	return count;
+}
+
+static int count_ext_prop(struct usb_configuration *c, int interface)
+{
+	struct usb_function *f;
+	int j;
+
+	f = c->interface[interface];
+	for (j = 0; j < f->os_desc_n; ++j) {
+		struct usb_os_desc *d;
+
+		if (interface != f->os_desc_table[j].if_id)
+			continue;
+		d = f->os_desc_table[j].os_desc;
+		if (d && d->ext_compat_id)
+			return d->ext_prop_count;
+	}
+	return 0;
+}
+
+static int len_ext_prop(struct usb_configuration *c, int interface)
+{
+	struct usb_function *f;
+	struct usb_os_desc *d;
+	int j, res;
+
+	res = 10; /* header length */
+	f = c->interface[interface];
+	for (j = 0; j < f->os_desc_n; ++j) {
+		if (interface != f->os_desc_table[j].if_id)
+			continue;
+		d = f->os_desc_table[j].os_desc;
+		if (d)
+			return min(res + d->ext_prop_len, 4096);
+	}
+	return res;
+}
+
+static int fill_ext_prop(struct usb_configuration *c, int interface, u8 *buf)
+{
+	struct usb_function *f;
+	struct usb_os_desc *d;
+	struct usb_os_desc_ext_prop *ext_prop;
+	int j, count, n, ret;
+
+	f = c->interface[interface];
+	count = 10; /* header length */
+	buf += 10;
+	for (j = 0; j < f->os_desc_n; ++j) {
+		if (interface != f->os_desc_table[j].if_id)
+			continue;
+		d = f->os_desc_table[j].os_desc;
+		if (d)
+			list_for_each_entry(ext_prop, &d->ext_prop, entry) {
+				n = ext_prop->data_len +
+					ext_prop->name_len + 14;
+				if (count + n >= USB_COMP_EP0_OS_DESC_BUFSIZ)
+					return count;
+				usb_ext_prop_put_size(buf, n);
+				usb_ext_prop_put_type(buf, ext_prop->type);
+				ret = usb_ext_prop_put_name(buf, ext_prop->name,
+							    ext_prop->name_len);
+				if (ret < 0)
+					return ret;
+				switch (ext_prop->type) {
+				case USB_EXT_PROP_UNICODE:
+				case USB_EXT_PROP_UNICODE_ENV:
+				case USB_EXT_PROP_UNICODE_LINK:
+					usb_ext_prop_put_unicode(buf, ret,
+							 ext_prop->data,
+							 ext_prop->data_len);
+					break;
+				case USB_EXT_PROP_BINARY:
+					usb_ext_prop_put_binary(buf, ret,
+							ext_prop->data,
+							ext_prop->data_len);
+					break;
+				case USB_EXT_PROP_LE32:
+					/* not implemented */
+				case USB_EXT_PROP_BE32:
+					/* not implemented */
+				default:
+					return -EINVAL;
+				}
+				buf += n;
+				count += n;
+			}
+	}
+
+	return count;
+}
+
 /*
  * The setup() callback implements all the ep0 functionality that's
  * not handled lower down, in hardware or the hardware driver(like
@@ -1250,8 +1725,21 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 	u16				w_value = le16_to_cpu(ctrl->wValue);
 	u16				w_length = le16_to_cpu(ctrl->wLength);
 	struct usb_function		*f = NULL;
+	struct usb_function		*iter;
 	u8				endp;
 
+	if (w_length > USB_COMP_EP0_BUFSIZ) {
+		if (ctrl->bRequestType & USB_DIR_IN) {
+			/* Cast away the const, we are going to overwrite on purpose. */
+			__le16 *temp = (__le16 *)&ctrl->wLength;
+
+			*temp = cpu_to_le16(USB_COMP_EP0_BUFSIZ);
+			w_length = USB_COMP_EP0_BUFSIZ;
+		} else {
+			goto done;
+		}
+	}
+
 	/* partial re-init of the response message; the function or the
 	 * gadget might need to intercept e.g. a control-OUT completion
 	 * when we delegate to it.
@@ -1262,6 +1750,13 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 	req->length = 0;
 	gadget->ep0->driver_data = cdev;
 
+	/*
+	 * Don't let non-standard requests match any of the cases below
+	 * by accident.
+	 */
+	if ((ctrl->bRequestType & USB_TYPE_MASK) != USB_TYPE_STANDARD)
+		goto unknown;
+
 	switch (ctrl->bRequest) {
 
 	/* we handle all standard USB descriptors */
@@ -1277,11 +1772,16 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 				cdev->gadget->ep0->maxpacket;
 			if (gadget_is_superspeed(gadget)) {
 				if (gadget->speed >= USB_SPEED_SUPER) {
-					cdev->desc.bcdUSB = cpu_to_le16(0x0300);
+					cdev->desc.bcdUSB = cpu_to_le16(0x0320);
 					cdev->desc.bMaxPacketSize0 = 9;
 				} else {
 					cdev->desc.bcdUSB = cpu_to_le16(0x0210);
 				}
+			} else {
+				if (gadget->lpm_capable || cdev->use_webusb)
+					cdev->desc.bcdUSB = cpu_to_le16(0x0201);
+				else
+					cdev->desc.bcdUSB = cpu_to_le16(0x0200);
 			}
 
 			value = min(w_length, (u16) sizeof cdev->desc);
@@ -1299,7 +1799,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 			if (!gadget_is_dualspeed(gadget) ||
 			    gadget->speed >= USB_SPEED_SUPER)
 				break;
-			/* FALLTHROUGH */
+			fallthrough;
 		case USB_DT_CONFIG:
 			value = config_desc(cdev, w_value);
 			if (value >= 0)
@@ -1312,11 +1812,32 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 				value = min(w_length, (u16) value);
 			break;
 		case USB_DT_BOS:
-			if (gadget_is_superspeed(gadget)) {
+			if (gadget_is_superspeed(gadget) ||
+			    gadget->lpm_capable || cdev->use_webusb) {
 				value = bos_desc(cdev);
 				value = min(w_length, (u16) value);
 			}
 			break;
+		case USB_DT_OTG:
+			if (gadget_is_otg(gadget)) {
+				struct usb_configuration *config;
+				int otg_desc_len = 0;
+
+				if (cdev->config)
+					config = cdev->config;
+				else
+					config = list_first_entry(
+							&cdev->configs,
+						struct usb_configuration, list);
+				if (!config)
+					goto done;
+
+				otg_desc_len += sizeof(struct usb_otg_descriptor);
+
+				value = min_t(int, w_length, otg_desc_len);
+				memcpy(req->buf, config->descriptors[0], value);
+			}
+			break;
 		}
 		break;
 
@@ -1332,7 +1853,9 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 			else
 				VDBG(cdev, "HNP inactive\n");
 		}
+		spin_lock(&cdev->lock);
 		value = set_config(cdev, ctrl, w_value);
+		spin_unlock(&cdev->lock);
 		break;
 	case USB_REQ_GET_CONFIGURATION:
 		if (ctrl->bRequestType != USB_DIR_IN)
@@ -1344,9 +1867,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		value = min(w_length, (u16) 1);
 		break;
 
-	/* function drivers must handle get/set altsetting; if there's
-	 * no get() method, we know only altsetting zero works.
-	 */
+	/* function drivers must handle get/set altsetting */
 	case USB_REQ_SET_INTERFACE:
 		if (ctrl->bRequestType != USB_RECIP_INTERFACE)
 			goto unknown;
@@ -1355,8 +1876,16 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		f = cdev->config->interface[intf];
 		if (!f)
 			break;
-		if (w_value && !f->set_alt)
+
+		/*
+		 * If there's no get_alt() method, we know only altsetting zero
+		 * works. There is no need to check if set_alt() is not NULL
+		 * as we check this in usb_add_function().
+		 */
+		if (w_value && !f->get_alt)
 			break;
+
+		spin_lock(&cdev->lock);
 		value = f->set_alt(f, w_index, w_value);
 		if (value == USB_GADGET_DELAYED_STATUS) {
 			DBG(cdev,
@@ -1366,6 +1895,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 			DBG(cdev, "delayed_status count %d\n",
 					cdev->delayed_status);
 		}
+		spin_unlock(&cdev->lock);
 		break;
 	case USB_REQ_GET_INTERFACE:
 		if (ctrl->bRequestType != (USB_DIR_IN|USB_RECIP_INTERFACE))
@@ -1382,15 +1912,24 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		*((u8 *)req->buf) = value;
 		value = min(w_length, (u16) 1);
 		break;
-
-	/*
-	 * USB 3.0 additions:
-	 * Function driver should handle get_status request. If such cb
-	 * wasn't supplied we respond with default value = 0
-	 * Note: function driver should supply such cb only for the first
-	 * interface of the function
-	 */
 	case USB_REQ_GET_STATUS:
+		if (gadget_is_otg(gadget) && gadget->hnp_polling_support &&
+						(w_index == OTG_STS_SELECTOR)) {
+			if (ctrl->bRequestType != (USB_DIR_IN |
+							USB_RECIP_DEVICE))
+				goto unknown;
+			*((u8 *)req->buf) = gadget->host_request_flag;
+			value = 1;
+			break;
+		}
+
+		/*
+		 * USB 3.0 additions:
+		 * Function driver should handle get_status request. If such cb
+		 * wasn't supplied we respond with default value = 0
+		 * Note: function driver should supply such cb only for the
+		 * first interface of the function
+		 */
 		if (!gadget_is_superspeed(gadget))
 			goto unknown;
 		if (ctrl->bRequestType != (USB_DIR_IN | USB_RECIP_INTERFACE))
@@ -1439,6 +1978,116 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		break;
 	default:
 unknown:
+		/*
+		 * OS descriptors handling
+		 */
+		if (cdev->use_os_string && cdev->os_desc_config &&
+		    (ctrl->bRequestType & USB_TYPE_VENDOR) &&
+		    ctrl->bRequest == cdev->b_vendor_code) {
+			struct usb_configuration	*os_desc_cfg;
+			u8				*buf;
+			int				interface;
+			int				count = 0;
+
+			req = cdev->os_desc_req;
+			req->context = cdev;
+			req->complete = composite_setup_complete;
+			buf = req->buf;
+			os_desc_cfg = cdev->os_desc_config;
+			w_length = min_t(u16, w_length, USB_COMP_EP0_OS_DESC_BUFSIZ);
+			memset(buf, 0, w_length);
+			buf[5] = 0x01;
+			switch (ctrl->bRequestType & USB_RECIP_MASK) {
+			case USB_RECIP_DEVICE:
+				if (w_index != 0x4 || (w_value >> 8))
+					break;
+				buf[6] = w_index;
+				/* Number of ext compat interfaces */
+				count = count_ext_compat(os_desc_cfg);
+				buf[8] = count;
+				count *= 24; /* 24 B/ext compat desc */
+				count += 16; /* header */
+				put_unaligned_le32(count, buf);
+				value = w_length;
+				if (w_length > 0x10) {
+					value = fill_ext_compat(os_desc_cfg, buf);
+					value = min_t(u16, w_length, value);
+				}
+				break;
+			case USB_RECIP_INTERFACE:
+				if (w_index != 0x5 || (w_value >> 8))
+					break;
+				interface = w_value & 0xFF;
+				if (interface >= MAX_CONFIG_INTERFACES ||
+				    !os_desc_cfg->interface[interface])
+					break;
+				buf[6] = w_index;
+				count = count_ext_prop(os_desc_cfg,
+					interface);
+				put_unaligned_le16(count, buf + 8);
+				count = len_ext_prop(os_desc_cfg,
+					interface);
+				put_unaligned_le32(count, buf);
+				value = w_length;
+				if (w_length > 0x0A) {
+					value = fill_ext_prop(os_desc_cfg,
+							      interface, buf);
+					if (value >= 0)
+						value = min_t(u16, w_length, value);
+				}
+				break;
+			}
+
+			goto check_value;
+		}
+
+		/*
+		 * WebUSB URL descriptor handling, following:
+		 * https://wicg.github.io/webusb/#device-requests
+		 */
+		if (cdev->use_webusb &&
+		    ctrl->bRequestType == (USB_DIR_IN | USB_TYPE_VENDOR) &&
+		    w_index == WEBUSB_GET_URL &&
+		    w_value == WEBUSB_LANDING_PAGE_PRESENT &&
+		    ctrl->bRequest == cdev->b_webusb_vendor_code) {
+			unsigned int	landing_page_length;
+			unsigned int	landing_page_offset;
+			struct webusb_url_descriptor *url_descriptor =
+					(struct webusb_url_descriptor *)cdev->req->buf;
+
+			url_descriptor->bDescriptorType = WEBUSB_URL_DESCRIPTOR_TYPE;
+
+			if (strncasecmp(cdev->landing_page, "https://",  8) == 0) {
+				landing_page_offset = 8;
+				url_descriptor->bScheme = WEBUSB_URL_SCHEME_HTTPS;
+			} else if (strncasecmp(cdev->landing_page, "http://", 7) == 0) {
+				landing_page_offset = 7;
+				url_descriptor->bScheme = WEBUSB_URL_SCHEME_HTTP;
+			} else {
+				landing_page_offset = 0;
+				url_descriptor->bScheme = WEBUSB_URL_SCHEME_NONE;
+			}
+
+			landing_page_length = strnlen(cdev->landing_page,
+				sizeof(url_descriptor->URL)
+				- WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH + landing_page_offset);
+
+			if (ctrl->wLength < WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH
+					    + landing_page_length)
+				landing_page_length = ctrl->wLength
+					- WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH + landing_page_offset;
+
+			memcpy(url_descriptor->URL,
+				cdev->landing_page + landing_page_offset,
+				landing_page_length - landing_page_offset);
+			url_descriptor->bLength = landing_page_length
+				- landing_page_offset + WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH;
+
+			value = url_descriptor->bLength;
+
+			goto check_value;
+		}
+
 		VDBG(cdev,
 			"non-core control req%02x.%02x v%04x i%04x l%d\n",
 			ctrl->bRequestType, ctrl->bRequest,
@@ -1447,11 +2096,22 @@ unknown:
 		/* functions always handle their interfaces and endpoints...
 		 * punt other recipients (other, WUSB, ...) to the current
 		 * configuration code.
-		 *
-		 * REVISIT it could make sense to let the composite device
-		 * take such requests too, if that's ever needed:  to work
-		 * in config 0, etc.
 		 */
+		if (cdev->config) {
+			list_for_each_entry(f, &cdev->config->functions, list)
+				if (f->req_match &&
+				    f->req_match(f, ctrl, false))
+					goto try_fun_setup;
+		} else {
+			struct usb_configuration *c;
+			list_for_each_entry(c, &cdev->configs, list)
+				list_for_each_entry(f, &c->functions, list)
+					if (f->req_match &&
+					    f->req_match(f, ctrl, true))
+						goto try_fun_setup;
+		}
+		f = NULL;
+
 		switch (ctrl->bRequestType & USB_RECIP_MASK) {
 		case USB_RECIP_INTERFACE:
 			if (!cdev->config || intf >= MAX_CONFIG_INTERFACES)
@@ -1460,16 +2120,18 @@ unknown:
 			break;
 
 		case USB_RECIP_ENDPOINT:
+			if (!cdev->config)
+				break;
 			endp = ((w_index & 0x80) >> 3) | (w_index & 0x0f);
-			list_for_each_entry(f, &cdev->config->functions, list) {
-				if (test_bit(endp, f->endpoints))
+			list_for_each_entry(iter, &cdev->config->functions, list) {
+				if (test_bit(endp, iter->endpoints)) {
+					f = iter;
 					break;
+				}
 			}
-			if (&f->list == &cdev->config->functions)
-				f = NULL;
 			break;
 		}
-
+try_fun_setup:
 		if (f && f->setup)
 			value = f->setup(f, ctrl);
 		else {
@@ -1497,9 +2159,11 @@ unknown:
 		goto done;
 	}
 
+check_value:
 	/* respond with data transfer before status phase? */
 	if (value >= 0 && value != USB_GADGET_DELAYED_STATUS) {
 		req->length = value;
+		req->context = cdev;
 		req->zero = value < w_length;
 		value = composite_ep0_queue(cdev, req);
 		if (value < 0) {
@@ -1521,14 +2185,18 @@ done:
 static void __composite_disconnect(struct usb_gadget *gadget)
 {
 	struct usb_composite_dev	*cdev = get_gadget_data(gadget);
+	unsigned long			flags;
 
 	/* REVISIT:  should we have config and device level
 	 * disconnect callbacks?
 	 */
+	spin_lock_irqsave(&cdev->lock, flags);
+	cdev->suspended = 0;
 	if (cdev->config)
 		reset_config(cdev);
 	if (cdev->driver->disconnect)
 		cdev->driver->disconnect(cdev);
+	spin_unlock_irqrestore(&cdev->lock, flags);
 }
 
 void composite_disconnect(struct usb_gadget *gadget)
@@ -1537,7 +2205,7 @@ void composite_disconnect(struct usb_gadget *gadget)
 	__composite_disconnect(gadget);
 }
 
-static void composite_reset(struct usb_gadget *gadget)
+void composite_reset(struct usb_gadget *gadget)
 {
 	/*
 	 * Section 1.4.13 Standard Downstream Port of the USB battery charging
@@ -1553,6 +2221,8 @@ static void composite_reset(struct usb_gadget *gadget)
 static void __composite_unbind(struct usb_gadget *gadget, bool unbind_driver)
 {
 	struct usb_composite_dev	*cdev = get_gadget_data(gadget);
+	struct usb_gadget_strings	*gstr = cdev->driver->strings[0];
+	struct usb_string		*dev_str = gstr->strings;
 
 	/* composite_disconnect() must already have been called
 	 * by the underlying peripheral controller driver!
@@ -1572,6 +2242,9 @@ static void __composite_unbind(struct usb_gadget *gadget, bool unbind_driver)
 
 	composite_dev_cleanup(cdev);
 
+	if (dev_str[USB_GADGET_MANUFACTURER_IDX].s == cdev->def_manufacturer)
+		dev_str[USB_GADGET_MANUFACTURER_IDX].s = "";
+
 	kfree(cdev->def_manufacturer);
 	kfree(cdev);
 	set_gadget_data(gadget, NULL);
@@ -1636,6 +2309,7 @@ int composite_dev_prepare(struct usb_composite_driver *composite,
 		goto fail;
 
 	cdev->req->complete = composite_setup_complete;
+	cdev->req->context = cdev;
 	gadget->ep0->driver_data = cdev;
 
 	cdev->driver = composite;
@@ -1645,7 +2319,7 @@ int composite_dev_prepare(struct usb_composite_driver *composite,
 	 * more than 100mA from USB must report itself as bus-powered in
 	 * the GetStatus(DEVICE) call.
 	 */
-	if (usb_gadget_vbus_draw_ma <= USB_SELF_POWER_VBUS_MAX_DRAW)
+	if (CONFIG_USB_GADGET_VBUS_DRAW <= USB_SELF_POWER_VBUS_MAX_DRAW)
 		usb_gadget_set_selfpowered(gadget);
 
 	/* interface and string IDs start at zero via kzalloc.
@@ -1661,21 +2335,73 @@ fail:
 	return ret;
 }
 
+int composite_os_desc_req_prepare(struct usb_composite_dev *cdev,
+				  struct usb_ep *ep0)
+{
+	int ret = 0;
+
+	cdev->os_desc_req = usb_ep_alloc_request(ep0);
+	if (!cdev->os_desc_req) {
+		ret = -ENOMEM;
+		goto end;
+	}
+
+	cdev->os_desc_req->buf = kmalloc(USB_COMP_EP0_OS_DESC_BUFSIZ,
+					 GFP_KERNEL);
+	if (!cdev->os_desc_req->buf) {
+		ret = -ENOMEM;
+		usb_ep_free_request(ep0, cdev->os_desc_req);
+		goto end;
+	}
+	cdev->os_desc_req->context = cdev;
+	cdev->os_desc_req->complete = composite_setup_complete;
+end:
+	return ret;
+}
+
 void composite_dev_cleanup(struct usb_composite_dev *cdev)
 {
 	struct usb_gadget_string_container *uc, *tmp;
+	struct usb_ep			   *ep, *tmp_ep;
 
 	list_for_each_entry_safe(uc, tmp, &cdev->gstrings, list) {
 		list_del(&uc->list);
 		kfree(uc);
 	}
+	if (cdev->os_desc_req) {
+		if (cdev->os_desc_pending)
+			usb_ep_dequeue(cdev->gadget->ep0, cdev->os_desc_req);
+
+		kfree(cdev->os_desc_req->buf);
+		cdev->os_desc_req->buf = NULL;
+		usb_ep_free_request(cdev->gadget->ep0, cdev->os_desc_req);
+		cdev->os_desc_req = NULL;
+	}
 	if (cdev->req) {
 		if (cdev->setup_pending)
 			usb_ep_dequeue(cdev->gadget->ep0, cdev->req);
+
 		kfree(cdev->req->buf);
+		cdev->req->buf = NULL;
 		usb_ep_free_request(cdev->gadget->ep0, cdev->req);
+		cdev->req = NULL;
 	}
 	cdev->next_string_id = 0;
+
+	/*
+	 * Some UDC backends have a dynamic EP allocation scheme.
+	 *
+	 * In that case, the dispose() callback is used to notify the
+	 * backend that the EPs are no longer in use.
+	 *
+	 * Note: The UDC backend can remove the EP from the ep_list as
+	 *	 a result, so we need to use the _safe list iterator.
+	 */
+	list_for_each_entry_safe(ep, tmp_ep,
+				 &cdev->gadget->ep_list, ep_list) {
+		if (ep->ops->dispose)
+			ep->ops->dispose(ep);
+	}
 }
 
 static int composite_bind(struct usb_gadget *gadget,
@@ -1689,6 +2415,7 @@ static int composite_bind(struct usb_gadget *gadget,
 	if (!cdev)
 		return status;
 
+	spin_lock_init(&cdev->lock);
 	cdev->gadget = gadget;
 	set_gadget_data(gadget, cdev);
 	INIT_LIST_HEAD(&cdev->configs);
@@ -1706,6 +2433,12 @@ static int composite_bind(struct usb_gadget *gadget,
 	if (status < 0)
 		goto fail;
 
+	if (cdev->use_os_string) {
+		status = composite_os_desc_req_prepare(cdev, gadget->ep0);
+		if (status)
+			goto fail;
+	}
+
 	update_unchanged_dev_desc(&cdev->desc, composite->dev);
 
 	/* has userspace failed to provide a serial number? */
@@ -1795,8 +2528,10 @@ void usb_composite_setup_continue(struct usb_composite_dev *cdev)
 {
 	int			value;
 	struct usb_request	*req = cdev->req;
+	unsigned long		flags;
 
 	DBG(cdev, "%s\n", __func__);
+	spin_lock_irqsave(&cdev->lock, flags);
 
 	if (cdev->delayed_status == 0) {
 		WARN(cdev, "%s: Unexpected call\n", __func__);
@@ -1804,6 +2539,7 @@ void usb_composite_setup_continue(struct usb_composite_dev *cdev)
 	} else if (--cdev->delayed_status == 0) {
 		DBG(cdev, "%s: Completing delayed status\n", __func__);
 		req->length = 0;
+		req->context = cdev;
 		value = composite_ep0_queue(cdev, req);
 		if (value < 0) {
 			DBG(cdev, "ep_queue --> %d\n", value);
@@ -1811,12 +2547,14 @@ void usb_composite_setup_continue(struct usb_composite_dev *cdev)
 			composite_setup_complete(cdev->gadget->ep0, req);
 		}
 	}
+
+	spin_unlock_irqrestore(&cdev->lock, flags);
 }
 EXPORT_SYMBOL_GPL(usb_composite_setup_continue);
 
 static char *composite_default_mfr(struct usb_gadget *gadget)
 {
-	return basprintf("barebox %s", gadget->name);
+	return basprintf("barebox with %s", gadget->name);
 }
 
 void usb_composite_overwrite_options(struct usb_composite_dev *cdev,
diff --git a/drivers/usb/gadget/u_os_desc.h b/drivers/usb/gadget/u_os_desc.h
new file mode 100644
index 0000000000..5d7d35c8cc
--- /dev/null
+++ b/drivers/usb/gadget/u_os_desc.h
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * u_os_desc.h
+ *
+ * Utility definitions for "OS Descriptors" support
+ *
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ *		http://www.samsung.com
+ *
+ * Author: Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>
+ */
+
+#ifndef __U_OS_DESC_H__
+#define __U_OS_DESC_H__
+
+#include <asm/unaligned.h>
+#include <linux/nls.h>
+
+#define USB_EXT_PROP_DW_SIZE			0
+#define USB_EXT_PROP_DW_PROPERTY_DATA_TYPE	4
+#define USB_EXT_PROP_W_PROPERTY_NAME_LENGTH	8
+#define USB_EXT_PROP_B_PROPERTY_NAME		10
+#define USB_EXT_PROP_DW_PROPERTY_DATA_LENGTH	10
+#define USB_EXT_PROP_B_PROPERTY_DATA		14
+
+#define USB_EXT_PROP_RESERVED			0
+#define USB_EXT_PROP_UNICODE			1
+#define USB_EXT_PROP_UNICODE_ENV		2
+#define USB_EXT_PROP_BINARY			3
+#define USB_EXT_PROP_LE32			4
+#define USB_EXT_PROP_BE32			5
+#define USB_EXT_PROP_UNICODE_LINK		6
+#define USB_EXT_PROP_UNICODE_MULTI		7
+
+static inline u8 *__usb_ext_prop_ptr(u8 *buf, size_t offset)
+{
+	return buf + offset;
+}
+
+static inline u8 *usb_ext_prop_size_ptr(u8 *buf)
+{
+	return __usb_ext_prop_ptr(buf, USB_EXT_PROP_DW_SIZE);
+}
+
+static inline u8 *usb_ext_prop_type_ptr(u8 *buf)
+{
+	return __usb_ext_prop_ptr(buf, USB_EXT_PROP_DW_PROPERTY_DATA_TYPE);
+}
+
+static inline u8 *usb_ext_prop_name_len_ptr(u8 *buf)
+{
+	return __usb_ext_prop_ptr(buf, USB_EXT_PROP_W_PROPERTY_NAME_LENGTH);
+}
+
+static inline u8 *usb_ext_prop_name_ptr(u8 *buf)
+{
+	return __usb_ext_prop_ptr(buf, USB_EXT_PROP_B_PROPERTY_NAME);
+}
+
+static inline u8 *usb_ext_prop_data_len_ptr(u8 *buf, size_t off)
+{
+	return __usb_ext_prop_ptr(buf,
+				  USB_EXT_PROP_DW_PROPERTY_DATA_LENGTH + off);
+}
+
+static inline u8 *usb_ext_prop_data_ptr(u8 *buf, size_t off)
+{
+	return __usb_ext_prop_ptr(buf, USB_EXT_PROP_B_PROPERTY_DATA + off);
+}
+
+static inline void usb_ext_prop_put_size(u8 *buf, int dw_size)
+{
+	put_unaligned_le32(dw_size, usb_ext_prop_size_ptr(buf));
+}
+
+static inline void usb_ext_prop_put_type(u8 *buf, int type)
+{
+	put_unaligned_le32(type, usb_ext_prop_type_ptr(buf));
+}
+
+static inline int usb_ext_prop_put_name(u8 *buf, const char *name, int pnl)
+{
+	int result;
+
+	put_unaligned_le16(pnl, usb_ext_prop_name_len_ptr(buf));
+	result = utf8s_to_utf16s(name, strlen(name), UTF16_LITTLE_ENDIAN,
+		(wchar_t *) usb_ext_prop_name_ptr(buf), pnl - 2);
+	if (result < 0)
+		return result;
+
+	put_unaligned_le16(0, &buf[USB_EXT_PROP_B_PROPERTY_NAME + pnl - 2]);
+
+	return pnl;
+}
+
+static inline void usb_ext_prop_put_binary(u8 *buf, int pnl, const u8 *data,
+					   int data_len)
+{
+	put_unaligned_le32(data_len, usb_ext_prop_data_len_ptr(buf, pnl));
+	memcpy(usb_ext_prop_data_ptr(buf, pnl), data, data_len);
+}
+
+static inline int usb_ext_prop_put_unicode(u8 *buf, int pnl, const char *string,
+					   int data_len)
+{
+	int result;
+	put_unaligned_le32(data_len, usb_ext_prop_data_len_ptr(buf, pnl));
+	result = utf8s_to_utf16s(string, data_len >> 1, UTF16_LITTLE_ENDIAN,
+			(wchar_t *) usb_ext_prop_data_ptr(buf, pnl),
+			data_len - 2);
+	if (result < 0)
+		return result;
+
+	put_unaligned_le16(0,
+		&buf[USB_EXT_PROP_B_PROPERTY_DATA + pnl + data_len - 2]);
+
+	return data_len;
+}
+
+#endif /* __U_OS_DESC_H__ */
diff --git a/include/linux/usb/composite.h b/include/linux/usb/composite.h
index 7bd89b1de1..c3ee403abf 100644
--- a/include/linux/usb/composite.h
+++ b/include/linux/usb/composite.h
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * composite.h -- framework for usb gadgets which are composite devices
  *
  * Copyright (C) 2006-2008 David Brownell
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  */
 
 #ifndef	__LINUX_USB_COMPOSITE_H
@@ -33,12 +20,15 @@
  * might alternatively be packaged in individual configurations, but in
  * the composite model the host can use both functions at the same time.
  */
+
 #include <init.h>
 #include <linux/usb/ch9.h>
 #include <linux/usb/gadget.h>
 #include <linux/log2.h>
 #include <linux/stringify.h>
 #include <linux/spinlock.h>
+#include <linux/bcd.h>
+#include <linux/usb/webusb.h>
 
 /*
  * USB function drivers should return USB_GADGET_DELAYED_STATUS if they
@@ -50,11 +40,67 @@
 #define USB_GADGET_DELAYED_STATUS       0x7fff	/* Impossibly large value */
 
 /* big enough to hold our biggest descriptor */
-#define USB_COMP_EP0_BUFSIZ	1024
+#define USB_COMP_EP0_BUFSIZ	4096
+
+/* OS feature descriptor length <= 4kB */
+#define USB_COMP_EP0_OS_DESC_BUFSIZ	4096
 
 #define USB_MS_TO_HS_INTERVAL(x)	(ilog2((x * 1000 / 125)) + 1)
 struct usb_configuration;
 
+/**
+ * struct usb_os_desc_ext_prop - describes one "Extended Property"
+ * @entry: used to keep a list of extended properties
+ * @type: Extended Property type
+ * @name_len: Extended Property unicode name length, including terminating '\0'
+ * @name: Extended Property name
+ * @data_len: Length of Extended Property blob (for unicode store double len)
+ * @data: Extended Property blob
+ * @item: Represents this Extended Property in configfs
+ */
+struct usb_os_desc_ext_prop {
+	struct list_head	entry;
+	u8			type;
+	int			name_len;
+	char			*name;
+	int			data_len;
+	char			*data;
+};
+
+/**
+ * struct usb_os_desc - describes OS descriptors associated with one interface
+ * @ext_compat_id: 16 bytes of "Compatible ID" and "Subcompatible ID"
+ * @ext_prop: Extended Properties list
+ * @ext_prop_len: Total length of Extended Properties blobs
+ * @ext_prop_count: Number of Extended Properties
+ * @opts_mutex: Optional mutex protecting config data of a usb_function_instance
+ * @group: Represents OS descriptors associated with an interface in configfs
+ * @owner: Module associated with this OS descriptor
+ */
+struct usb_os_desc {
+	char			*ext_compat_id;
+	struct list_head	ext_prop;
+	int			ext_prop_len;
+	int			ext_prop_count;
+	struct mutex		*opts_mutex;
+	struct module		*owner;
+};
+
+/**
+ * struct usb_os_desc_table - describes OS descriptors associated with one
+ * interface of a usb_function
+ * @if_id: Interface id
+ * @os_desc: "Extended Compatibility ID" and "Extended Properties" of the
+ *	interface
+ *
+ * Each interface can have at most one "Extended Compatibility ID" and a
+ * number of "Extended Properties".
+ */
+struct usb_os_desc_table {
+	int			if_id;
+	struct usb_os_desc	*os_desc;
+};
+
 /**
  * struct usb_function - describes one function of a configuration
  * @name: For diagnostics, identifies the function.
@@ -70,8 +116,16 @@ struct usb_configuration;
  *	string identifiers assigned during @bind(). If this
  *	pointer is null after initiation, the function will not
  *	be available at super speed.
+ * @ssp_descriptors: Table of super speed plus descriptors, using
+ *	interface and string identifiers assigned during @bind(). If
+ *	this pointer is null after initiation, the function will not
+ *	be available at super speed plus.
  * @config: assigned when @usb_add_function() is called; this is the
  *	configuration with which this function is associated.
+ * @os_desc_table: Table of (interface id, os descriptors) pairs. The function
+ *	can expose more than one interface. If an interface is a member of
+ *	an IAD, only the first interface of IAD has its entry in the table.
+ * @os_desc_n: Number of entries in os_desc_table
  * @bind: Before the gadget can register, all of its functions bind() to the
  *	available resources including string and interface identifiers used
  *	in interface or class descriptors; endpoints; I/O buffers; and so on.
@@ -88,6 +142,7 @@ struct usb_configuration;
  * @disable: (REQUIRED) Indicates the function should be disabled.  Reasons
  *	include host resetting or reconfiguring the gadget, and disconnection.
  * @setup: Used for interface-specific control requests.
+ * @req_match: Tests if a given class request can be handled by this function.
  * @suspend: Notifies functions when the host stops sending USB traffic.
  * @resume: Notifies functions when the host restarts USB traffic.
  * @get_status: Returns function status as a reply to
@@ -129,6 +184,9 @@ struct usb_function {
 
 	struct usb_configuration	*config;
 
+	struct usb_os_desc_table	*os_desc_table;
+	unsigned			os_desc_n;
+
 	/* REVISIT:  bind() functions can be marked __init, which
 	 * makes trouble for section mismatch analysis.  See if
 	 * we can't restructure things to avoid mismatching.
@@ -151,6 +209,9 @@ struct usb_function {
 	void			(*disable)(struct usb_function *);
 	int			(*setup)(struct usb_function *,
 					const struct usb_ctrlrequest *);
+	bool			(*req_match)(struct usb_function *,
+					const struct usb_ctrlrequest *,
+					bool config0);
 	void			(*suspend)(struct usb_function *);
 	void			(*resume)(struct usb_function *);
 
@@ -163,6 +224,8 @@ struct usb_function {
 	struct list_head		list;
 	DECLARE_BITMAP(endpoints, 32);
 	const struct usb_function_instance *fi;
+
+	unsigned int		bind_deactivated:1;
 };
 
 int usb_add_function(struct usb_configuration *, struct usb_function *);
@@ -172,6 +235,9 @@ int usb_function_activate(struct usb_function *);
 
 int usb_interface_id(struct usb_configuration *, struct usb_function *);
 
+int config_ep_by_speed_and_alt(struct usb_gadget *g, struct usb_function *f,
+				struct usb_ep *_ep, u8 alt);
+
 int config_ep_by_speed(struct usb_gadget *g, struct usb_function *f,
 			struct usb_ep *_ep);
 
@@ -191,7 +257,7 @@ int config_ep_by_speed(struct usb_gadget *g, struct usb_function *f,
  * @bConfigurationValue: Copied into configuration descriptor.
  * @iConfiguration: Copied into configuration descriptor.
  * @bmAttributes: Copied into configuration descriptor.
- * @MaxPower: Power consumtion in mA. Used to compute bMaxPower in the
+ * @MaxPower: Power consumption in mA. Used to compute bMaxPower in the
  *	configuration descriptor after considering the bus speed.
  * @cdev: assigned by @usb_add_config() before calling @bind(); this is
  *	the device associated with this configuration.
@@ -250,6 +316,7 @@ struct usb_configuration {
 	unsigned		superspeed:1;
 	unsigned		highspeed:1;
 	unsigned		fullspeed:1;
+	unsigned		superspeed_plus:1;
 	struct usb_function	*interface[MAX_CONFIG_INTERFACES];
 };
 
@@ -324,9 +391,26 @@ struct usb_composite_driver {
 
 extern int usb_composite_probe(struct usb_composite_driver *driver);
 extern void usb_composite_unregister(struct usb_composite_driver *driver);
+
+/**
+ * module_usb_composite_driver() - Helper macro for registering a USB gadget
+ * composite driver
+ * @__usb_composite_driver: usb_composite_driver struct
+ *
+ * Helper macro for USB gadget composite drivers which do not do anything
+ * special in module init/exit. This eliminates a lot of boilerplate. Each
+ * module may only use this macro once, and calling it replaces module_init()
+ * and module_exit()
+ */
+#define module_usb_composite_driver(__usb_composite_driver) \
+	module_driver(__usb_composite_driver, usb_composite_probe, \
+		       usb_composite_unregister)
+
 extern void usb_composite_setup_continue(struct usb_composite_dev *cdev);
 extern int composite_dev_prepare(struct usb_composite_driver *composite,
 		struct usb_composite_dev *cdev);
+extern int composite_os_desc_req_prepare(struct usb_composite_dev *cdev,
+					 struct usb_ep *ep0);
 void composite_dev_cleanup(struct usb_composite_dev *cdev);
 
 static inline struct usb_composite_driver *to_cdriver(
@@ -335,11 +419,25 @@ static inline struct usb_composite_driver *to_cdriver(
 	return container_of(gdrv, struct usb_composite_driver, gadget_driver);
 }
 
+#define OS_STRING_QW_SIGN_LEN		14
+#define OS_STRING_IDX			0xEE
+
 /**
- * struct usb_composite_device - represents one composite usb gadget
+ * struct usb_composite_dev - represents one composite usb gadget
  * @gadget: read-only, abstracts the gadget's usb peripheral controller
  * @req: used for control responses; buffer is pre-allocated
+ * @os_desc_req: used for OS descriptors responses; buffer is pre-allocated
  * @config: the currently active configuration
+ * @qw_sign: qwSignature part of the OS string
+ * @b_vendor_code: bMS_VendorCode part of the OS string
+ * @use_os_string: false by default, interested gadgets set it
+ * @bcd_webusb_version: 0x0100 by default, WebUSB specification version
+ * @b_webusb_vendor_code: 0x0 by default, vendor code for WebUSB
+ * @landing_page: empty by default, landing page to announce in WebUSB
+ * @use_webusb:: false by default, interested gadgets set it
+ * @os_desc_config: the configuration to be used with OS descriptors
+ * @setup_pending: true when setup request is queued but not completed
+ * @os_desc_pending: true when os_desc request is queued but not completed
  *
  * One of these devices is allocated and initialized before the
  * associated device driver's bind() is called.
@@ -350,6 +448,7 @@ static inline struct usb_composite_driver *to_cdriver(
  * sure doing that won't hurt too much.
  *
  * One notion for how to handle Wireless USB devices involves:
+ *
  * (a) a second gadget here, discovery mechanism TBD, but likely
  *     needing separate "register/unregister WUSB gadget" calls;
  * (b) updates to usb_gadget to include flags "is it wireless",
@@ -369,9 +468,22 @@ static inline struct usb_composite_driver *to_cdriver(
 struct usb_composite_dev {
 	struct usb_gadget		*gadget;
 	struct usb_request		*req;
+	struct usb_request		*os_desc_req;
 
 	struct usb_configuration	*config;
 
+	/* OS String is a custom (yet popular) extension to the USB standard. */
+	u8				qw_sign[OS_STRING_QW_SIGN_LEN];
+	u8				b_vendor_code;
+	struct usb_configuration	*os_desc_config;
+	unsigned int			use_os_string:1;
+
+	/* WebUSB */
+	u16				bcd_webusb_version;
+	u8				b_webusb_vendor_code;
+	char				landing_page[WEBUSB_URL_RAW_MAX_LENGTH];
+	unsigned int			use_webusb:1;
+
 	/* private: */
 	/* internals */
 	unsigned int			suspended:1;
@@ -381,6 +493,7 @@ struct usb_composite_dev {
 	struct usb_composite_driver	*driver;
 	u8				next_string_id;
 	char				*def_manufacturer;
+	struct usb_string		*usb_strings;
 
 	/* the gadget driver won't enable the data pullup
 	 * while the deactivation count is nonzero.
@@ -395,10 +508,9 @@ struct usb_composite_dev {
 	/* protects deactivations and delayed_status counts*/
 	spinlock_t			lock;
 
-	int in_reset_config;
-
 	/* public: */
 	unsigned int			setup_pending:1;
+	unsigned int			os_desc_pending:1;
 };
 
 extern int usb_string_id(struct usb_composite_dev *c);
@@ -410,8 +522,12 @@ extern struct usb_string *usb_gstrings_attach(struct usb_composite_dev *cdev,
 extern int usb_string_ids_n(struct usb_composite_dev *c, unsigned n);
 
 extern void composite_disconnect(struct usb_gadget *gadget);
+extern void composite_reset(struct usb_gadget *gadget);
+
 extern int composite_setup(struct usb_gadget *gadget,
 		const struct usb_ctrlrequest *ctrl);
+extern void composite_suspend(struct usb_gadget *gadget);
+extern void composite_resume(struct usb_gadget *gadget);
 
 /*
  * Some systems will need runtime overrides for the  product identifiers
@@ -426,14 +542,40 @@ struct usb_composite_overwrite {
 	char	*manufacturer;
 	char	*product;
 };
+#define USB_GADGET_COMPOSITE_OPTIONS()					\
+	static struct usb_composite_overwrite coverwrite;		\
+									\
+	module_param_named(idVendor, coverwrite.idVendor, ushort, S_IRUGO); \
+	MODULE_PARM_DESC(idVendor, "USB Vendor ID");			\
+									\
+	module_param_named(idProduct, coverwrite.idProduct, ushort, S_IRUGO); \
+	MODULE_PARM_DESC(idProduct, "USB Product ID");			\
+									\
+	module_param_named(bcdDevice, coverwrite.bcdDevice, ushort, S_IRUGO); \
+	MODULE_PARM_DESC(bcdDevice, "USB Device version (BCD)");	\
+									\
+	module_param_named(iSerialNumber, coverwrite.serial_number, charp, \
+			S_IRUGO); \
+	MODULE_PARM_DESC(iSerialNumber, "SerialNumber string");		\
+									\
+	module_param_named(iManufacturer, coverwrite.manufacturer, charp, \
+			S_IRUGO); \
+	MODULE_PARM_DESC(iManufacturer, "USB Manufacturer string");	\
+									\
+	module_param_named(iProduct, coverwrite.product, charp, S_IRUGO); \
+	MODULE_PARM_DESC(iProduct, "USB Product string")
 
 void usb_composite_overwrite_options(struct usb_composite_dev *cdev,
 		struct usb_composite_overwrite *covr);
 
 static inline u16 get_default_bcdDevice(void)
 {
-	/* The Kernel version the current USB code is based on */
-	return 0x0316;
+	u16 bcdDevice;
+#define LINUX_VERSION_MAJOR 6
+#define LINUX_VERSION_PATCHLEVEL 2
+	bcdDevice = bin2bcd(LINUX_VERSION_MAJOR) << 8;
+	bcdDevice |= bin2bcd(LINUX_VERSION_PATCHLEVEL);
+	return bcdDevice;
 }
 
 struct usb_function_driver {
@@ -468,17 +610,24 @@ void usb_remove_function(struct usb_configuration *c, struct usb_function *f);
 #define DECLARE_USB_FUNCTION(_name, _inst_alloc, _func_alloc)		\
 	static struct usb_function_driver _name ## usb_func = {		\
 		.name = __stringify(_name),				\
+		.mod  = THIS_MODULE,					\
 		.alloc_inst = _inst_alloc,				\
 		.alloc_func = _func_alloc,				\
-	};
+	};								\
+	MODULE_ALIAS("usbfunc:"__stringify(_name));
 
 #define DECLARE_USB_FUNCTION_INIT(_name, _inst_alloc, _func_alloc)	\
 	DECLARE_USB_FUNCTION(_name, _inst_alloc, _func_alloc)		\
-	static int _name ## mod_init(void)				\
+	static int __init _name ## mod_init(void)			\
 	{								\
 		return usb_function_register(&_name ## usb_func);	\
 	}								\
-	device_initcall(_name ## mod_init)
+	static void __exit _name ## mod_exit(void)			\
+	{								\
+		usb_function_unregister(&_name ## usb_func);		\
+	}								\
+	module_init(_name ## mod_init);					\
+	module_exit(_name ## mod_exit)
 
 /* messaging utils */
 #define DBG(d, fmt, args...) \
diff --git a/include/linux/usb/webusb.h b/include/linux/usb/webusb.h
new file mode 100644
index 0000000000..f10debc924
--- /dev/null
+++ b/include/linux/usb/webusb.h
@@ -0,0 +1,80 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * WebUSB descriptors and constants
+ *
+ * Copyright (C) 2023 Jó Ágila Bitsch <jgilab@gmail.com>
+ */
+
+#ifndef	__LINUX_USB_WEBUSB_H
+#define	__LINUX_USB_WEBUSB_H
+
+#include "linux/usb/ch9.h"
+
+/*
+ * Little Endian PlatformCapablityUUID for WebUSB
+ * 3408b638-09a9-47a0-8bfd-a0768815b665
+ * to identify Platform Device Capability descriptors as referring to WebUSB.
+ */
+#define WEBUSB_UUID \
+	GUID_INIT(0x3408b638, 0x09a9, 0x47a0, 0x8b, 0xfd, 0xa0, 0x76, 0x88, 0x15, 0xb6, 0x65)
+
+/*
+ * WebUSB Platform Capability data
+ *
+ * A device announces support for the
+ * WebUSB command set by including the following Platform Descriptor Data in its
+ * Binary Object Store associated with the WebUSB_UUID above.
+ * See: https://wicg.github.io/webusb/#webusb-platform-capability-descriptor
+ */
+struct usb_webusb_cap_data {
+	__le16 bcdVersion;
+#define WEBUSB_VERSION_1_00	cpu_to_le16(0x0100) /* currently only version 1.00 is defined */
+	u8  bVendorCode;
+	u8  iLandingPage;
+#define WEBUSB_LANDING_PAGE_NOT_PRESENT	0
+#define WEBUSB_LANDING_PAGE_PRESENT	1 /* we chose the fixed index 1 for the URL descriptor */
+} __packed;
+
+#define USB_WEBUSB_CAP_DATA_SIZE	4
+
+/*
+ * Get URL Request
+ *
+ * The request to fetch an URL is defined in https://wicg.github.io/webusb/#get-url as:
+ * bmRequestType: (USB_DIR_IN | USB_TYPE_VENDOR) = 11000000B
+ * bRequest: bVendorCode
+ * wValue: iLandingPage
+ * wIndex: GET_URL = 2
+ * wLength: Descriptor Length (typically U8_MAX = 255)
+ * Data: URL Descriptor
+ */
+#define WEBUSB_GET_URL 2
+
+/*
+ * This descriptor contains a single URL and is returned by the Get URL request.
+ *
+ * See: https://wicg.github.io/webusb/#url-descriptor
+ */
+struct webusb_url_descriptor {
+	u8  bLength;
+#define WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH	3
+	u8  bDescriptorType;
+#define WEBUSB_URL_DESCRIPTOR_TYPE		3
+	u8  bScheme;
+#define WEBUSB_URL_SCHEME_HTTP			0
+#define WEBUSB_URL_SCHEME_HTTPS			1
+#define WEBUSB_URL_SCHEME_NONE			255
+	u8  URL[U8_MAX - WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH];
+} __packed;
+
+/*
+ * Buffer size to hold the longest URL that can be in an URL descriptor
+ *
+ * The descriptor can be U8_MAX  bytes long.
+ * WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH bytes are used for a header.
+ * Since the longest prefix that might be stripped is "https://", we may accommodate an additional
+ * 8 bytes.
+ */
+#define WEBUSB_URL_RAW_MAX_LENGTH (U8_MAX - WEBUSB_URL_DESCRIPTOR_HEADER_LENGTH + 8)
+
+#endif /* __LINUX_USB_USBNET_H */
-- 
2.30.2



