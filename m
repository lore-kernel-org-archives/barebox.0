Delivery-date: Thu, 13 Mar 2025 08:49:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJQ-00DTck-2Q
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:49:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJP-0008IO-DI
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IAaQ5N65UZ0TDrPPhx13H42q4iqHCjO1RcQSWPMueng=; b=J5OEiYFCBsSqS9jfcMotAYLS60
	Znjv8MidnKsfHMkewp8VLO1BBYhscBMt5kcJe7Pqf/BUcllVgZz5wnK0clSjXZNFl3aj/06Y6dClt
	TCpuf1EEC2zqoSv0oV1180U2KEQmKdVAqQ8tBYW5DBskQxUSj7B/7qtq4i2BabiEVf0X6FMUjNmc2
	s1W44qRbiJTahRf0zdE2aKBhl+6HvkDHJ6+Nf7i54GZDtf4+36oZnk3C3ht4WR7VgUear/OiaU9jd
	JBvpBLKaM42pKHgivhQY4gLfqBtsyFR3ICeqAatVv30ce7L8snpQmQPL0+UwUhqUvnoxztaMTqa2b
	oOxypQlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdIx-0000000AQcT-3iTi;
	Thu, 13 Mar 2025 07:48:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5j-0000000AOUk-38i5
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:34:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mQ-Cp; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uvh-0V;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-0C;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:26 +0100
Message-Id: <20250313073445.764875-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003455_817030_21C0EA98 
X-CRM114-Status: GOOD (  12.43  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/22] treewide: fix missing headers in sandbox allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building these drivers fails because of missing includes that are
transitively included on ARM, but no on sandbox.

Add the relevant includes directly to address this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/ti/k3-udma.c               | 2 +-
 drivers/mfd/tps65219.c                 | 1 +
 drivers/pmdomain/ti/ti-k3.c            | 1 +
 drivers/regulator/tps65219-regulator.c | 1 +
 drivers/soc/ti/k3-navss-ringacc.c      | 1 +
 5 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 761898867d4e..e17b99de47c4 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -5,9 +5,9 @@
  */
 #define pr_fmt(fmt) "udma: " fmt
 
-#include <asm/cache.h>
 #include <io.h>
 #include <malloc.h>
+#include <stdio.h>
 #include <linux/bitops.h>
 #include <linux/sizes.h>
 #include <linux/printk.h>
diff --git a/drivers/mfd/tps65219.c b/drivers/mfd/tps65219.c
index 854210537fa3..132dab7cdeec 100644
--- a/drivers/mfd/tps65219.c
+++ b/drivers/mfd/tps65219.c
@@ -12,6 +12,7 @@
 #include <linux/regmap.h>
 #include <linux/mfd/tps65219.h>
 #include <linux/device.h>
+#include <linux/kernel.h>
 
 static const struct mfd_cell tps65219_cells[] = {
 	{ .name = "tps65219-regulator", },
diff --git a/drivers/pmdomain/ti/ti-k3.c b/drivers/pmdomain/ti/ti-k3.c
index 33bffeaca001..1616e90b6230 100644
--- a/drivers/pmdomain/ti/ti-k3.c
+++ b/drivers/pmdomain/ti/ti-k3.c
@@ -9,6 +9,7 @@
 #define pr_fmt(fmt)     "ti-k3-pm-domain: " fmt
 
 #include <io.h>
+#include <stdio.h>
 #include <of_device.h>
 #include <malloc.h>
 #include <init.h>
diff --git a/drivers/regulator/tps65219-regulator.c b/drivers/regulator/tps65219-regulator.c
index da329660d688..9ec54ed77908 100644
--- a/drivers/regulator/tps65219-regulator.c
+++ b/drivers/regulator/tps65219-regulator.c
@@ -10,6 +10,7 @@
 // "J Keerthy <j-keerthy@ti.com>"
 //
 
+#include <linux/kernel.h>
 #include <linux/mfd/tps65219.h>
 #include <of_device.h>
 #include <linux/regmap.h>
diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
index 933e03018398..f19a37dde064 100644
--- a/drivers/soc/ti/k3-navss-ringacc.c
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
  */
 
+#include <linux/kernel.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <soc/ti/k3-navss-ringacc.h>
-- 
2.39.5



