Delivery-date: Mon, 14 Oct 2024 15:41:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LJt-004HGC-2B
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:41:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LJs-0004y4-Ur
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:41:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6zUWBKDHzZ075lyqLms2mg1QSmOQXBAp6bNiWUvU0cs=; b=ZmUtIYMYosCyQChgPrz8Q2a33U
	/6kqhZlsFvK/DgDS+6A2lC7Tlka+zeODdNkdOkJm47Nzo0HbzSFJ3GVHNpS12Fy7wIShHtB8TrkRM
	FXU4ZEjcCWR4llR0TOXJLBtmK8TgHOBG3RBOJRXd1v7KjgLIAwqB6Xgz1QCfHUCb5ILyEA+WPLr16
	caYpKz9OvZiGWTRRN6P700/eDtlZOr/THesgQPYqZu2Dc/Kg/o3o51L+NG3sljkmesTuZxQduiU9o
	KtygHAIBGYdBqZNAKYlvOswuPs69OhguojbKqHsLGw7TCrT8BaBMnKaNuKUorooH6xxSNd1QYgIoF
	B0CIysdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LJT-00000005Ked-0xot;
	Mon, 14 Oct 2024 13:40:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KWq-0000000594S-0OwO
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:50:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0KWo-0006SA-Q3; Mon, 14 Oct 2024 14:50:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0KWo-001nI3-Dj; Mon, 14 Oct 2024 14:50:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0KWo-008Z18-11;
	Mon, 14 Oct 2024 14:50:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:50:25 +0200
Message-Id: <20241014125025.2040746-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055028_167264_AEBFEE6F 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: gadget: fix static analysis false positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 32-bit systems, the 32-bit-wide buf can never exceed 0xffffffff,
so this resulted in a warning. Fix this by using upper_32_bits()
instead, which is also easier to read.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/udc/fsl_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index e1d0d0b48272..30f4da0c41e7 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -780,7 +780,7 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req,
 
 	/* Init all of buffer page pointers */
 	buf = (unsigned long)req->req.buf;
-	if (buf > 0xffffffff) {
+	if (upper_32_bits(buf)) {
 		pr_err("Only 32bit supported\n");
 		return NULL;
 	}
-- 
2.39.5



