Delivery-date: Mon, 20 Mar 2023 16:31:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTj-007zIe-Qj
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTi-0001oa-Vw
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZ8OYSJUPdFmHVUwkNNqdJrR6toBCsMBDYQjF2zxYHU=; b=0By6Qbwp3wQ7CvJBGuu46+JyVX
	vveB141qxDd/h4uOW8VRmCUgDQPKcOQpFU8vr0bOHk4MWz3TJRuJRu1iBmqvQJrbpCYPhRlY0/ThG
	6vAcO3S+JdqrNReSuh8DZbMsrftYE7DHZpKjEke+CDYpyZ8kc4Tur/TDtiBthMSJGCzoZW2bNUcV5
	xgRyiZeFACYTW4+x2M+dVF1vWoqWjPIBH78S9BZ32xqkYlhurr9eNitxeAhzYZ8D2+9cQbl0i2NIe
	lQJUBnkreQpNaBXHIVUA5eAIXYjWbYVkGz8+WIgUJn+hePtZTKZavI+JjYawjeNzAExQhUYoIIQx6
	G+2WvVWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSc-009Xt2-29;
	Mon, 20 Mar 2023 15:30:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSL-009Xfy-1S
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSF-0000s8-8F; Mon, 20 Mar 2023 16:29:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-005UZh-Hq; Mon, 20 Mar 2023 16:29:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc3S-U5; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:39 +0100
Message-Id: <20230320152941.3155428-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082953_485624_D9692DBE 
X-CRM114-Status: GOOD (  16.19  )
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
Subject: [PATCH 16/18] usb: gadget: mass storage: Add super speed descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add super speed descriptors to the USB fastboot gadget. The
necessary bits and pieces are taken from Linux-6.3-rc2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/function/f_mass_storage.c | 40 ++++++++++++-------
 drivers/usb/gadget/function/storage_common.c | 42 ++++++++++++++++++++
 drivers/usb/gadget/function/storage_common.h |  6 +++
 3 files changed, 74 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 4e9777994e..2c934c621a 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -2194,15 +2194,18 @@ reset:
 	fsg = common->fsg;
 
 	/* Enable the endpoints */
-	fsg->bulk_in->desc = fsg_ep_desc(common->gadget,
-					 &fsg_fs_bulk_in_desc, &fsg_hs_bulk_in_desc);
+	rc = config_ep_by_speed(common->gadget, &(fsg->function), fsg->bulk_in);
+	if (rc)
+		goto reset;
 	rc = enable_endpoint(common, fsg->bulk_in);
 	if (rc)
 		goto reset;
 	fsg->bulk_in_enabled = 1;
 
-	fsg->bulk_out->desc = fsg_ep_desc(common->gadget,
-					  &fsg_fs_bulk_out_desc, &fsg_hs_bulk_out_desc);
+	rc = config_ep_by_speed(common->gadget, &(fsg->function),
+				fsg->bulk_out);
+	if (rc)
+		goto reset;
 	rc = enable_endpoint(common, fsg->bulk_out);
 	if (rc)
 		goto reset;
@@ -2615,7 +2618,7 @@ static int fsg_bind(struct usb_configuration *c, struct usb_function *f)
 	struct usb_gadget	*gadget = c->cdev->gadget;
 	int			ret;
 	struct usb_ep		*ep;
-	struct usb_descriptor_header **hs_function = NULL;
+	unsigned		max_burst;
 	struct fsg_common	*common = fsg->common;
 
 	if (!ums_files) {
@@ -2656,17 +2659,26 @@ static int fsg_bind(struct usb_configuration *c, struct usb_function *f)
 	ep->driver_data = common;	/* claim the endpoint */
 	fsg->bulk_out = ep;
 
-	if (gadget_is_dualspeed(gadget)) {
-		/* Assume endpoint addresses are the same for both speeds */
-		fsg_hs_bulk_in_desc.bEndpointAddress =
-			fsg_fs_bulk_in_desc.bEndpointAddress;
-		fsg_hs_bulk_out_desc.bEndpointAddress =
-			fsg_fs_bulk_out_desc.bEndpointAddress;
-		hs_function = fsg_hs_function;
-	}
+	/* Assume endpoint addresses are the same for both speeds */
+	fsg_hs_bulk_in_desc.bEndpointAddress =
+		fsg_fs_bulk_in_desc.bEndpointAddress;
+	fsg_hs_bulk_out_desc.bEndpointAddress =
+		fsg_fs_bulk_out_desc.bEndpointAddress;
+
+	/* Calculate bMaxBurst, we know packet size is 1024 */
+	max_burst = min_t(unsigned, FSG_BUFLEN / 1024, 15);
+
+	fsg_ss_bulk_in_desc.bEndpointAddress =
+		fsg_fs_bulk_in_desc.bEndpointAddress;
+	fsg_ss_bulk_in_comp_desc.bMaxBurst = max_burst;
+
+	fsg_ss_bulk_out_desc.bEndpointAddress =
+		fsg_fs_bulk_out_desc.bEndpointAddress;
+	fsg_ss_bulk_out_comp_desc.bMaxBurst = max_burst;
 
 	/* Copy descriptors */
-	return usb_assign_descriptors(f, fsg_fs_function, fsg_hs_function, NULL, NULL);
+	return usb_assign_descriptors(f, fsg_fs_function, fsg_hs_function,
+				      fsg_ss_function, fsg_ss_function);
 
 autoconf_fail:
 	ERROR(fsg, "unable to autoconfigure all endpoints\n");
diff --git a/drivers/usb/gadget/function/storage_common.c b/drivers/usb/gadget/function/storage_common.c
index 69fcd06565..60e0994235 100644
--- a/drivers/usb/gadget/function/storage_common.c
+++ b/drivers/usb/gadget/function/storage_common.c
@@ -104,6 +104,48 @@ struct usb_descriptor_header *fsg_hs_function[] = {
 	NULL,
 };
 
+struct usb_endpoint_descriptor fsg_ss_bulk_in_desc = {
+	.bLength =		USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType =	USB_DT_ENDPOINT,
+
+	/* bEndpointAddress copied from fs_bulk_in_desc during fsg_bind() */
+	.bmAttributes =		USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize =	cpu_to_le16(1024),
+};
+
+struct usb_ss_ep_comp_descriptor fsg_ss_bulk_in_comp_desc = {
+	.bLength =		sizeof(fsg_ss_bulk_in_comp_desc),
+	.bDescriptorType =	USB_DT_SS_ENDPOINT_COMP,
+
+	/*.bMaxBurst =		DYNAMIC, */
+};
+
+struct usb_endpoint_descriptor fsg_ss_bulk_out_desc = {
+	.bLength =		USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType =	USB_DT_ENDPOINT,
+
+	/* bEndpointAddress copied from fs_bulk_out_desc during fsg_bind() */
+	.bmAttributes =		USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize =	cpu_to_le16(1024),
+};
+
+struct usb_ss_ep_comp_descriptor fsg_ss_bulk_out_comp_desc = {
+	.bLength =		sizeof(fsg_ss_bulk_in_comp_desc),
+	.bDescriptorType =	USB_DT_SS_ENDPOINT_COMP,
+
+	/*.bMaxBurst =		DYNAMIC, */
+};
+
+struct usb_descriptor_header *fsg_ss_function[] = {
+	(struct usb_descriptor_header *) &fsg_intf_desc,
+	(struct usb_descriptor_header *) &fsg_ss_bulk_in_desc,
+	(struct usb_descriptor_header *) &fsg_ss_bulk_in_comp_desc,
+	(struct usb_descriptor_header *) &fsg_ss_bulk_out_desc,
+	(struct usb_descriptor_header *) &fsg_ss_bulk_out_comp_desc,
+	NULL,
+};
+EXPORT_SYMBOL_GPL(fsg_ss_function);
+
 /* Maxpacket and other transfer characteristics vary by speed. */
 struct usb_endpoint_descriptor *
 fsg_ep_desc(struct usb_gadget *g, struct usb_endpoint_descriptor *fs,
diff --git a/drivers/usb/gadget/function/storage_common.h b/drivers/usb/gadget/function/storage_common.h
index 3b98c82ee3..29afe77685 100644
--- a/drivers/usb/gadget/function/storage_common.h
+++ b/drivers/usb/gadget/function/storage_common.h
@@ -232,6 +232,12 @@ extern struct usb_endpoint_descriptor fsg_hs_bulk_in_desc;
 extern struct usb_endpoint_descriptor fsg_hs_bulk_out_desc;
 extern struct usb_descriptor_header *fsg_hs_function[];
 
+extern struct usb_endpoint_descriptor fsg_ss_bulk_in_desc;
+extern struct usb_ss_ep_comp_descriptor fsg_ss_bulk_in_comp_desc;
+extern struct usb_endpoint_descriptor fsg_ss_bulk_out_desc;
+extern struct usb_ss_ep_comp_descriptor fsg_ss_bulk_out_comp_desc;
+extern struct usb_descriptor_header *fsg_ss_function[];
+
 int fsg_lun_open(struct fsg_lun *curlun, unsigned int num_sectors,
 		 const char *filename);
 void fsg_lun_close(struct fsg_lun *curlun);
-- 
2.30.2



