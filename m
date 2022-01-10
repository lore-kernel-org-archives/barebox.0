Delivery-date: Mon, 10 Jan 2022 11:50:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6sFz-00G1Mq-Td
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 11:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6sFy-0001Zq-N7
	for lore@pengutronix.de; Mon, 10 Jan 2022 11:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VXfDRdDU/vzqtxdewUKRJ8Ta9v47kpFpklaqPfgQRC8=; b=fbhTBuS2Ov8Jmc
	ntbQ8jenHF2f97IqKOSKw+5p8nCT4QaHUa1G7LJIDN8PqFGQDsu7X7alhoCzE5IiPB+4Q5XIncWOm
	O9GXN9nK2vzLdV8rXqVVbR5dO7Um3CwPihaE3PtoyhcqQhbezWl4ATzdZOKgP5aY3Vu4ZcNoWxZ24
	xpDKpSpTZsATWsnj6JbugIA7OEwuxHSsrI4bJO14VGWongm0dFhoudK6H/ye8uLN/hNtHuWjkDlc6
	F2bTczUoqZNm1WxhuxRhr+ae/wAXoRaSyC6Gyjiw50MA4UbCMBcwK0EtCCM+jpnzcKdYMGn72d672
	sL27UdB79o4LV2vXMowA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6sET-00AujS-6p; Mon, 10 Jan 2022 10:48:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6sED-00AucC-2S
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 10:48:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6sE9-0001Jo-7d; Mon, 10 Jan 2022 11:48:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6sE8-00DDMO-Ot; Mon, 10 Jan 2022 11:48:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Jan 2022 11:48:31 +0100
Message-Id: <20220110104831.3149574-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_024841_144706_8C25C35B 
X-CRM114-Status: GOOD (  14.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] misc: acpi-test: retire test driver in favor of WDAT driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the integration of the ACPI WDAT watchdog driver, we now have an
actually useful user of the ACPI bus in tree, so the test driver
serves no purpose anymore. Drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig     |  6 ----
 drivers/misc/Makefile    |  1 -
 drivers/misc/acpi-test.c | 61 ----------------------------------------
 3 files changed, 68 deletions(-)
 delete mode 100644 drivers/misc/acpi-test.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 56569145076e..5ab0506cd9fa 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -37,12 +37,6 @@ config UBOOTVAR
 	  While it can be used standalone, it is best when coupled
 	  with corresponding filesystem driver.
 
-config ACPI_TEST
-	bool "ACPI Test driver"
-	depends on ACPI
-	help
-	  This is a simple Test driver to test the ACPI bus.
-
 config STARFIVE_PWRSEQ
 	bool "StarFive power sequencing driver"
 	depends on SOC_STARFIVE
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 05da264a426d..6326e784fc98 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -8,5 +8,4 @@ obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
-obj-$(CONFIG_ACPI_TEST)		+= acpi-test.o
 obj-$(CONFIG_STARFIVE_PWRSEQ)	+= starfive-pwrseq.o
diff --git a/drivers/misc/acpi-test.c b/drivers/misc/acpi-test.c
deleted file mode 100644
index af20370fbc73..000000000000
--- a/drivers/misc/acpi-test.c
+++ /dev/null
@@ -1,61 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (c) 2019 Ahmad Fatoum
- */
-
-#include <common.h>
-#include <init.h>
-#include <acpi.h>
-
-static const char *profiles[] = {
-	"Unspecified",
-	"Desktop",
-	"Mobile",
-	"Workstation",
-	"Enterprise Server",
-	"SOHO Server",
-	"Applicance PC",
-	"Performance Server",
-	"Tablet",
-};
-
-static int acpi_test_probe(struct device_d *dev)
-{
-	const char *profile = "reserved";
-	u8 *sdt;
-	u8 profileno;
-
-	dev_dbg(dev, "driver initializing...\n");
-
-	sdt = (u8 __force *)dev_request_mem_region_by_name(dev, "SDT");
-	if (IS_ERR(sdt)) {
-		dev_err(dev, "no SDT resource available: %pe\n", sdt);
-		return PTR_ERR(sdt);
-	}
-
-	dev_dbg(dev, "SDT is at 0x%p\n", sdt);
-
-	profileno = sdt[45];
-
-	if (profileno < ARRAY_SIZE(profiles))
-		profile = profiles[profileno];
-
-	dev_info(dev, "PM profile is for '%s'\n", profile);
-
-	return 0;
-}
-
-static void acpi_test_remove(struct device_d *dev)
-{
-	dev_dbg(dev, "FADT driver removed\n");
-}
-
-static struct acpi_driver acpi_test_driver = {
-	.signature = "FACP",
-	.driver = {
-		.name = "acpi-test",
-		.probe = acpi_test_probe,
-		.remove = acpi_test_remove,
-	}
-};
-device_acpi_driver(acpi_test_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

