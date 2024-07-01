Delivery-date: Mon, 01 Jul 2024 15:51:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOHQx-000WLt-0F
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 15:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOHQw-0000zR-1m
	for lore@pengutronix.de; Mon, 01 Jul 2024 15:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mFXLxKZ218D1JPBUzU47MrRsSshzcJ5dvvFTGGDJnzE=; b=Y1/9q5yiGbA67HlhyW5NkTHkmc
	aegot5gI30myV0jTYwM44RI7vz9KEYoD0wi81XCkpoUaTPmBtIalSP2hVef273KzSupawnnROh+V0
	YYufVj4xv4jRPlzEXCw5h9sUYZtKfmYX+27j0Iappt9+1+h9zakDwwpNZPSNL4kKVfUpm2yKs8pvW
	hFjAFUiGEGCw0aZK5pEmso+Jika0jOqc9HRTr/0bPtYmj2V91xkLQ/9GqSWMYiWjTYzVcGz1xy6Ae
	buPb9QKclxlhDgmePxBfgQq3888gxiHcsUUCZ+yHWqomb2jtca5g3BjLd6rw9Iad8ySxRndvYKIOC
	7Ry/6xWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOHQT-00000003Z7P-0ytV;
	Mon, 01 Jul 2024 13:50:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOHQP-00000003Z6f-0cRa
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 13:50:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOHQN-0000vh-H8; Mon, 01 Jul 2024 15:50:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOHQN-006Nvu-4Y; Mon, 01 Jul 2024 15:50:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOHQN-002HJi-0A;
	Mon, 01 Jul 2024 15:50:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 15:50:30 +0200
Message-Id: <20240701135030.543204-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_065033_366490_6E7645D6 
X-CRM114-Status: GOOD (  21.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: Use well-known descriptor sizes when parsing configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of U-Boot commit eaf3e613ea6f0dc95c94a93997ad62785fe2969c:

  | Author: Julius Werner <jwerner@chromium.org>
  | Date: Fri Jul 19 13:12:08 2013 -0700
  |
  | usb: Use well-known descriptor sizes when parsing configuration
  |
  | The existing USB configuration parsing code relies on the descriptors'
  | own length values when reading through the configuration blob. Since the
  | size of those descriptors is always well-defined, we should rather use
  | the known sizes instead of trusting device-provided values to be
  | correct. Also adds some safety to potential out-of-order descriptors.
  |
  | Change-Id: I16f69dfdd6793aa0fe930b5148d4521f3e5c3090
  | Signed-off-by: Julius Werner <jwerner@chromium.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/hub.c |  16 ++----
 drivers/usb/core/usb.c | 116 ++++++++++++++++++++++++++++++-----------
 2 files changed, 90 insertions(+), 42 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index bef428f7fbd3..70da8566b289 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -446,7 +446,7 @@ static int usb_hub_configure(struct usb_device *dev)
 	unsigned char *buffer, *bitmap;
 	struct usb_hub_descriptor *descriptor;
 	struct usb_hub_status *hubsts;
-	int i, ret;
+	int i, length, ret;
 	struct usb_hub_device *hub;
 
 	buffer = dma_alloc(USB_BUFSIZ);
@@ -466,23 +466,15 @@ static int usb_hub_configure(struct usb_device *dev)
 	}
 	descriptor = (struct usb_hub_descriptor *)buffer;
 
-	/* silence compiler warning if USB_BUFSIZ is > 256 [= sizeof(char)] */
-	i = descriptor->bLength;
-	if (i > USB_BUFSIZ) {
-		dev_dbg(&dev->dev, "%s: failed to get hub " \
-				"descriptor - too long: %d\n", __func__,
-				descriptor->bLength);
-		ret = -1;
-		goto out;
-	}
+	length = min_t(int, descriptor->bLength, sizeof(struct usb_hub_descriptor));
 
-	if (usb_get_hub_descriptor(dev, buffer, descriptor->bLength) < 0) {
+	if (usb_get_hub_descriptor(dev, buffer, length) < 0) {
 		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				"descriptor 2nd giving up %lX\n", __func__, dev->status);
 		ret = -1;
 		goto out;
 	}
-	memcpy((unsigned char *)&hub->desc, buffer, descriptor->bLength);
+	memcpy((unsigned char *)&hub->desc, buffer, length);
 	/* adjust 16bit values */
 	hub->desc.wHubCharacteristics =
 				le16_to_cpu(descriptor->wHubCharacteristics);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 1f6f1d7c4184..6940476bb8b6 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -187,7 +187,8 @@ static int usb_set_maxpacket(struct usb_device *dev)
  * Parse the config, located in buffer, and fills the dev->config structure.
  * Note that all little/big endian swapping are done automatically.
  */
-static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int cfgno)
+static int usb_parse_config(struct usb_device *dev, int cfgno,
+			    unsigned char *buffer, int length)
 {
 	struct usb_descriptor_header *head;
 	int index, ifno, epno, curr_if_num;
@@ -206,19 +207,31 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 			head->bDescriptorType);
 		return -1;
 	}
-	memcpy(&dev->config, buffer, buffer[0]);
-	le16_to_cpus(&(dev->config.desc.wTotalLength));
+	if (head->bLength != USB_DT_CONFIG_SIZE) {
+		dev_err(&dev->dev, "Invalid USB CFG length (%d)\n", head->bLength);
+		return -1;
+	}
+	memcpy(&dev->config, head, USB_DT_CONFIG_SIZE);
 	dev->config.no_of_if = 0;
 
 	index = dev->config.desc.bLength;
 	/* Ok the first entry must be a configuration entry,
 	 * now process the others */
 	head = (struct usb_descriptor_header *) &buffer[index];
-	while (index + 1 < dev->config.desc.wTotalLength) {
+	while (index + 1 < length && head->bLength) {
 		switch (head->bDescriptorType) {
 		case USB_DT_INTERFACE:
+			if (head->bLength != USB_DT_INTERFACE_SIZE) {
+				dev_err(&dev->dev, "Invalid USB IF length (%d)\n",
+					head->bLength);
+				break;
+			}
+			if (index + USB_DT_INTERFACE_SIZE > length) {
+				dev_err(&dev->dev, "USB IF descriptor overflowed buffer!\n");
+				break;
+			}
 			if (((struct usb_interface_descriptor *) \
-			     &buffer[index])->bInterfaceNumber != curr_if_num) {
+			     head)->bInterfaceNumber != curr_if_num) {
 				/* this is a new interface, copy new desc */
 				ifno = dev->config.no_of_if;
 				/* if ifno > USB_MAXINTERFACES, then
@@ -231,9 +244,10 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 						USB_MAXINTERFACES);
 					break;
 				}
+				if_desc = &dev->config.interface[ifno];
 				dev->config.no_of_if++;
-				memcpy(&dev->config.interface[ifno].desc,
-					&buffer[index], buffer[index]);
+				memcpy(&if_desc->desc, head, USB_DT_INTERFACE_SIZE);
+
 				dev->config.interface[ifno].no_of_ep = 0;
 				dev->config.interface[ifno].num_altsetting = 1;
 				curr_if_num =
@@ -244,24 +258,52 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 			}
 			break;
 		case USB_DT_ENDPOINT:
+			if (head->bLength != USB_DT_ENDPOINT_SIZE) {
+				dev_err(&dev->dev, "ERROR: Invalid USB EP length (%d)\n",
+					head->bLength);
+				break;
+			}
+			if (index + USB_DT_ENDPOINT_SIZE > length) {
+				dev_err(&dev->dev, "USB EP descriptor overflowed buffer!\n");
+				break;
+			}
+			if (ifno < 0) {
+				dev_err(&dev->dev, "Endpoint descriptor out of order!\n");
+				break;
+			}
 			epno = dev->config.interface[ifno].no_of_ep;
+			if_desc = &dev->config.interface[ifno];
+			if (epno > USB_MAXENDPOINTS) {
+				dev_err(&dev->dev, "Interface %d has too many endpoints!\n",
+					if_desc->desc.bInterfaceNumber);
+				break;
+			}
 			/* found an endpoint */
 			dev->config.interface[ifno].no_of_ep++;
-			memcpy(&dev->config.interface[ifno].ep_desc[epno],
-				&buffer[index], buffer[index]);
+			memcpy(&if_desc->ep_desc[epno], head, USB_DT_ENDPOINT_SIZE);
 			le16_to_cpus(&(dev->config.interface[ifno].ep_desc[epno].\
 							       wMaxPacketSize));
 			dev_dbg(&dev->dev, "if %d, ep %d\n", ifno, epno);
 			break;
 		case USB_DT_SS_ENDPOINT_COMP:
+			if (head->bLength != USB_DT_SS_EP_COMP_SIZE) {
+				dev_err(&dev->dev, "ERROR: Invalid USB EPC length (%d)\n",
+					head->bLength);
+				break;
+			}
+			if (index + USB_DT_SS_EP_COMP_SIZE > length) {
+				dev_err(&dev->dev, "USB EPC descriptor overflowed buffer!\n");
+				break;
+			}
+			if (ifno < 0 || epno < 0) {
+				dev_err(&dev->dev, "EPC descriptor out of order!\n");
+				break;
+			}
 			if_desc = &dev->config.interface[ifno];
-			memcpy(&if_desc->ss_ep_comp_desc[epno],
-				&buffer[index], buffer[index]);
+			memcpy(&if_desc->ss_ep_comp_desc[epno], head,
+				USB_DT_SS_EP_COMP_SIZE);
 			break;
 		default:
-			if (head->bLength == 0)
-				return 1;
-
 			dev_dbg(&dev->dev, "unknown Description Type : %x\n",
 				   head->bDescriptorType);
 
@@ -408,7 +450,7 @@ static int usb_set_address(struct usb_device *dev)
  */
 int usb_new_device(struct usb_device *dev)
 {
-	int err;
+	int err, length;
 	void *buf;
 	struct usb_host *host = dev->host;
 	struct usb_device *parent = dev->parent;
@@ -471,8 +513,13 @@ int usb_new_device(struct usb_device *dev)
 	le16_to_cpus(&dev->descriptor->idProduct);
 	le16_to_cpus(&dev->descriptor->bcdDevice);
 	/* only support for one config for now */
-	usb_get_configuration_no(dev, buf, 0);
-	usb_parse_config(dev, buf, 0);
+	length = usb_get_configuration_no(dev, buf, 0);
+	if (length < 0) {
+		err = length;
+		goto err_out;
+	}
+
+	usb_parse_config(dev, 0, buf, length);
 	usb_set_maxpacket(dev);
 	/* we set the default configuration here */
 	err = usb_set_configuration(dev, dev->config.desc.bConfigurationValue);
@@ -787,33 +834,42 @@ int usb_get_configuration_no(struct usb_device *dev,
 			     unsigned char *buffer, int cfgno)
 {
 	int result;
-	unsigned int tmp;
+	unsigned int length;
 	struct usb_config_descriptor *config;
 
 
 	config = (struct usb_config_descriptor *)&buffer[0];
 	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, 9);
 	if (result < 9) {
-		if (result < 0)
-			dev_err(&dev->dev, "unable to get descriptor, error %lX\n",
-				dev->status);
-		else
+		if (result >= 0) {
 			dev_err(&dev->dev, "config descriptor too short " \
 				"(expected %i, got %i)\n", 9, result);
-		return -1;
-	}
-	tmp = le16_to_cpu(config->wTotalLength);
+			return -1;
+		}
 
-	if (tmp > USB_BUFSIZ) {
+		goto failed_get;
+	}
+
+	length = le16_to_cpu(config->wTotalLength);
+
+	if (length > USB_BUFSIZ) {
 		dev_dbg(&dev->dev, "usb_get_configuration_no: failed to get " \
-			   "descriptor - too long: %u\n", tmp);
+			   "descriptor - too long: %u\n", length);
 		return -1;
 	}
 
-	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, tmp);
+	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, length);
 	dev_dbg(&dev->dev, "get_conf_no %d Result %d, wLength %u\n",
-		   cfgno, result, tmp);
-	return result;
+		   cfgno, result, length);
+	if (result < 0)
+		goto failed_get;
+
+	return length;
+
+failed_get:
+	dev_err(&dev->dev, "unable to get descriptor, error %lX\n",
+		dev->status);
+	return -1;
 }
 
 /********************************************************************
-- 
2.39.2



