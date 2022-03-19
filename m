Delivery-date: Sat, 19 Mar 2022 12:04:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsz-00GfYR-FD
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWt0-0003Wt-5r
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E918xVowrwru/5VLAgHxTCqP1r2YADhIWqftq0wO54Y=; b=0k6spKMJ9Xq7hu
	pII25aTFyteMpwCBrawH/m7B6vzfdXx6dg5gIubD2oeaD/a0dhssLXtYQPm55B/IkgjPM6PaJDt9l
	i4eJSCg1esqjDzpSxdXt/vMqceAL0SlWzDiuyrA9PLUTpRo5VwkNtKnVD0IMiB64GB6dVgiccU8J/
	VUIudATI1V+0p5Jd7X9TGgie6ydij0M9bQTKN7d0P1G945pK529TIoLqrVQhJx03uSZ7WnmJ74NJ+
	KMSitHu7ErosmpobBMe4jcr0zAndni3MS6f9PEpHlnQjaNuTMo6RYd+b7jI4Tw2aEFAxvPx0wFkkL
	35CyZmFDEw2bEjVtpJ5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrZ-003bUc-23; Sat, 19 Mar 2022 11:03:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWrS-003bTU-P7
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:03:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWrB-0003Ct-Hs; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWr9-00Bxr6-Bv; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Mar 2022 12:02:46 +0100
Message-Id: <20220319110246.2850396-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040306_841722_A3884402 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 6/6] usb: gadget: multi: free UMS instance at
 multi_unbind time
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We do this for all other gadgets, but not for UMS. Fix this.

Fixes: 57313f83e83e ("usbgadget: add support for USB mass storage gadget")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/multi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index cd5b529d3eba..102d8714f86d 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -169,6 +169,11 @@ static int multi_unbind(struct usb_composite_dev *cdev)
 		usb_put_function_instance(fi_acm);
 	}
 
+	if (gadget_multi_opts->ums_opts.files) {
+		usb_put_function(f_ums);
+		usb_put_function_instance(fi_ums);
+	}
+
 	if (gadget_multi_opts->dfu_opts.files) {
 		usb_put_function(f_dfu);
 		usb_put_function_instance(fi_dfu);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

