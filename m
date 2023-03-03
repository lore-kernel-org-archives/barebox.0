Delivery-date: Fri, 03 Mar 2023 10:24:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1eq-007NdK-DX
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:24:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1eo-0001eS-Nb
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:24:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wlnoggGV3+D4eSkUoxnVXX3McC936tV7QRrdMVFGGwk=; b=Oq2lSt++obC5deS5pYYUyI41oX
	YGjZoG2FDDh4KfQnJBILU4g915T70nEGl01oIKi8iQpN6xzCr5D0ctWtKGZaZ93Zam06FMRX1rVb8
	yVhGB+cpRhz8pz3QqlukihsP2gY3ifIzfrjOD/e+VtvYBtdTL9hCcWpZprWLteQJB68TxZHI1vE4c
	42Qdqn57Y6xxYMJwDiz1nW30znGKQNSVSdonW7zVkdkk36we9n0KmbbwMjLf7tB2E7Wl6mS7Ecg6x
	hbN7JP+2GsmcTghjPraaCR2BFaEdLShqsry/h7JV6c9JfMdcM2PvByJiEsA7PEizeqr8MawoXgmw7
	1hR3YgkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bw-005eUf-NS; Fri, 03 Mar 2023 09:21:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bd-005eK9-Tf
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-00009K-Lx; Fri, 03 Mar 2023 10:21:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-001WhJ-Rb; Fri, 03 Mar 2023 10:21:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bZ-00F2aa-QF; Fri, 03 Mar 2023 10:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:43 +0100
Message-Id: <20230303092131.3063587-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012138_319171_8476896F 
X-CRM114-Status: GOOD (  13.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/50] ARM: Rockchip: Move mach header files to include/mach/rockchip
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
possible as there won't be a single mach anymore.

Move all Rockchip specific header files to include/mach/rockchip/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-rk3288/lowlevel.c              | 6 +++---
 arch/arm/boards/pine64-quartz64/lowlevel.c                | 6 +++---
 arch/arm/boards/radxa-rock/board.c                        | 2 +-
 arch/arm/boards/radxa-rock3/board.c                       | 2 +-
 arch/arm/boards/radxa-rock3/lowlevel.c                    | 6 +++---
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c         | 2 +-
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c      | 6 +++---
 arch/arm/boards/rockchip-rk3568-evb/board.c               | 2 +-
 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c            | 6 +++---
 arch/arm/include/asm/debug_ll.h                           | 2 ++
 arch/arm/mach-rockchip/atf.c                              | 2 +-
 arch/arm/mach-rockchip/bbu.c                              | 4 ++--
 arch/arm/mach-rockchip/rk3188.c                           | 4 ++--
 arch/arm/mach-rockchip/rk3288.c                           | 8 ++++----
 arch/arm/mach-rockchip/rk3568.c                           | 4 ++--
 arch/arm/mach-rockchip/rockchip.c                         | 2 +-
 drivers/clocksource/rk_timer.c                            | 4 ++--
 .../include/mach => include/mach/rockchip}/atf.h          | 0
 .../include/mach => include/mach/rockchip}/bbu.h          | 0
 .../include/mach => include/mach/rockchip}/cru_rk3288.h   | 0
 .../include/mach => include/mach/rockchip}/debug_ll.h     | 8 ++++----
 .../include/mach => include/mach/rockchip}/grf_rk3288.h   | 0
 .../include/mach => include/mach/rockchip}/hardware.h     | 0
 .../include/mach => include/mach/rockchip}/rk3188-regs.h  | 0
 .../include/mach => include/mach/rockchip}/rk3288-regs.h  | 0
 .../include/mach => include/mach/rockchip}/rk3399-regs.h  | 0
 .../include/mach => include/mach/rockchip}/rk3568-regs.h  | 0
 .../include/mach => include/mach/rockchip}/rockchip.h     | 0
 28 files changed, 39 insertions(+), 37 deletions(-)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/atf.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/bbu.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/cru_rk3288.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/debug_ll.h (93%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/grf_rk3288.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/hardware.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3188-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3288-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3399-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3568-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rockchip.h (100%)

diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
index 1a60959562..dc29113c39 100644
--- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -7,9 +7,9 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/rk3288-regs.h>
-#include <mach/grf_rk3288.h>
-#include <mach/hardware.h>
+#include <mach/rockchip/rk3288-regs.h>
+#include <mach/rockchip/grf_rk3288.h>
+#include <mach/rockchip/hardware.h>
 #include <debug_ll.h>
 
 extern char __dtb_rk3288_phycore_som_start[];
diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
index ae1f0cf920..1e63c0e698 100644
--- a/arch/arm/boards/pine64-quartz64/lowlevel.c
+++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
@@ -3,10 +3,10 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3566_quartz64_a_start[];
 
diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index 0ada54a849..1c93d6e522 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -7,7 +7,7 @@
 #include <envfs.h>
 #include <i2c/i2c.h>
 #include <i2c/i2c-gpio.h>
-#include <mach/rk3188-regs.h>
+#include <mach/rockchip/rk3188-regs.h>
 #include <mfd/act8846.h>
 #include <asm/armlinux.h>
 
diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index 235c431ab6..4b4e0613d3 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <deep-probe.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/rockchip/bbu.h>
 
 struct rock3_model {
 	const char *name;
diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index a62f60dff8..a8226749d4 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -3,10 +3,10 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3568_rock_3a_start[];
 
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index c88d7f8b6d..94d1dac2c2 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -4,7 +4,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/rockchip/bbu.h>
 #include <aiodev.h>
 #include <bootsource.h>
 #include <environment.h>
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index 4336d99365..23bacc91d9 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -4,10 +4,10 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3568_bpi_r2_pro_start[];
 
diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index db6275bdad..f404af217b 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -4,7 +4,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/rockchip/bbu.h>
 #include <aiodev.h>
 #include <bootsource.h>
 #include <environment.h>
diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
index 9ab436135c..8720e6d9ae 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
@@ -4,10 +4,10 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/hardware.h>
-#include <mach/atf.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3568_evb1_v10_start[];
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index ea4407b6fa..d3933ae508 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -8,6 +8,8 @@
 #include <debug_ll/pl011.h>
 #elif defined CONFIG_ARCH_IMX
 #include <mach/imx/debug_ll.h>
+#elif defined CONFIG_ARCH_ROCKCHIP
+#include <mach/rockchip/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 0512ff99f4..93025faf68 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -2,7 +2,7 @@
 #include <common.h>
 #include <firmware.h>
 #include <asm/system.h>
-#include <mach/atf.h>
+#include <mach/rockchip/atf.h>
 #include <elf.h>
 #include <asm/atf_common.h>
 
diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index 71bbac27e8..435ef45ccd 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -10,10 +10,10 @@
 #include <linux/stat.h>
 #include <ioctl.h>
 #include <environment.h>
-#include <mach/bbu.h>
+#include <mach/rockchip/bbu.h>
 #include <libfile.h>
 #include <linux/bitfield.h>
-#include <mach/rk3568-regs.h>
+#include <mach/rockchip/rk3568-regs.h>
 
 /* The MaskROM looks for images on these locations: */
 #define IMG_OFFSET_0	(0 * SZ_1K + SZ_32K)
diff --git a/arch/arm/mach-rockchip/rk3188.c b/arch/arm/mach-rockchip/rk3188.c
index 178bf2be1d..f1c20f6e52 100644
--- a/arch/arm/mach-rockchip/rk3188.c
+++ b/arch/arm/mach-rockchip/rk3188.c
@@ -15,8 +15,8 @@
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/rk3188-regs.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rk3188-regs.h>
+#include <mach/rockchip/rockchip.h>
 
 static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-rockchip/rk3288.c b/arch/arm/mach-rockchip/rk3288.c
index f623af6731..3a43e911db 100644
--- a/arch/arm/mach-rockchip/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288.c
@@ -18,10 +18,10 @@
 #include <restart.h>
 #include <reset_source.h>
 #include <bootsource.h>
-#include <mach/rk3288-regs.h>
-#include <mach/cru_rk3288.h>
-#include <mach/hardware.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rk3288-regs.h>
+#include <mach/rockchip/cru_rk3288.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/rockchip.h>
 
 static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 19dfa9b871..39bd4772a6 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -2,8 +2,8 @@
 #include <common.h>
 #include <io.h>
 #include <bootsource.h>
-#include <mach/rk3568-regs.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rk3568-regs.h>
+#include <mach/rockchip/rockchip.h>
 
 #define GRF_BASE		0xfdc60000
 #define GRF_GPIO1B_DS_2		0x218
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 698d23e3a5..0a89ab1841 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <init.h>
-#include <mach/rockchip.h>
+#include <mach/rockchip/rockchip.h>
 
 static int rockchip_init(void)
 {
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index 1d4b764561..af5d48670d 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -11,8 +11,8 @@
 #include <init.h>
 #include <io.h>
 #include <stdio.h>
-#include <mach/hardware.h>
-#include <mach/cru_rk3288.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/cru_rk3288.h>
 #include <common.h>
 
 struct rk_timer {
diff --git a/arch/arm/mach-rockchip/include/mach/atf.h b/include/mach/rockchip/atf.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/atf.h
rename to include/mach/rockchip/atf.h
diff --git a/arch/arm/mach-rockchip/include/mach/bbu.h b/include/mach/rockchip/bbu.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/bbu.h
rename to include/mach/rockchip/bbu.h
diff --git a/arch/arm/mach-rockchip/include/mach/cru_rk3288.h b/include/mach/rockchip/cru_rk3288.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/cru_rk3288.h
rename to include/mach/rockchip/cru_rk3288.h
diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/include/mach/rockchip/debug_ll.h
similarity index 93%
rename from arch/arm/mach-rockchip/include/mach/debug_ll.h
rename to include/mach/rockchip/debug_ll.h
index 91a7ba9020..c7a5b2f7d9 100644
--- a/arch/arm/mach-rockchip/include/mach/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -5,10 +5,10 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/rk3188-regs.h>
-#include <mach/rk3288-regs.h>
-#include <mach/rk3568-regs.h>
-#include <mach/rk3399-regs.h>
+#include <mach/rockchip/rk3188-regs.h>
+#include <mach/rockchip/rk3288-regs.h>
+#include <mach/rockchip/rk3568-regs.h>
+#include <mach/rockchip/rk3399-regs.h>
 
 #ifdef CONFIG_DEBUG_LL
 
diff --git a/arch/arm/mach-rockchip/include/mach/grf_rk3288.h b/include/mach/rockchip/grf_rk3288.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/grf_rk3288.h
rename to include/mach/rockchip/grf_rk3288.h
diff --git a/arch/arm/mach-rockchip/include/mach/hardware.h b/include/mach/rockchip/hardware.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/hardware.h
rename to include/mach/rockchip/hardware.h
diff --git a/arch/arm/mach-rockchip/include/mach/rk3188-regs.h b/include/mach/rockchip/rk3188-regs.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/rk3188-regs.h
rename to include/mach/rockchip/rk3188-regs.h
diff --git a/arch/arm/mach-rockchip/include/mach/rk3288-regs.h b/include/mach/rockchip/rk3288-regs.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/rk3288-regs.h
rename to include/mach/rockchip/rk3288-regs.h
diff --git a/arch/arm/mach-rockchip/include/mach/rk3399-regs.h b/include/mach/rockchip/rk3399-regs.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/rk3399-regs.h
rename to include/mach/rockchip/rk3399-regs.h
diff --git a/arch/arm/mach-rockchip/include/mach/rk3568-regs.h b/include/mach/rockchip/rk3568-regs.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/rk3568-regs.h
rename to include/mach/rockchip/rk3568-regs.h
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/include/mach/rockchip/rockchip.h
similarity index 100%
rename from arch/arm/mach-rockchip/include/mach/rockchip.h
rename to include/mach/rockchip/rockchip.h
-- 
2.30.2



