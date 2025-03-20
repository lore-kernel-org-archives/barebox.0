Delivery-date: Thu, 20 Mar 2025 13:13:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvElr-001stT-25
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:13:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvElq-0008F4-FG
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:13:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CXJGZ+jL2pm8JgjmjLm7BdhCs3YDFr6rR5TKmMDk5so=; b=Ye+7UMmIVdyhJOArw90dNz6t2x
	4fxzEQafRRQS9nVQZQNbZBQKHRqV5HVnk2KgkBmgSC3lJt3hFFjG1EIcavxsFHAf9939DRk7vXJzy
	J+10zCLMWDB+zQHs8fI+Epa+k559XU7xSi9vYkhfB6VYrNWG2gBMSOD0OTBpTdQ1cYQYnFSTsWesw
	+jvzYOu+Wzy2ktYoZP9Kdyr4hziJo4TB9T7sm77PBumE8HugbOKNognxpOa7SahsBK9fcdtLb4kfz
	jF0klFK/yO57BipWZv8HtOh7cDoJIDm6aLUPG1KTe4EV9fB4tldVjK7qjlxd4VBX5FKk5Nf9YjIkm
	78Uva1pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvElO-0000000C4jE-1ajW;
	Thu, 20 Mar 2025 12:12:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEgS-0000000C3U1-2o07
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 12:07:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEgR-0006Rs-GT; Thu, 20 Mar 2025 13:07:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEgQ-000kvy-2t;
	Thu, 20 Mar 2025 13:07:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEgR-000qzQ-0g;
	Thu, 20 Mar 2025 13:07:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Mar 2025 13:07:34 +0100
Message-Id: <20250320120734.203685-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_050736_710733_E8816D37 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] ARM: omap: remove unused file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

omap4-devices.h is not included anywhere. Remove the file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/omap/omap4-devices.h | 93 -------------------------------
 1 file changed, 93 deletions(-)
 delete mode 100644 include/mach/omap/omap4-devices.h

diff --git a/include/mach/omap/omap4-devices.h b/include/mach/omap/omap4-devices.h
deleted file mode 100644
index de73062bc5..0000000000
--- a/include/mach/omap/omap4-devices.h
+++ /dev/null
@@ -1,93 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __MACH_OMAP4_DEVICES_H
-#define __MACH_OMAP4_DEVICES_H
-
-#include <driver.h>
-#include <linux/sizes.h>
-#include <mach/omap/devices.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/mcspi.h>
-#include <mach/omap/omap_hsmmc.h>
-
-static inline void omap44xx_add_sram0(void)
-{
-	return omap_add_sram0(OMAP44XX_SRAM_BASE, 48 * SZ_1K);
-}
-
-static inline struct device *omap44xx_add_uart1(void)
-{
-	return omap_add_uart(0, OMAP44XX_UART1_BASE);
-}
-
-static inline struct device *omap44xx_add_uart2(void)
-{
-	return omap_add_uart(1, OMAP44XX_UART2_BASE);
-}
-
-static inline struct device *omap44xx_add_uart3(void)
-{
-	return omap_add_uart(2, OMAP44XX_UART3_BASE);
-}
-
-static inline struct device *omap44xx_add_mmc1(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 0, NULL,
-			OMAP44XX_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_mmc2(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 1, NULL,
-			OMAP44XX_MMC2_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_mmc3(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 2, NULL,
-			OMAP44XX_MMC3_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_mmc4(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 3, NULL,
-			OMAP44XX_MMC4_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_mmc5(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 4, NULL,
-			OMAP44XX_MMC5_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_i2c1(void *pdata)
-{
-	return add_generic_device("i2c-omap4", 0, NULL, OMAP44XX_I2C1_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_i2c2(void *pdata)
-{
-	return add_generic_device("i2c-omap4", 1, NULL, OMAP44XX_I2C2_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_i2c3(void *pdata)
-{
-	return add_generic_device("i2c-omap4", 2, NULL, OMAP44XX_I2C3_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_i2c4(void *pdata)
-{
-	return add_generic_device("i2c-omap4", 3, NULL, OMAP44XX_I2C4_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device *omap44xx_add_ehci(void *pdata)
-{
-	return add_usb_ehci_device(DEVICE_ID_DYNAMIC, OMAP44XX_EHCI_BASE,
-				OMAP44XX_EHCI_BASE + 0x10, pdata);
-}
-
-#endif /* __MACH_OMAP4_DEVICES_H */
-- 
2.39.5



