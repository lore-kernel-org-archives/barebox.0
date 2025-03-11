Delivery-date: Tue, 11 Mar 2025 11:51:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxCP-00Cdwg-2l
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 11:51:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxCO-0006LE-LG
	for lore@pengutronix.de; Tue, 11 Mar 2025 11:51:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2uVWf5TvuXWnnaxulW/HkyhsUXJUWTa68tI/dym6z4U=; b=GfutTWjQpPpzYjPdgSrkxIr9W9
	7Iyr6kP2NNoEaPWB4/9h2MEO1wmEZDY0NIByPbv1ARGWs+/QNGiwXkCaMnqaWbjTkTuzqDXCOCFpt
	cNaggJ4rh52Td4Ly9RQjMsnhA3El33ZQfQvehBuLWSq/IC8dIXREz4ozPdTqx9vbyDj3JHOEDTQCI
	QHHU7kW9/FEb5dkNsouXnHtmiuBQqhwhfd7uQ1xAPfPKEU7iu8IoFiq1zICj4GMZB8/eserFX4Fj5
	chRNQcqp85lu0PBLiEQGdl//o6n4Pq/iDl3LhHqTUtcqOF7j/lqcIpvUyuCN9pG1s6IJfOpObVbzq
	RLQiygqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxBq-00000005Nkc-1U7E;
	Tue, 11 Mar 2025 10:50:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxBl-00000005NjC-3xIo
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 10:50:24 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1trxBi-00067p-LZ; Tue, 11 Mar 2025 11:50:18 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 11 Mar 2025 11:50:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-pca9450-wdog-v1-1-45120abeae00@pengutronix.de>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
In-Reply-To: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2391; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=LMdpMtvFUgKU4Thh8peUGg0t/Jb139OUlx3yNioppBY=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYki/IJpZra6bK/9NclWHb0Ft6YsvMWYrd1sHptse4LD7d
 XHrI0XljlIWBjEOBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwESq5zH8U/S+cLSGtzhZIz/5
 /JYbwZaB1YIyN5tO5e2qm5/+oy07iJHhWr9X5JPec7oaC8M/hnIuPrHjdbBQjWiG+aMgAeF/i1c
 zAgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_035021_986706_DA709568 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mfd: pca9450: configure pmic reset behavior
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, boards using the pca9450 pmic driver initialize the
RESET_CTRL register either in lowlevel.c or board.c explicitly to 0xA1
to enable the watchdog for Cold Reset with all voltage regulators
recycled except LDO1/ LDO2 in addition to the default configuration of
0x11 where the WDOG_B watchdog input is disabled.

Instead, enable the watchdog in the driver for Cold Reset with all
voltage regulators recycled except LDO1/ LDO2. When
nxp,wdog_b-warm-reset is set, the watchdog is instead enabled for Warm
Reset.

This is identical to U-Boot's behaviour since commit 910c7a881f5 and
Linux's since commit 2364a64d0673f.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/mfd/pca9450.c | 11 +++++++++++
 include/mfd/pca9450.h |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 2511e662c3dfb5dfedbc461357ffa82d1812166f..6d6fb32c36569689b901455b3376c92977eabc37 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -3,6 +3,7 @@
  * Copyright (C) 2023 Holger Assmann, Pengutronix
  */
 
+#include "linux/regmap.h"
 #include <common.h>
 #include <driver.h>
 #include <errno.h>
@@ -103,6 +104,16 @@ static int __init pca9450_probe(struct device *dev)
 	/* Chip ID defined in bits [7:4] */
 	dev_info(dev, "PMIC Chip ID: 0x%x\n", (reg >> 4));
 
+	/* Enable WDOG_B, for cold reset by default */
+	if (of_property_read_bool(dev->of_node, "nxp,wdog_b-warm-reset"))
+		regmap_update_bits(regmap, PCA9450_RESET_CTRL,
+				   PCA9450_PMIC_RESET_WDOG_B_CFG_MASK,
+				   PCA9450_PMIC_RESET_WDOG_B_CFG_WARM);
+	else
+		regmap_update_bits(regmap, PCA9450_RESET_CTRL,
+				   PCA9450_PMIC_RESET_WDOG_B_CFG_MASK,
+				   PCA9450_PMIC_RESET_WDOG_B_CFG_COLD_LDO12);
+
 	if (pca9450_init_callback)
 		pca9450_init_callback(regmap);
 	pca9450_map = regmap;
diff --git a/include/mfd/pca9450.h b/include/mfd/pca9450.h
index 7071c3a9da6c5adc26dbd6149fec5fa96f3365bf..af10e409855ff6c3585c7f63098a16e8ec33dee2 100644
--- a/include/mfd/pca9450.h
+++ b/include/mfd/pca9450.h
@@ -66,4 +66,8 @@ static inline int pca9450_register_init_callback(void(*callback)(struct regmap *
 }
 #endif
 
+#define PCA9450_PMIC_RESET_WDOG_B_CFG_MASK		0xc0
+#define PCA9450_PMIC_RESET_WDOG_B_CFG_WARM		0x40
+#define PCA9450_PMIC_RESET_WDOG_B_CFG_COLD_LDO12	0x80
+
 #endif

-- 
2.39.5



