Delivery-date: Thu, 10 Jun 2021 15:08:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPn-0000Xg-Bx
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 15:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKPj-0005hK-Al
	for lore@pengutronix.de; Thu, 10 Jun 2021 15:08:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dAqySIC2eGc9Lfs4qA9PovVbUVG4PfWJHbBkdm/J8IU=; b=i3EaNstLP6e30F
	MmC+jsShgaebuKbbAAHOfo0FdC7O5OD86kQzNiKXh+ZnmCzAHWPDQlfOkFok1qDn9Mrx4i6/8/ms2
	6BYyK0gcuLQGiBeYHEnBZjRBDOjEmwlvf1wzEbcJw2HQ6FJ9he6A8vrnkfyUwtn3+eR2WbeeKmdjY
	y0dj4KtyDvKXD6IDc4OFd9JAmFmFbxdG7Mf33ZumvXQ2OAtMRBi1jmX0GYdM3MtDtBbZ3ON2+ehi8
	7hFULt7LV3T61DQZEKqH6dVrQ8hKHB1/miKD2142Zlh9od6UyP9jdaX+E4JpuQiTnl3PJVkWMR6f/
	OkiYlZO9lsOfYyZUo2lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrKOI-000pGC-Aw; Thu, 10 Jun 2021 13:06:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrKO7-000pDU-Oj
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 13:06:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0005Hy-Ht; Thu, 10 Jun 2021 15:06:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKNy-0007IC-5k; Thu, 10 Jun 2021 15:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 15:06:10 +0200
Message-Id: <20210610130613.27983-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_060623_824607_200A774D 
X-CRM114-Status: GOOD (  10.29  )
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
Subject: [PATCH 1/4] watchdog: dw_wdt: Write counter restart register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At least some variants of the dwc watchdog controllers need the
value 0x76 written to the counter restart register to actually
take the value written to the Timeout range register. Happened
on Rockchip RK3568, without this the watchdog immediately resets
the system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index 17771c7126..bc5d4a889a 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -111,6 +111,9 @@ static int dw_wdt_set_timeout(struct watchdog *wdd, unsigned int top_s)
 	writel(top_val | top_val << WDOG_TIMEOUT_RANGE_TOPINIT_SHIFT,
 	       dw_wdt->regs + WDOG_TIMEOUT_RANGE_REG_OFFSET);
 
+	writel(WDOG_COUNTER_RESTART_KICK_VALUE,
+	       dw_wdt->regs + WDOG_COUNTER_RESTART_REG_OFFSET);
+
 	dw_wdt_start(wdd);
 
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

