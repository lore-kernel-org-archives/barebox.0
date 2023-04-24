Delivery-date: Mon, 24 Apr 2023 14:19:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAH-00FZ38-9B
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAH-0004Qi-4B
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KbErnE7PbZMKzeusbFljmpPIfhowZX3iyxFfK36O5us=; b=HSC6duJb77lF+5eCPbGjW3utUZ
	8rmjncgPn61dYVNM32UjFpe5L8yRAEVyQo8R9jtuRrC4DYSQMYvVL6t9jXvNcxqjGJpi5589b7L5l
	o5Cq2srp+CU/HnZFGZw8kCNH3E5HLx7wF3u9DyLK/BiDMDTN+9pyiil0OZzWiUavn1mx7oDHZhFK8
	9WW4vPt5Bvhsc+qCf2BJsFeTlmnaIDoG8Gv9k4G4YlVzcrRcONg85Ft3Dh1wMQSLEhGLdnSbUOJ/V
	Uj1mWZ5KUyzyOdyRQgDKPDVXZoIm5zXXLFdc6rKGydhqTxjy7EAfCjVrwCLjCndnbmp9tauuwpOOa
	tzqKnb+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv96-00GHXr-1v;
	Mon, 24 Apr 2023 12:18:16 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv93-00GHWk-10
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:14 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 9368740008;
	Mon, 24 Apr 2023 12:18:10 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:17:59 +0200
Message-Id: <20230424121805.150434-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051813_480171_2173C2B7 
X-CRM114-Status: GOOD (  15.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/7] sandbox: watchdog: handle missing stickypage gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To enable simulation of $global.system.reset in sandbox, the watchdog
driver writes the reset-source into the stickypage for readout during
subsequent barebox startup. This is an optional feature, so it should
happen before watchdog registration, but not break watchdog operation if
not available.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/watchdog.c           | 28 +++++++++----------------
 arch/sandbox/include/asm/reset_source.h | 16 ++++++++++++++
 2 files changed, 26 insertions(+), 18 deletions(-)
 create mode 100644 arch/sandbox/include/asm/reset_source.h

diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index 54e87cdde4ab..5bffad81195e 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -7,7 +7,7 @@
 #include <of.h>
 #include <watchdog.h>
 #include <linux/nvmem-consumer.h>
-#include <reset_source.h>
+#include <asm/reset_source.h>
 
 struct sandbox_watchdog {
 	struct watchdog wdd;
@@ -30,7 +30,7 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 	if (timeout > wdd->timeout_max)
 		return -EINVAL;
 
-	nvmem_cell_write(wd->reset_source_cell, &(u8) { RESET_WDG }, 1);
+	sandbox_save_reset_source(wd->reset_source_cell, RESET_WDG);
 
 	linux_watchdog_set_timeout(timeout);
 	return 0;
@@ -41,7 +41,6 @@ static int sandbox_watchdog_probe(struct device *dev)
 	struct device_node *np = dev->of_node;
 	struct sandbox_watchdog *wd;
 	struct watchdog *wdd;
-	int ret;
 
 	wd = xzalloc(sizeof(*wd));
 
@@ -50,24 +49,17 @@ static int sandbox_watchdog_probe(struct device *dev)
 	wdd->set_timeout = sandbox_watchdog_set_timeout;
 	wdd->timeout_max = 1000;
 
-	wd->cant_disable = of_property_read_bool(np, "barebox,cant-disable");
-
-	ret = watchdog_register(wdd);
-	if (ret) {
-		dev_err(dev, "Failed to register watchdog device\n");
-		return ret;
-	}
-
-	wd->reset_source_cell = of_nvmem_cell_get(dev->of_node,
-						  "reset-source");
+	wd->reset_source_cell = of_nvmem_cell_get(np, "reset-source");
 	if (IS_ERR(wd->reset_source_cell)) {
-		dev_warn(dev, "No reset source info available: %pe\n", wd->reset_source_cell);
-		goto out;
+		if (PTR_ERR(wd->reset_source_cell) != -EPROBE_DEFER)
+			dev_warn(dev, "No reset source info available: %pe\n",
+				 wd->reset_source_cell);
+		wd->reset_source_cell = NULL;
 	}
 
-out:
-	dev_info(dev, "probed\n");
-	return 0;
+	wd->cant_disable = of_property_read_bool(np, "barebox,cant-disable");
+
+	return watchdog_register(wdd);
 }
 
 
diff --git a/arch/sandbox/include/asm/reset_source.h b/arch/sandbox/include/asm/reset_source.h
new file mode 100644
index 000000000000..1690299c4718
--- /dev/null
+++ b/arch/sandbox/include/asm/reset_source.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __SANDBOX_RESET_SOURCE_H
+#define __SANDBOX_RESET_SOURCE_H
+
+#include <reset_source.h>
+#include <linux/nvmem-consumer.h>
+
+static inline void sandbox_save_reset_source(struct nvmem_cell *reset_source_cell,
+					     enum reset_src_type src)
+{
+	if (reset_source_cell)
+		WARN_ON(nvmem_cell_write(reset_source_cell, &(u8) { src }, 1) <= 0);
+}
+
+#endif
-- 
2.38.4



