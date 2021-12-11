Delivery-date: Sat, 11 Dec 2021 09:46:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvy1A-0030ze-8h
	for lore@lore.pengutronix.de; Sat, 11 Dec 2021 09:46:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvy18-0002Vm-QB
	for lore@pengutronix.de; Sat, 11 Dec 2021 09:46:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6oe1ngqMpQexaYIU7xGIzrWAYSXC2k36m8IZ0Vv1b+U=; b=VzejUcEQJGz4Zi
	EarO1aoNvDdYDwi9nnPjFkZEuGOuQ3YDuHmF6mrvpFvh36rNDjyLogeA8F/SJ8duQCGRdXDLL6ASD
	tChSw/dNlH9HhvbBsNmwdAoZw2Kg/zqK0O3rSlGryTYUEpF3fFs19QwygYYo4iLHLCBuj9hzlXhTt
	QQ43G5mmK+RuKYmhoEprnJal8CLhfJ8Y0E7+vw1Ju9eAK1Vl+z4OOkmUPLCgX7KOKg+Eg0jGSa4GA
	6ElKNSVhHEjeM0cr9iBg67YMwqEFCV3kiLtoo/UpzYborokWY4tjnPNIs291uQzu/LZ5qt5NYJ1hW
	XJdN14IxeMLPSIx1jqEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvxzP-004ktm-2u; Sat, 11 Dec 2021 08:44:19 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvxzK-004ktV-4q
 for barebox@lists.infradead.org; Sat, 11 Dec 2021 08:44:15 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B6418200006;
 Sat, 11 Dec 2021 08:44:10 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 11 Dec 2021 09:44:06 +0100
Message-Id: <20211211084406.448795-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_004414_341598_14FD0143 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] misc: sram: remove duplicated resource handling code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Remove superfluous code. No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/misc/sram.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index d45b5cb72f93..f4a7551fc760 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -26,24 +26,17 @@ static int sram_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct sram *sram;
-	struct resource *res;
-	void __iomem *base;
 	int ret;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
 
 	sram = xzalloc(sizeof(*sram));
 
 	sram->cdev.name = basprintf("sram%d", cdev_find_free_index("sram"));
 
-	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
-	if (IS_ERR(res))
-		return PTR_ERR(res);
-
-	sram->cdev.size = (unsigned long)resource_size(res);
+	sram->cdev.size = (unsigned long)resource_size(iores);
 	sram->cdev.ops = &memops;
 	sram->cdev.dev = dev;
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

