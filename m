Delivery-date: Mon, 20 Mar 2023 16:31:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTf-007zGv-Us
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTf-0001l5-Ns
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PYIcmAVXqy3jDBefhrKQOZOaf8tCBPRyCJ3Kzs46Fj0=; b=fFCX7bsqdKNxpqKEPb3w54tw13
	VFAIpcfQhgqbNCd/FdpByEFb34ZemBjJbgxqtjfO79G21ssUp/fnDnphwoT5zl2AWoXt1nWUfSyCq
	2S/FVmytkvx1f5oabuNmoDbCt5DkgF9Bwd8PC08lVacOhtB7YuaNrOWhOPHLaGGwto9+I2EblQsNq
	oihcdpXdtfW6N2kYKcK4Ej9H1wxKUFJQn6kUd90t3o8q+qVuwT20Oru0NkcM5Hsu/yyUuYGgLoZ48
	kfkNHtFUeh+yn2533urWMKLj+wwwNvmgwOztfcPnl79ZoepF57V8HYvCsL9GfI7gBhxqbVVf7e3TU
	i+sWf/JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSN-009Xk6-0N;
	Mon, 20 Mar 2023 15:29:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xfi-2f
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-0000pn-2a; Mon, 20 Mar 2023 16:29:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-005UZ6-AY; Mon, 20 Mar 2023 16:29:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00DbzD-24; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:24 +0100
Message-Id: <20230320152941.3155428-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082950_869678_29BA726E 
X-CRM114-Status: GOOD (  15.88  )
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
Subject: [PATCH 01/18] usb: gadget: fastboot: Allocate IN requests when needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fastboot_download_finished() calls fastboot_tx_print() two times in a
row and waits for completion in between. Additionally this is called
from the completion function from another request. This seems to work
for example on the fsl_udc driver, but leads to problems on the DWC3
controller. Instead of re-using the same request over and over again,
just allocate a new request when needed. This way we no longer have
to poll for its completion before starting a new request.
While fixing fastboot on the DWC3 controller this also makes the
lifetime of a request clearer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 54 ++++++++++++---------------------
 1 file changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 96924c4cb9..078b37ce54 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -39,7 +39,7 @@ struct f_fastboot {
 
 	/* IN/OUT EP's and corresponding requests */
 	struct usb_ep *in_ep, *out_ep;
-	struct usb_request *in_req, *out_req;
+	struct usb_request *out_req;
 	struct work_queue wq;
 };
 
@@ -134,10 +134,6 @@ static int fastboot_write_usb(struct fastboot *fb, const char *buffer,
 			      unsigned int buffer_size);
 static void fastboot_start_download_usb(struct fastboot *fb);
 
-static void fastboot_complete(struct usb_ep *ep, struct usb_request *req)
-{
-}
-
 struct fastboot_work {
 	struct work_struct work;
 	struct f_fastboot *f_fb;
@@ -183,6 +179,17 @@ static struct usb_request *fastboot_alloc_request(struct usb_ep *ep)
 	return req;
 }
 
+static void fastboot_free_request(struct usb_ep *ep, struct usb_request *req)
+{
+	free(req->buf);
+	usb_ep_free_request(ep, req);
+}
+
+static void fastboot_complete(struct usb_ep *ep, struct usb_request *req)
+{
+	fastboot_free_request(ep, req);
+}
+
 static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct usb_composite_dev *cdev = c->cdev;
@@ -259,14 +266,6 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	f_fb->out_req->complete = rx_handler_command;
 	f_fb->out_req->context = f_fb;
 
-	f_fb->in_req = fastboot_alloc_request(f_fb->in_ep);
-	if (!f_fb->in_req) {
-		puts("failed alloc req in\n");
-		ret = -EINVAL;
-		goto err_free_out_req;
-	}
-	f_fb->in_req->complete = fastboot_complete;
-
 	ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs, NULL);
 	if (ret)
 		goto err_free_in_req;
@@ -274,9 +273,6 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	return 0;
 
 err_free_in_req:
-	free(f_fb->in_req->buf);
-	usb_ep_free_request(f_fb->in_ep, f_fb->in_req);
-err_free_out_req:
 	free(f_fb->out_req->buf);
 	usb_ep_free_request(f_fb->out_ep, f_fb->out_req);
 fb_generic_free:
@@ -291,11 +287,6 @@ static void fastboot_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_fastboot *f_fb = func_to_fastboot(f);
 
-	usb_ep_dequeue(f_fb->in_ep, f_fb->in_req);
-	free(f_fb->in_req->buf);
-	usb_ep_free_request(f_fb->in_ep, f_fb->in_req);
-	f_fb->in_req = NULL;
-
 	usb_ep_dequeue(f_fb->out_ep, f_fb->out_req);
 	free(f_fb->out_req->buf);
 	usb_ep_free_request(f_fb->out_ep, f_fb->out_req);
@@ -404,28 +395,23 @@ DECLARE_USB_FUNCTION_INIT(fastboot, fastboot_alloc_instance, fastboot_alloc_func
 static int fastboot_write_usb(struct fastboot *fb, const char *buffer, unsigned int buffer_size)
 {
 	struct f_fastboot *f_fb = container_of(fb, struct f_fastboot, fastboot);
-	struct usb_request *in_req = f_fb->in_req;
-	uint64_t start;
+	struct usb_request *in_req;
 	int ret;
 
+	in_req = fastboot_alloc_request(f_fb->in_ep);
+	if (!in_req)
+		return -ENOMEM;
+
 	memcpy(in_req->buf, buffer, buffer_size);
 	in_req->length = buffer_size;
+	in_req->complete = fastboot_complete;
 
 	ret = usb_ep_queue(f_fb->in_ep, in_req);
-	if (ret)
+	if (ret) {
+		fastboot_free_request(f_fb->in_ep, in_req);
 		pr_err("Error %d on queue\n", ret);
-
-	start = get_time_ns();
-
-	while (in_req->status == -EINPROGRESS) {
-		if (is_timeout(start, 2 * SECOND))
-			return -ETIMEDOUT;
-		usb_gadget_poll();
 	}
 
-	if (in_req->status)
-		pr_err("Failed to send answer: %d\n", in_req->status);
-
 	return 0;
 }
 
-- 
2.30.2



