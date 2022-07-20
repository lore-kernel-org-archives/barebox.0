Delivery-date: Wed, 20 Jul 2022 07:52:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dS-00FGcc-8F
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 07:52:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dQ-0008A5-4J
	for lore@pengutronix.de; Wed, 20 Jul 2022 07:52:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v3ElyOMfgY157dD2j/yXxZOZA2+f6BFuKSfDM4IZz78=; b=jbSkEMdX/mePKdl75UKI2zh6ts
	RBrpdOp8sEI2v91VWD9NZVHWTnKWmsBX56Yyya8xm+LRvXSeb9mnUMq8py/pjnvh0KK0+tilcW6pQ
	v9HzClJM8tV+LGSmhMG1rdUVp6dBM9misIE19B/UuFcSjZcECwXMGrlBC3O2LLbecw9pFHmg1syEZ
	NrBB0ltg4rfSqxIQAjw/C5tYB+G3awW8JBE48dd9lpwfW5+WeMkErGA9yhX5vwYm/cJxQuFnF/XFs
	9uIRTwNNHrHTEi9UUnHvoc8DRGZJfBGGidcgzAc2OPaPsOEZsz76LHk7reMoOM16DX9HAYVI9KGaK
	y+pnxgLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bs-000jOB-2P; Wed, 20 Jul 2022 05:51:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bk-000jKY-SZ
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 05:50:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bg-0007nj-0U; Wed, 20 Jul 2022 07:50:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bc-0023UG-2m; Wed, 20 Jul 2022 07:50:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bb-00EjCW-F5; Wed, 20 Jul 2022 07:50:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: michael.riesch@wolfvision.net,
	j.zink@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Jul 2022 07:50:42 +0200
Message-Id: <20220720055042.3510276-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
References: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_225052_946187_E196AE2E 
X-CRM114-Status: GOOD (  22.08  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH 3/3] ARM: dts: rk356x: align bootsource_instance numbering and MMC DT aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A common scripting pattern in barebox is continuing boot from
the current bootsource:

  if [ "$bootsource" = "mmc" ]; then
	global.boot.default="mmc${bootsource_instance} ${global.boot.default}"
  fi

This fails on the RK356x boards, because of a mismatch in numbering:
block device numbering is dictated by the mmc* DT aliases and numbering
used for bootsource_instance is taken as is from what the bootrom reports.

On SoCs like i.MX, this is a much rarer issue, because the upstream DT
has predefined aliases in the same order as reported by the bootrom.

In Rockchip DTs on the other hand, aliases are delegated to the board
device trees and all boards we support have aliases in an order
different from what the bootrom numbering.

Fix this by employing the newly supported barebox,bootsource-* mapping
table. As a result $bootsource_instance will change. We fix the upstream
code depending on specific numbering here, but custom scripts and board
code may still be broken.

Co-developed-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/radxa-rock3/board.c               | 2 +-
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c | 2 +-
 arch/arm/boards/rockchip-rk3568-evb/board.c       | 2 +-
 arch/arm/dts/rk3566-quartz64-a.dts                | 1 +
 arch/arm/dts/rk3568-bpi-r2-pro.dts                | 1 +
 arch/arm/dts/rk3568-evb1-v10.dts                  | 1 +
 arch/arm/dts/rk3568-rock-3a.dts                   | 1 +
 arch/arm/dts/rk356x.dtsi                          | 9 +++++++++
 arch/arm/mach-rockchip/rk3568.c                   | 8 +++-----
 9 files changed, 19 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/dts/rk356x.dtsi

diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index aef5ec5df669..2413ea6cacc0 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -21,7 +21,7 @@ static int rock3_probe(struct device_d *dev)
 	barebox_set_model(model->name);
 	barebox_set_hostname(model->shortname);
 
-	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+	if (bootsource == BOOTSOURCE_MMC && instance == 0)
 		of_device_enable_path("/chosen/environment-sd");
 	else
 		of_device_enable_path("/chosen/environment-emmc");
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index e472f13c8bbf..1a5faa8afb12 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -23,7 +23,7 @@ static int rk3568_bpi_r2pro_probe(struct device_d *dev)
 	barebox_set_hostname("bpi-r2pro");
 	machine_is_bpi_r2pro = true;
 
-	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+	if (bootsource == BOOTSOURCE_MMC && instance == 0)
 		of_device_enable_path("/chosen/environment-sd");
 	else
 		of_device_enable_path("/chosen/environment-emmc");
diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index a466d385a223..212c801c93d3 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -23,7 +23,7 @@ static int rk3568_evb_probe(struct device_d *dev)
 	barebox_set_hostname("rk3568-evb");
 	machine_is_rk3568_evb = true;
 
-	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+	if (bootsource == BOOTSOURCE_MMC && instance == 0)
 		of_device_enable_path("/chosen/environment-sd");
 	else
 		of_device_enable_path("/chosen/environment-emmc");
diff --git a/arch/arm/dts/rk3566-quartz64-a.dts b/arch/arm/dts/rk3566-quartz64-a.dts
index 8639ca0886f1..0036ef31f13a 100644
--- a/arch/arm/dts/rk3566-quartz64-a.dts
+++ b/arch/arm/dts/rk3566-quartz64-a.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <arm64/rockchip/rk3566-quartz64-a.dts>
+#include "rk356x.dtsi"
 
 / {
 	memory@a00000 {
diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index da76ab64c106..8c13ddd5c103 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3568.dtsi"
+#include "rk356x.dtsi"
 
 / {
 	model = "Bananapi-R2 Pro (RK3568) DDR4 Board";
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index d2c1fc89a8cb..82186ff86ead 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <arm64/rockchip/rk3568-evb1-v10.dts>
+#include "rk356x.dtsi"
 
 / {
 	chosen: chosen {
diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
index 44d4fc9686df..25a0c05737d0 100644
--- a/arch/arm/dts/rk3568-rock-3a.dts
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <arm64/rockchip/rk3568-rock-3a.dts>
+#include "rk356x.dtsi"
 
 / {
 	chosen: chosen {
diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
new file mode 100644
index 000000000000..254450d78fa8
--- /dev/null
+++ b/arch/arm/dts/rk356x.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/ {
+	aliases {
+		barebox,bootsource-mmc0 = &sdhci;
+		barebox,bootsource-mmc1 = &sdmmc0;
+		barebox,bootsource-mmc2 = &sdmmc1;
+	};
+};
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 2d80bad8a658..19dfa9b87151 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -151,18 +151,16 @@ static struct rk_bootsource bootdev_map[] = {
 	[0xa] = { .src = BOOTSOURCE_USB, .instance = 0 },
 };
 
-static enum bootsource rk3568_bootsource(void)
+static void rk3568_bootsource(void)
 {
 	u32 v;
 
 	v = readl(RK3568_IRAM_BASE + 0x10);
 
 	if (v >= ARRAY_SIZE(bootdev_map))
-		return BOOTSOURCE_UNKNOWN;
+		return;
 
-	bootsource_set_raw(bootdev_map[v].src, bootdev_map[v].instance);
-
-	return bootdev_map[v].src;
+	bootsource_set(bootdev_map[v].src, bootdev_map[v].instance);
 }
 
 int rk3568_init(void)
-- 
2.30.2



