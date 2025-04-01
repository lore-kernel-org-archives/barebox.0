Delivery-date: Tue, 01 Apr 2025 13:05:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQw-006xx7-1j
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQv-0003Kw-FR
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5ic60+Qs4akclodD7whhNCaxFzUFduKi92L/QRR7Rj8=; b=Buiq4SQHJvKF6NJTCOM7fmAypk
	7GuRDEYqiizo8MXvtO8VNII8u0SAQupyGnRKEIv0jHt4RzJQh3Z89ybbT6mt1firFVPZcOVWvM3K6
	EDGgHhFOwhMsAddIUjJ9q//XkEK1t1R0gOZ2HOstJaTvk/jLVx/StB7E8Rg0dFVx6qmErLlftRO3t
	ImhvYCDffJ9qQ5o1wgZ+3WTWpV63UOLvcSW46gSZQQIWYpfuOiM0c4HwhBmwIfBIlJ5ov0Q+uruxf
	ArYyU019crb/NbXcMlr0gwW0AIijgikr3FVRZVkBsUjTZRD6lDVOySz7PMTDacWLppHW6LjIhDrg1
	KxszIZCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQN-00000002itW-2dDS;
	Tue, 01 Apr 2025 11:04:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZC2-00000002g7A-05z1
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:50:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZC0-0000cD-MH; Tue, 01 Apr 2025 12:50:04 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZC0-002kXO-1c;
	Tue, 01 Apr 2025 12:50:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZC0-00GcSg-1K;
	Tue, 01 Apr 2025 12:50:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:50:03 +0200
Message-Id: <20250401105003.3961046-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_035006_088277_C257942A 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] printk: make dev_printf a PBL stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_printf is identical to pr_printf except for ignoring the dev
argument. Make it a macro to avoid compile errors when building without
CONFIG_PBL_CONSOLE && !CONFIG_CONSOLE_NONE.

This has the nice extra benefit of saving some binary space.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel-sdhci-common.c |  4 ----
 drivers/mci/atmel_mci_common.c   |  8 --------
 drivers/mci/imx-esdhc-common.c   |  4 ----
 include/linux/printk.h           |  8 ++------
 pbl/console.c                    | 15 ---------------
 5 files changed, 2 insertions(+), 37 deletions(-)

diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 082ce842f7a2..12b71bc2ded3 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -17,10 +17,6 @@
 
 #ifdef __PBL__
 #define udelay early_udelay
-#undef  dev_err
-#define dev_err(d, ...)		pr_err(__VA_ARGS__)
-#undef  dev_warn
-#define dev_warn(d, ...)	pr_warn(__VA_ARGS__)
 #endif
 
 #include "atmel-sdhci.h"
diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
index 7b11e9134e65..170c021eba4b 100644
--- a/drivers/mci/atmel_mci_common.c
+++ b/drivers/mci/atmel_mci_common.c
@@ -14,14 +14,6 @@
 
 #ifdef __PBL__
 #define udelay early_udelay
-#undef  dev_err
-#define dev_err(d, ...)		pr_err(__VA_ARGS__)
-#undef  dev_warn
-#define dev_warn(d, ...)	pr_warn(__VA_ARGS__)
-#undef  dev_dbg
-#define dev_dbg(d, ...)		pr_debug(__VA_ARGS__)
-#undef  dev_info
-#define dev_info(d, ...)	pr_info(__VA_ARGS__)
 #undef	clk_enable
 #define clk_enable(...)
 #undef	clk_disable
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 3d938891436b..a51e38734cb3 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -105,10 +105,6 @@ static void __udelay(int us)
 }
 
 #define udelay(n)	__udelay(n)
-#undef  dev_err
-#undef  dev_dbg
-#define dev_err(d, ...)	pr_err(__VA_ARGS__)
-#define dev_dbg(d, ...)	pr_debug(__VA_ARGS__)
 
 #endif
 
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 67bdd2dc155d..1c717a6f6676 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -28,15 +28,11 @@
 /* debugging and troubleshooting/diagnostic helpers. */
 struct device;
 
-#ifndef CONFIG_CONSOLE_NONE
+#if !defined(CONFIG_CONSOLE_NONE) && IN_PROPER
 int dev_printf(int level, const struct device *dev, const char *format, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
 #else
-static inline int dev_printf(int level, const struct device *dev,
-			     const char *format, ...)
-{
-	return 0;
-}
+#define dev_printf(level, dev, ...) pr_print(((void)dev, (level)), __VA_ARGS__)
 #endif
 
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
diff --git a/pbl/console.c b/pbl/console.c
index d81bf580d52f..66652320149d 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -86,21 +86,6 @@ int pr_print(int level, const char *fmt, ...)
 	return i;
 }
 
-int dev_printf(int level, const struct device *dev, const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start(args, fmt);
-	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
-	va_end(args);
-
-	console_puts(CONSOLE_STDERR, printbuffer);
-
-	return i;
-}
-
 int ctrlc(void)
 {
 	return 0;
-- 
2.39.5



