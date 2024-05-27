Delivery-date: Mon, 27 May 2024 11:51:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBX0s-000eYR-1j
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 11:51:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBX0r-0001Gn-Tf
	for lore@pengutronix.de; Mon, 27 May 2024 11:51:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=krhrCmRcdt1M47gvU/eQpzUup7oTz3A5yiAKOaUZnG4=; b=fFX5wMApFFhxzRvv+NBdtNKPbs
	Baw0gKuxe/K21HzXLv6NhBIHEdM1JgmcXDTncPuwYfs7ULPmqn5A/+jZmElDGE1J87ScgX2U4277p
	8k6OVT5Jgwl8CmHUkm7nEiZebvZR7dLxwSZrI93Qw24PMyFvXJHALh5ENw5i989ALc4vi0dxM3gA8
	eh3fb6x0lBBGd8OyLLMtgQ8b4pBhJVaMptqpfV/quWA6x05qjHrgtYcYS3zBGg2H1RuVXvKjlDZz4
	JtFg7XWm8cdT1jDGIDBtKqHzUknTL9+ghRNdErUB9dCPo7i2+l7MxclnuZhPgtfjqIqmK5Xf4ixp3
	NKnSjQEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBX0S-0000000EVK1-0eEr;
	Mon, 27 May 2024 09:51:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBX0O-0000000EVIh-2QVK
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 09:51:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBX0N-0001AM-49; Mon, 27 May 2024 11:50:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBX0M-003AcK-Ns; Mon, 27 May 2024 11:50:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBX0M-00ELIF-22;
	Mon, 27 May 2024 11:50:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 11:50:56 +0200
Message-Id: <20240527095057.3418435-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_025100_638666_60047ED1 
X-CRM114-Status: GOOD (  13.01  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] watchdog: dw_wdt: do not register restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The designware watchdog driver doesn't have a special reset function,
instead it only uses the regular watchdog to reset the SoC. Since
0ed7bb09f2ef7b ("watchdog: add option to provide fall-back restart handler")
the watchdog core provides the same functionality, so just drop the
restart functionality from the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index 178e0a29f1..398bbfe05f 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -16,7 +16,6 @@
 #include <init.h>
 #include <io.h>
 #include <of.h>
-#include <restart.h>
 #include <watchdog.h>
 #include <linux/clk.h>
 #include <linux/err.h>
@@ -37,7 +36,6 @@
 
 struct dw_wdt {
 	void __iomem		*regs;
-	struct restart_handler	restart;
 	struct watchdog		wdd;
 	struct reset_control	*rst;
 	unsigned int		rate;
@@ -115,19 +113,6 @@ static int dw_wdt_set_timeout(struct watchdog *wdd, unsigned int top_s)
 	return 0;
 }
 
-static void __noreturn dw_wdt_restart_handle(struct restart_handler *rst)
-{
-	struct dw_wdt *dw_wdt;
-
-	dw_wdt = container_of(rst, struct dw_wdt, restart);
-
-	dw_wdt->wdd.set_timeout(&dw_wdt->wdd, -1);
-
-	mdelay(1000);
-
-	hang();
-}
-
 static int dw_wdt_drv_probe(struct device *dev)
 {
 	struct watchdog *wdd;
@@ -173,13 +158,6 @@ static int dw_wdt_drv_probe(struct device *dev)
 	if (ret)
 		goto out_disable_clk;
 
-	dw_wdt->restart.name = "dw_wdt";
-	dw_wdt->restart.restart = dw_wdt_restart_handle;
-
-	ret = restart_handler_register(&dw_wdt->restart);
-	if (ret)
-		dev_warn(dev, "cannot register restart handler\n");
-
 	if (dw_wdt->rst)
 		reset_control_deassert(dw_wdt->rst);
 	else
-- 
2.39.2



