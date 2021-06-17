Delivery-date: Thu, 17 Jun 2021 16:27:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltszH-0005Pa-I2
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 16:27:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltszG-0000mH-Ec
	for lore@pengutronix.de; Thu, 17 Jun 2021 16:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N0SEMtFJrv1WvK0wdt5KTuH8hDsPG3T5OXDGL9exf1g=; b=I23qVrwAEc6jgE
	N6itVVdjp4aQe6GinILAwnAG+jOEJ2AFFpjsEA+fo7yzRGOU/vbX33xKQUaqWELpqxjfrkwiCjtiK
	//m2eko6D2BGiywwY1p3m77JqaxijPOh0aECKqPtfZmqjmZskttm8ZnIwbeXfjJsrIBIsG2BRznb3
	WtH272W+g2V+vOfjVta7SxaXycKyE/wd1CJHrHDzH8dsiH/nvGPuyuC0qlDdRb7flYTwN85a6oI3J
	F6jMJvMeVRhtHG90up6x+5Eh7ju8gLl8WgTgv92ayK7+waorgQnyZDLeJN9AUjBaaWsJl+T5FszvA
	iDjScq7R/Cc7KaxT0VXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltsxt-00AhO3-2h; Thu, 17 Jun 2021 14:25:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltsxn-00AhMq-Tv
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 14:25:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltsxm-0000YU-Ay; Thu, 17 Jun 2021 16:25:46 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltsxm-0001xi-2Y; Thu, 17 Jun 2021 16:25:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 17 Jun 2021 16:25:45 +0200
Message-Id: <20210617142545.7375-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_072548_005414_0DA206B9 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: ehci: Fix unitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

buffer_dma is not really used unitialized, but the compiler doesn't
realize this. Initialize it explicitly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 8c4da9fd12..6143c9f64e 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -305,7 +305,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	struct usb_host *host = dev->host;
 	struct ehci_host *ehci = to_ehci(host);
 	const bool dir_in = usb_pipein(pipe);
-	dma_addr_t buffer_dma, req_dma;
+	dma_addr_t buffer_dma = DMA_ERROR_CODE, req_dma;
 	struct QH *qh = &ehci->qh_list[1];
 	struct qTD *td;
 	volatile struct qTD *vtd;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

