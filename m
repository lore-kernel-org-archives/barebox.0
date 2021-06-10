Delivery-date: Thu, 10 Jun 2021 15:08:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPt-0000Yr-LW
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 15:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPp-0005iS-IS
	for lore@pengutronix.de; Thu, 10 Jun 2021 15:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ya2P0e/ICQwyPeee92jtgqaZ4MKXvp8xYHf4v91wXyA=; b=eje0ilcdO8FRrF
	d61SRMf2+tqGnCGAJBsbzEP8IjnNHOGKm+D5RhH5f+nR+s8+q/NyXf/DJa1Pbl50yt0C1z/enp5Zw
	C9QqccGYWGnRr+cOjBUuR3A/WJ8VDr9ew3SZ11PqfbmlPGrLbdTCOSbPIO28hFKIYgkpI2WolVuEY
	PpMM6ToDDWBaX9QufDwbnekbc49XxRHXNFFbIpCWw5icln2UJbLjhJQiapjExVCk4prA4Mr+7KDsr
	LLj698PWQy6ZqmHsDyMv9xBji6kz0KtgiQ+Ergr0Be0VjPXfpsVF0XmbQJzgTMKKE9aWc5rn885dU
	ncafpz1yQxF53488O5Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrKOM-000pIO-3q; Thu, 10 Jun 2021 13:06:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrKOF-000pGm-Ph
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 13:06:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0005Hz-HX; Thu, 10 Jun 2021 15:06:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0007IE-6M; Thu, 10 Jun 2021 15:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 15:06:11 +0200
Message-Id: <20210610130613.27983-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210610130613.27983-1-s.hauer@pengutronix.de>
References: <20210610130613.27983-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_060631_890023_1157B550 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH 2/4] watchdog: dw_wdt: Detect if running initially
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Let the watchdog core know if the watchdog is currently running or not.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index bc5d4a889a..bc5af810ea 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -164,6 +164,9 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	wdd->hwdev = dev;
 	wdd->set_timeout = dw_wdt_set_timeout;
 
+	wdd->running = readl(dw_wdt->regs + WDOG_CONTROL_REG_OFFSET) &
+		WDOG_CONTROL_REG_WDT_EN_MASK ? WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
+
 	dw_wdt->rate = clk_get_rate(clk);
 	if (dw_wdt->rate == 0)
 		return -EINVAL;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

