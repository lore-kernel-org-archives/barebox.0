Delivery-date: Tue, 11 Jun 2024 08:58:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSx-0046za-0T
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSw-0005lH-H7
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aYPjOwL2ttdcpYdVDECEra4E0lTJIVxBusK50xpqdWM=; b=zG3sYYjfuBZVUCBXO5OCvIwmdU
	fAGOfBLM+LNlNq6S1NHyv5zVZFE0m8guJnbnYiRu9yIWRWN0RlMslbviTt3a/3FKNWBQriHIfdSDO
	Ca1r4mHBH5bFVg1vIsbVWDlCSEdRs2O4SzCRpQ3uUMQ0mkENQYYV0MdRYFDUTNhsVQUQNNGhzk0VY
	ZMZZIKOpkIzndsN3pE4WrTSD7dVTQLT8g3owcZ+dphgsNntLpScKeM47dNXTXn40gKTchwPLfrkrb
	uAjB4kM6DFTAdM/IbUY7wTELX0wbcCxyL0WZdPiHUCIRONB5YgGArT5rxFgydzeCsspg6bBa8/Jb8
	T929/ZQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvSU-00000007mUe-0tRW;
	Tue, 11 Jun 2024 06:58:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvSP-00000007mSN-2bxm
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:58:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSO-0005Y0-B2; Tue, 11 Jun 2024 08:58:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSN-001UCx-RC; Tue, 11 Jun 2024 08:58:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSN-00CAQx-2R;
	Tue, 11 Jun 2024 08:58:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:58:10 +0200
Message-Id: <20240611065811.2900029-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235813_806754_A9C2959A 
X-CRM114-Status: GOOD (  15.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] watchdog: bcm2835: add support for powering off SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The watchdog peripheral on the Raspberry Pi can be used to shutdown by
writing a magic value that the firmware checks for and rebooting.

This is useful to close an emulated Raspberry Pi in QEMU, so add
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/bcm2835_wdt.c | 21 +++++++++++++++++++++
 include/soc/bcm283x/wdt.h      |  7 +++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index 874315d502a9..5b854c49b311 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -8,6 +8,7 @@
 #include <init.h>
 #include <io.h>
 #include <restart.h>
+#include <poweroff.h>
 #include <watchdog.h>
 
 #include <soc/bcm283x/wdt.h>
@@ -23,6 +24,7 @@ struct bcm2835_wd {
 	void __iomem *base;
 	struct device *dev;
 	struct restart_handler restart;
+	struct poweroff_handler poweroff;
 };
 
 #define RESET_TIMEOUT 10
@@ -41,6 +43,20 @@ static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
+static void __noreturn bcm2835_poweroff_soc(struct poweroff_handler *poweroff)
+{
+	struct bcm2835_wd *priv = container_of(poweroff, struct bcm2835_wd, poweroff);
+	uint32_t val;
+
+	shutdown_barebox();
+
+	val = readl_relaxed(priv->base + PM_RSTS);
+	val |= PM_PASSWORD | PM_RSTS_RASPBERRYPI_HALT;
+	writel_relaxed(val, priv->base + PM_RSTS);
+
+	bcm2835_restart_soc(&priv->restart);
+}
+
 static int bcm2835_wd_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct bcm2835_wd *priv = container_of(wd, struct bcm2835_wd, wd);
@@ -86,6 +102,11 @@ static int bcm2835_wd_probe(struct device *dev)
 		}
 	}
 
+	priv->poweroff.name = "bcm2835_wd";
+	priv->poweroff.poweroff = bcm2835_poweroff_soc;
+
+	poweroff_handler_register(&priv->poweroff);
+
 	priv->restart.name = "bcm2835_wd";
 	priv->restart.restart = bcm2835_restart_soc;
 
diff --git a/include/soc/bcm283x/wdt.h b/include/soc/bcm283x/wdt.h
index 2002647b9c39..86e02bcf40f7 100644
--- a/include/soc/bcm283x/wdt.h
+++ b/include/soc/bcm283x/wdt.h
@@ -38,4 +38,11 @@
 #define PM_RSTS_HADSR_SET \
 	(PM_RSTS_HADSRQ_SET | PM_RSTS_HADSRF_SET | PM_RSTS_HADSRH_SET)
 
+/*
+ * The Raspberry Pi firmware uses the RSTS register to know which partition
+ * to boot from. The partition value is spread into bits 0, 2, 4, 6, 8, 10.
+ * Partition 63 is a special partition used by the firmware to indicate halt.
+ */
+#define PM_RSTS_RASPBERRYPI_HALT	0x555
+
 #endif
-- 
2.39.2



