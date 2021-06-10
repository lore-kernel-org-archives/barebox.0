Delivery-date: Thu, 10 Jun 2021 15:08:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPo-0000Y3-TM
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 15:08:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPj-0005hP-NA
	for lore@pengutronix.de; Thu, 10 Jun 2021 15:08:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7QY1EgB3n63uQ//JfYcFkAewxmqNJxyCIKicci12iQ=; b=nR4jST40hrk57m
	x8Rn4mVLZXJS5/7YKO5Mpr+nDmH9m3hKJ0B3imy5/ZfPb9wZCezHqx1fIqAxkj2VEpWLnzHbp1BRe
	tUfaXlzeUiui7Dxw7XTsWuXAxlm/JfG2YR9wxUXyNe5UyeAFSDCvaZyuISOCiNt/tXoKyjUgUDyhr
	X3B6H7JmpqllOptAe0cY9T0vl4ESGE3YYgK2P7E1PHyEdPWgQ8KqcMiwESza10/t87OfHLnb7rlQR
	lDTW2WFqPQ4FULRHJ8bKKvTqE627SFeXFxkgVcXRiQjqAdvclrJZFzg2UnY4197V97vQOv9Qp2qWY
	LoIH2vQaQ/spi9cROMgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrKO9-000pCr-NO; Thu, 10 Jun 2021 13:06:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrKO2-000pAE-AZ
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 13:06:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0005I0-Gg; Thu, 10 Jun 2021 15:06:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0007IH-6s; Thu, 10 Jun 2021 15:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 15:06:12 +0200
Message-Id: <20210610130613.27983-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210610130613.27983-1-s.hauer@pengutronix.de>
References: <20210610130613.27983-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_060618_388669_64C26E2D 
X-CRM114-Status: GOOD (  11.38  )
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
Subject: [PATCH 3/4] watchdog: dw_wdt: set maximum timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Communicate the maximum possible timeout to the watchdog core.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index bc5af810ea..e23d9cc225 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -159,18 +159,19 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	if (IS_ERR(dw_wdt->rst))
 		return PTR_ERR(dw_wdt->rst);
 
+	dw_wdt->rate = clk_get_rate(clk);
+	if (dw_wdt->rate == 0)
+		return -EINVAL;
+
 	wdd = &dw_wdt->wdd;
 	wdd->name = "dw_wdt";
 	wdd->hwdev = dev;
 	wdd->set_timeout = dw_wdt_set_timeout;
+	wdd->timeout_max = dw_wdt_top_in_seconds(dw_wdt, DW_WDT_MAX_TOP);
 
 	wdd->running = readl(dw_wdt->regs + WDOG_CONTROL_REG_OFFSET) &
 		WDOG_CONTROL_REG_WDT_EN_MASK ? WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
 
-	dw_wdt->rate = clk_get_rate(clk);
-	if (dw_wdt->rate == 0)
-		return -EINVAL;
-
 	ret = watchdog_register(wdd);
 	if (ret)
 		goto out_disable_clk;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

