Delivery-date: Mon, 05 Jan 2026 11:45:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5l-001UVC-01
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 11:45:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5k-0000cc-Cu
	for lore@pengutronix.de; Mon, 05 Jan 2026 11:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oa7g2bFBWJFrGiq+mVc9T4eB4jU4r9pyH5DJavgp5Zw=; b=4A2H/wSZhgPYA1H5IRAoO9JstR
	Qd1u6NOO2V17eKdblS2SCT600nA+647gmS9Xo61+zjLDRwgmZt0KCrZ3wPgd+7yFzl8N+OB4xLCWt
	u8Cw0LwkDBB7aosQK7uas+21Kx4erdYgFSI9YcQ/A5DsHa+dzAQEP2pzT6MTuanHDTTncK9WWq6Td
	NmJ7E1X3qF0JAYsKAlqQhka6sa/zcgyTIgci/aDW4IyNMvSIP+BRQeb1W0bZ9LX2RxrmHwPDucXl3
	hcWVvObveI1m9xVa9tuOjkRWSM3U702ovFIa0mrT8ksq+TqNh9/vEbPDgltQ/Vi9UEv3uBfMl0hu0
	2VkCzEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5G-0000000B8MD-0cDd;
	Mon, 05 Jan 2026 10:45:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5C-0000000B8Km-331f
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 10:45:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0000O3-ST; Mon, 05 Jan 2026 11:45:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0099TW-23;
	Mon, 05 Jan 2026 11:45:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-00000007IHq-2JJA;
	Mon, 05 Jan 2026 11:45:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 11:45:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-riotboard-v1-4-789b844d7e36@pengutronix.de>
References: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
In-Reply-To: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767609903; l=2785;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=poNt1kPim59qTV2l7ePp3D6tHhrwrtGv2LerLrXJZ0s=;
 b=xAIDWXKRoi3r1ZyDPzRNbeN/fCwnDU49tOUWBGh7f0X4MCCNuBFqjzhLD5VdDLvSVYKfDPfSy
 805Slux5ednD4TJjmGQ6QAB6VDosALlvPQuTQYEsPUj5Th9OYeQKdPP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_024506_779523_12929180 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: boards: remove #define DEBUG in board files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DEBUG should be defined on demand when actually debugging, not by
default. Remove these in the board files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/duckbill/lowlevel.c            | 1 -
 arch/arm/boards/element14-warp7/lowlevel.c     | 1 -
 arch/arm/boards/freescale-mx28-evk/lowlevel.c  | 1 -
 arch/arm/boards/karo-tx28/lowlevel.c           | 1 -
 arch/arm/boards/phytec-phycore-imx7/lowlevel.c | 1 -
 5 files changed, 5 deletions(-)

diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 71862ec4b71dc4d7ee99a3e01d776a5c74794d1e..e94c58308580e945332637f8bd32bde6811b59b9 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #define pr_fmt(fmt) "I2SE Duckbill: " fmt
-#define DEBUG
 
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index c6ddfea5a4dd51b4b3be819209b667a0141fe298..3d5e24967b2f4a996b365533943d385af2124f26 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#define DEBUG
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 42ac33fbbd9b8709f6031dc0dafaeff74fd8af3c..53a7b7582b6d4b39737d49f688b9c2c18374dc6f 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #define pr_fmt(fmt) "Freescale MX28evk: " fmt
-#define DEBUG
 
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index e423d5ecab9252db007d9e1d781a7f5db8b2a24d..25e72f2cf70168306057298a1848b022903e29fc 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #define pr_fmt(fmt) "KARO TX28: " fmt
-#define DEBUG
 
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
index 1f3c08ac62bd90c9bdec2f53ae587282e2b16cd0..79128b964cf41e1a157050ec8ae1c53037c3ad29 100644
--- a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#define DEBUG
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>

-- 
2.47.3



