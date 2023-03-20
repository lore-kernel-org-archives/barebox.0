Delivery-date: Mon, 20 Mar 2023 16:31:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTn-007zKO-5v
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTm-0001qQ-8Q
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=madZuKntFI6n3CXP7398C8Z/Z+8fMAaGzXuHf9shdok=; b=fqdXJAfL6PQtqiweGOhVqN6fsJ
	HPvzdzxTdWMRfMN1M/G4BNOgxJK9VT+xUN3K9q/Hlti7562Tc8DADnWCNyLmzD7/CUvSflqI8DTsQ
	1awFsmmGLwvLV7nXfgBwPIeMVJqrpgV52/fpBUPhHsZtTdXMP/qIrUctFfDpyQC8BFhAxNljha6dK
	w+CM/GX/0nEiAp1IKa9I+40MxjR7RYz1gjYVwrUM2AdPmxDMRBjAs7bwO7Gr5A3MqHKwSc9qIn/GN
	F5Ak1z60pHFOHnkEmXcsx+xNEgsP1KHuxEsah4gyAlLjWZJIDsU8mD7/SyybagY9F8jYuHojcEnwX
	ttCQWx/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSL-009XjQ-2p;
	Mon, 20 Mar 2023 15:29:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xfo-2p
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-0000qv-Jn; Mon, 20 Mar 2023 16:29:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-005UZD-Qw; Mon, 20 Mar 2023 16:29:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc3O-Ta; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:38 +0100
Message-Id: <20230320152941.3155428-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082950_919533_CA7E64A5 
X-CRM114-Status: GOOD (  12.28  )
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
Subject: [PATCH 15/18] usb: gadget: fastboot: Add super speed descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add super speed descriptors to the fasboot gadget. These are taken from
U-Boot v2023.04-rc4.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/function/f_fastboot.c | 34 +++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 4e9c373796..4266b78b40 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -109,6 +109,36 @@ static struct usb_descriptor_header *fb_hs_descs[] = {
 	NULL,
 };
 
+static struct usb_endpoint_descriptor ss_ep_in = {
+	.bLength		= USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType	= USB_DT_ENDPOINT,
+	.bEndpointAddress	= USB_DIR_IN,
+	.bmAttributes		= USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize		= cpu_to_le16(1024),
+};
+
+static struct usb_endpoint_descriptor ss_ep_out = {
+	.bLength		= USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType	= USB_DT_ENDPOINT,
+	.bEndpointAddress	= USB_DIR_OUT,
+	.bmAttributes		= USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize		= cpu_to_le16(1024),
+};
+
+static struct usb_ss_ep_comp_descriptor fb_ss_bulk_comp_desc = {
+	.bLength =		sizeof(fb_ss_bulk_comp_desc),
+	.bDescriptorType =	USB_DT_SS_ENDPOINT_COMP,
+};
+
+static struct usb_descriptor_header *fb_ss_descs[] = {
+	(struct usb_descriptor_header *)&interface_desc,
+	(struct usb_descriptor_header *)&ss_ep_in,
+	(struct usb_descriptor_header *)&fb_ss_bulk_comp_desc,
+	(struct usb_descriptor_header *)&ss_ep_out,
+	(struct usb_descriptor_header *)&fb_ss_bulk_comp_desc,
+	NULL,
+};
+
 /*
  * static strings, in UTF-8
  */
@@ -255,6 +285,8 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 
 	hs_ep_out.bEndpointAddress = fs_ep_out.bEndpointAddress;
 	hs_ep_in.bEndpointAddress = fs_ep_in.bEndpointAddress;
+	ss_ep_out.bEndpointAddress = fs_ep_out.bEndpointAddress;
+	ss_ep_in.bEndpointAddress = fs_ep_in.bEndpointAddress;
 
 	f_fb->out_req = fastboot_alloc_request(f_fb->out_ep);
 	if (!f_fb->out_req) {
@@ -266,7 +298,7 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	f_fb->out_req->complete = rx_handler_command;
 	f_fb->out_req->context = f_fb;
 
-	ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs, NULL, NULL);
+	ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs, fb_ss_descs, fb_ss_descs);
 	if (ret)
 		goto err_free_in_req;
 
-- 
2.30.2



