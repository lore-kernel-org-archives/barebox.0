Delivery-date: Fri, 24 Mar 2023 09:29:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfcnT-00D1Ug-O8
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 09:29:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfcnT-0002CA-AV
	for lore@pengutronix.de; Fri, 24 Mar 2023 09:29:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hFhE54IeJjcNX2iZ0hwDdUw0dUDcJjBCH4ZN0A6fgk8=; b=Wr1EL7WROCQjpF
	gU4mf1mBbCrsQ6nYZDtLkZMy4EQTCUj9PqdEN8VYCK2FFKPT4DhvtvZ44SIb5T4FmSxGj87KdO8hV
	oUZmAUOdqFbS/2nSQ/bYlO7alLssCoqS3BtZCsYgVF6wW2fOnYTyjqYgnr8Lr7vtwilx7CYMOonDE
	+1ZKleqb6K9EuOCoSXu1Gsz+h4MA+gDMs0vKHHMuCQH5lVsMItmC+iE4TfZidIw5mP70hy9/WetyM
	YuTWRR1NCZqu9l206EUIkz0+QPpe7ao/mGUNTPeiApni0v32ZOlr2j3YlPfkdAnq99VMWNC8Ko5lw
	5XH3x7J+gNJqlnlgxs5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcmF-003sDl-2M;
	Fri, 24 Mar 2023 08:27:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcmC-003sDG-1q
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 08:27:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfcm7-00023S-GM; Fri, 24 Mar 2023 09:27:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfcm6-006L4o-RT; Fri, 24 Mar 2023 09:27:50 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfcm6-004996-6p; Fri, 24 Mar 2023 09:27:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 24 Mar 2023 09:27:48 +0100
Message-Id: <20230324082748.987672-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_012756_608719_6B5FF856 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: Do not dequeue idle request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In fastboot_disable() all endpoints are disabled which will complete
all outstanding requests with -ESHUTDOWN. fastboot_unbind() is called
after that, so we do not need to deqeueue any requests there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/function/f_fastboot.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 4266b78b40..41450268fc 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -319,7 +319,6 @@ static void fastboot_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_fastboot *f_fb = func_to_fastboot(f);
 
-	usb_ep_dequeue(f_fb->out_ep, f_fb->out_req);
 	free(f_fb->out_req->buf);
 	usb_ep_free_request(f_fb->out_ep, f_fb->out_req);
 	f_fb->out_req = NULL;
-- 
2.30.2



