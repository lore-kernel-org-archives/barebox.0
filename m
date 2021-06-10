Delivery-date: Thu, 10 Jun 2021 15:08:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPt-0000YU-17
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 15:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPp-0005iB-1d
	for lore@pengutronix.de; Thu, 10 Jun 2021 15:08:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbwQ0Nn1q+mQ+Ae3cJNSVwri/TTuEHR9Gl1G5WRqo3I=; b=F+hOQAY2B1bHVx
	yNFKgVNB3G9EisW0oyhCUNC2eJLkkWmnxn1akdOd9ZN2Sm3PocT1sbL9fnXNWwNpVvDKgM35QcJ0e
	tdkS4bvhyoghl/m/ondxbNT6TftY9Bm5ibsn3pfF8rGQcMPx7Orisa2HOBVsrqv7l0moL4CqtvI2P
	oZxqWkrl/SYQDQE2eHWjPPd1xaQCahkNzNqrhXi+XUxRMi41TA5mDgiuJ0JpStEbhp8s7SHGgT8kD
	AYcm2BVCQa9O9xihc3qrKyBKo6llUDdSXdtlvNon0qGpEDvG5QG5ZsOw8pr25ghGq45lkckvSDhnM
	GGXRFmZoHHbtJrHfNmIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrKOE-000pEe-2B; Thu, 10 Jun 2021 13:06:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrKO2-000pAF-AQ
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 13:06:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0005I1-Ig; Thu, 10 Jun 2021 15:06:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0007IK-7F; Thu, 10 Jun 2021 15:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 15:06:13 +0200
Message-Id: <20210610130613.27983-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210610130613.27983-1-s.hauer@pengutronix.de>
References: <20210610130613.27983-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_060618_386416_F569263A 
X-CRM114-Status: GOOD (  12.85  )
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
Subject: [PATCH 4/4] watchdog: dw_wdt: denote message to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dw_wdt may be unstoppable once started when no reset line is available.
This behaviour is quite common for different watchdogs, it is not worth
issuing a warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index e23d9cc225..70d6f0cced 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -186,7 +186,7 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	if (dw_wdt->rst)
 		reset_control_deassert(dw_wdt->rst);
 	else
-		dev_warn(dev, "No reset lines. Will not be able to stop once started.\n");
+		dev_dbg(dev, "No reset lines. Will not be able to stop once started.\n");
 
 	return 0;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

