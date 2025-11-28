Delivery-date: Fri, 28 Nov 2025 12:00:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDj-005lCb-0L
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 12:00:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDh-0002BC-4r
	for lore@pengutronix.de; Fri, 28 Nov 2025 12:00:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qq0ddCMrAybGxgXJlnAN5n9FARY2+X5n2dWfF0kl+vE=; b=PiUqSadpTV17laGXEfcIbnBmg6
	aTtFFu+uK5iKPEUcvBNCqU3IM+J/XaJDfFrfynBYisTWnB2QjNob8jIxv7kUOl4KQucsjIU+yosvV
	hgr+hIdmFVipz0eFSDA1ZXNlGZ4b/xSkiVc30PCcuELDGQsng+55Lm9b6JMajA6uE72yjOcG51FNY
	02vgJkLE6M6WE2aL8iMJFYhXiD3V2TYplhw+OXM/M1uXdbeCz0iaYDetzbGlpRiU8XAiGM1HDpyRJ
	0APcFCfxjLLRlyOtUxVp66Yk4lU3wqnl2hFR1KcAugDojx6lir+ctJDyESYvF0sxygpqLEWsmjSj7
	vt+TP81A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwD2-00000000KVo-2gOB;
	Fri, 28 Nov 2025 11:00:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCw-00000000KSP-48Tf
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:00:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0001iW-KF
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 12:00:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-002wNr-1N
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0000000EOeF-1Jyl
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:58:43 +0100
Message-ID: <20251128110005.3336591-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
References: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_030011_335663_657A39EF 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ppc: drop <config.h> usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Generating per-board config.h headers is a left-over from times long
past. For most boards it's no longer possible anyway due to multi-image
suppot, but for legacy boards that still use it, let's switch away from
this magic in preparation for removal.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/powerpc/boards/freescale-p1010rdb/ddr.c  |  1 +
 arch/powerpc/boards/freescale-p1010rdb/law.c  |  1 +
 .../boards/freescale-p1010rdb/p1010rdb.c      |  1 +
 arch/powerpc/boards/freescale-p1010rdb/tlb.c  |  1 +
 arch/powerpc/boards/freescale-p1022ds/ddr.c   |  1 +
 .../boards/freescale-p1022ds/ics307_clk.c     |  1 +
 arch/powerpc/boards/freescale-p1022ds/law.c   |  1 +
 .../boards/freescale-p1022ds/p1022ds.c        |  1 +
 arch/powerpc/boards/freescale-p1022ds/tlb.c   |  1 +
 arch/powerpc/boards/freescale-p2020rdb/law.c  |  1 +
 .../boards/freescale-p2020rdb/p2020rdb.c      |  1 +
 arch/powerpc/boards/freescale-p2020rdb/tlb.c  |  1 +
 arch/powerpc/boards/owc-da923rc/da923rc.c     |  1 +
 arch/powerpc/boards/owc-da923rc/ddr.c         |  1 +
 arch/powerpc/boards/owc-da923rc/tlb.c         |  1 +
 arch/powerpc/boards/pcm030/config.h           | 30 -------------------
 arch/powerpc/boards/pcm030/pcm030.c           |  1 +
 arch/powerpc/cpu-85xx/start.S                 |  1 -
 arch/powerpc/ddr-8xxx/ddr_setctrl.c           |  2 +-
 arch/powerpc/ddr-8xxx/lc_common_dimm_params.c |  2 +-
 arch/powerpc/ddr-8xxx/main.c                  |  2 +-
 .../config.h => include/asm/board-da923rc.h}  | 25 +++++-----------
 .../config.h => include/asm/board-p1010rdb.h} | 23 +++++---------
 .../config.h => include/asm/board-p1022ds.h}  | 23 +++++---------
 .../config.h => include/asm/board-p2020rdb.h} | 28 +++++------------
 arch/powerpc/include/asm/board-pcm030.h       | 17 +++++++++++
 arch/powerpc/include/asm/config.h             | 12 ++++++++
 arch/powerpc/include/asm/fsl_ifc.h            |  2 +-
 arch/powerpc/include/asm/fsl_lbc.h            |  2 +-
 arch/powerpc/include/asm/status_led.h         |  2 ++
 arch/powerpc/lib/ticks.S                      |  2 +-
 arch/powerpc/mach-mpc5xxx/reginfo.c           |  2 +-
 arch/powerpc/mach-mpc5xxx/speed.c             |  1 +
 arch/powerpc/mach-mpc5xxx/start.S             |  2 +-
 arch/powerpc/mach-mpc85xx/cpu.c               |  2 +-
 arch/powerpc/mach-mpc85xx/cpu_init.c          |  1 +
 arch/powerpc/mach-mpc85xx/cpuid.c             |  2 +-
 arch/powerpc/mach-mpc85xx/speed.c             |  1 +
 drivers/mtd/nor/cfi_flash.c                   | 18 ++++++-----
 drivers/net/gianfar.c                         |  2 +-
 drivers/net/gianfar.h                         |  2 +-
 drivers/serial/serial_mpc5xxx.c               |  1 +
 42 files changed, 102 insertions(+), 121 deletions(-)
 delete mode 100644 arch/powerpc/boards/pcm030/config.h
 rename arch/powerpc/{boards/owc-da923rc/config.h => include/asm/board-da923rc.h} (56%)
 rename arch/powerpc/{boards/freescale-p1010rdb/config.h => include/asm/board-p1010rdb.h} (64%)
 rename arch/powerpc/{boards/freescale-p1022ds/config.h => include/asm/board-p1022ds.h} (62%)
 rename arch/powerpc/{boards/freescale-p2020rdb/config.h => include/asm/board-p2020rdb.h} (69%)
 create mode 100644 arch/powerpc/include/asm/board-pcm030.h

diff --git a/arch/powerpc/boards/freescale-p1010rdb/ddr.c b/arch/powerpc/boards/freescale-p1010rdb/ddr.c
index 14fa426726e9..59a4c9027ff0 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/ddr.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/ddr.c
@@ -11,6 +11,7 @@
 #include <mach/fsl_i2c.h>
 #include <mach/immap_85xx.h>
 #include <mach/clock.h>
+#include <asm/config.h>
 #include <asm/io.h>
 #include <asm/processor.h>
 #include <asm/fsl_lbc.h>
diff --git a/arch/powerpc/boards/freescale-p1010rdb/law.c b/arch/powerpc/boards/freescale-p1010rdb/law.c
index 6edfbc2fb8b1..b74e255a6049 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/law.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/law.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <asm/fsl_law.h>
 
 struct law_entry law_table[] = {
diff --git a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
index 023fb32bf3b1..3fe29edfd3ab 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
@@ -24,6 +24,7 @@
 #include <gpio.h>
 #include <envfs.h>
 #include <memory.h>
+#include <asm/config.h>
 #include <asm/cache.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/fsl_law.h>
diff --git a/arch/powerpc/boards/freescale-p1010rdb/tlb.c b/arch/powerpc/boards/freescale-p1010rdb/tlb.c
index 23ef0f2ade50..5c2262dd4a6c 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/tlb.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/tlb.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/mmu.h>
 
 struct fsl_e_tlb_entry tlb_table[] = {
diff --git a/arch/powerpc/boards/freescale-p1022ds/ddr.c b/arch/powerpc/boards/freescale-p1022ds/ddr.c
index 3a8298f9287c..e8efcee4b328 100644
--- a/arch/powerpc/boards/freescale-p1022ds/ddr.c
+++ b/arch/powerpc/boards/freescale-p1022ds/ddr.c
@@ -11,6 +11,7 @@
 #include <mach/fsl_i2c.h>
 #include <mach/immap_85xx.h>
 #include <mach/clock.h>
+#include <asm/config.h>
 #include <asm/io.h>
 #include <asm/fsl_lbc.h>
 #include <asm/fsl_ddr_sdram.h>
diff --git a/arch/powerpc/boards/freescale-p1022ds/ics307_clk.c b/arch/powerpc/boards/freescale-p1022ds/ics307_clk.c
index f7c5bbde9907..14fdf4be0faa 100644
--- a/arch/powerpc/boards/freescale-p1022ds/ics307_clk.c
+++ b/arch/powerpc/boards/freescale-p1022ds/ics307_clk.c
@@ -5,6 +5,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <asm/io.h>
 
 /* decode S[0-2] to Output Divider (OD) */
diff --git a/arch/powerpc/boards/freescale-p1022ds/law.c b/arch/powerpc/boards/freescale-p1022ds/law.c
index 79cc20dd6e52..339b7f59ad01 100644
--- a/arch/powerpc/boards/freescale-p1022ds/law.c
+++ b/arch/powerpc/boards/freescale-p1022ds/law.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <asm/fsl_law.h>
 
 struct law_entry law_table[] = {
diff --git a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
index e3591454f831..1b89d9dd3e3b 100644
--- a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
@@ -23,6 +23,7 @@
 #include <i2c/i2c.h>
 #include <memory.h>
 #include <envfs.h>
+#include <asm/config.h>
 #include <asm/cache.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/fsl_law.h>
diff --git a/arch/powerpc/boards/freescale-p1022ds/tlb.c b/arch/powerpc/boards/freescale-p1022ds/tlb.c
index 86ab43aec0e4..d2b5b8109e04 100644
--- a/arch/powerpc/boards/freescale-p1022ds/tlb.c
+++ b/arch/powerpc/boards/freescale-p1022ds/tlb.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/mmu.h>
 
 struct fsl_e_tlb_entry tlb_table[] = {
diff --git a/arch/powerpc/boards/freescale-p2020rdb/law.c b/arch/powerpc/boards/freescale-p2020rdb/law.c
index e76b9cb0f599..a6b581432ff2 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/law.c
+++ b/arch/powerpc/boards/freescale-p2020rdb/law.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <asm/fsl_law.h>
 #include <asm/mmu.h>
 
diff --git a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
index ba4f58be10e7..c960703093c4 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
@@ -22,6 +22,7 @@
 #include <i2c/i2c.h>
 #include <memory.h>
 #include <envfs.h>
+#include <asm/config.h>
 #include <asm/cache.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/fsl_law.h>
diff --git a/arch/powerpc/boards/freescale-p2020rdb/tlb.c b/arch/powerpc/boards/freescale-p2020rdb/tlb.c
index e5b1789b28ca..b117d07f5529 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/tlb.c
+++ b/arch/powerpc/boards/freescale-p2020rdb/tlb.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/mmu.h>
 
 struct fsl_e_tlb_entry tlb_table[] = {
diff --git a/arch/powerpc/boards/owc-da923rc/da923rc.c b/arch/powerpc/boards/owc-da923rc/da923rc.c
index baede439b15b..ad95db8576d6 100644
--- a/arch/powerpc/boards/owc-da923rc/da923rc.c
+++ b/arch/powerpc/boards/owc-da923rc/da923rc.c
@@ -27,6 +27,7 @@
 #include <platform_data/serial-ns16550.h>
 #include <environment.h>
 #include <i2c/i2c.h>
+#include <asm/config.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/cache.h>
 #include <mach/mmu.h>
diff --git a/arch/powerpc/boards/owc-da923rc/ddr.c b/arch/powerpc/boards/owc-da923rc/ddr.c
index fc0c50cdcd31..b2512d249dd5 100644
--- a/arch/powerpc/boards/owc-da923rc/ddr.c
+++ b/arch/powerpc/boards/owc-da923rc/ddr.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/fsl_i2c.h>
 #include <mach/immap_85xx.h>
 #include <mach/clock.h>
diff --git a/arch/powerpc/boards/owc-da923rc/tlb.c b/arch/powerpc/boards/owc-da923rc/tlb.c
index 889e2743b7d5..1937d5560081 100644
--- a/arch/powerpc/boards/owc-da923rc/tlb.c
+++ b/arch/powerpc/boards/owc-da923rc/tlb.c
@@ -13,6 +13,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/mmu.h>
 
 struct fsl_e_tlb_entry tlb_table[] = {
diff --git a/arch/powerpc/boards/pcm030/config.h b/arch/powerpc/boards/pcm030/config.h
deleted file mode 100644
index 24cf9dc4ff42..000000000000
--- a/arch/powerpc/boards/pcm030/config.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/*
- * (C) Copyright 2003-2005
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * (C) Copyright 2006
- * Eric Schumann, Phytec Messatechnik GmbH
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#include <mach/mpc5xxx.h>
-
-#define CFG_MPC5XXX_CLKIN	33333000 /* ... running at 33.333MHz */
-
-#define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
-#define CFG_HID0_FINAL		HID0_ICE
-
-#endif /* __CONFIG_H */
diff --git a/arch/powerpc/boards/pcm030/pcm030.c b/arch/powerpc/boards/pcm030/pcm030.c
index 8da683898fa0..80b2a23de4d8 100644
--- a/arch/powerpc/boards/pcm030/pcm030.c
+++ b/arch/powerpc/boards/pcm030/pcm030.c
@@ -29,6 +29,7 @@
 #include <envfs.h>
 #include <linux/sizes.h>
 #include <linux/stat.h>
+#include <asm/config.h>
 #include <asm/io.h>
 #include <fs.h>
 #include <i2c/i2c.h>
diff --git a/arch/powerpc/cpu-85xx/start.S b/arch/powerpc/cpu-85xx/start.S
index 82c2c0ad8c0c..217c42f99fd5 100644
--- a/arch/powerpc/cpu-85xx/start.S
+++ b/arch/powerpc/cpu-85xx/start.S
@@ -12,7 +12,6 @@
  * last 4K page(0xfffff000-0xffffffff) in flash/rom.
  */
 
-#include <config.h>
 #include <asm/config.h>
 
 #include <asm/processor.h>
diff --git a/arch/powerpc/ddr-8xxx/ddr_setctrl.c b/arch/powerpc/ddr-8xxx/ddr_setctrl.c
index 115fb4207009..ee54042b1730 100644
--- a/arch/powerpc/ddr-8xxx/ddr_setctrl.c
+++ b/arch/powerpc/ddr-8xxx/ddr_setctrl.c
@@ -7,7 +7,7 @@
  */
 
 #include <common.h>
-#include <config.h>
+#include <asm/config.h>
 #include <asm/io.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/processor.h>
diff --git a/arch/powerpc/ddr-8xxx/lc_common_dimm_params.c b/arch/powerpc/ddr-8xxx/lc_common_dimm_params.c
index 9d90fb76dbdf..c6dfaad157b5 100644
--- a/arch/powerpc/ddr-8xxx/lc_common_dimm_params.c
+++ b/arch/powerpc/ddr-8xxx/lc_common_dimm_params.c
@@ -7,7 +7,7 @@
  */
 
 #include <common.h>
-#include <config.h>
+#include <asm/config.h>
 #include <asm/fsl_ddr_sdram.h>
 
 #include "ddr.h"
diff --git a/arch/powerpc/ddr-8xxx/main.c b/arch/powerpc/ddr-8xxx/main.c
index 99b877b5cadd..f361aa6942ac 100644
--- a/arch/powerpc/ddr-8xxx/main.c
+++ b/arch/powerpc/ddr-8xxx/main.c
@@ -13,7 +13,7 @@
  */
 
 #include <common.h>
-#include <config.h>
+#include <asm/config.h>
 #include <asm/fsl_law.h>
 #include <asm/fsl_ddr_sdram.h>
 #include "ddr.h"
diff --git a/arch/powerpc/boards/owc-da923rc/config.h b/arch/powerpc/include/asm/board-da923rc.h
similarity index 56%
rename from arch/powerpc/boards/owc-da923rc/config.h
rename to arch/powerpc/include/asm/board-da923rc.h
index 3895324e9553..adea98a42a24 100644
--- a/arch/powerpc/boards/owc-da923rc/config.h
+++ b/arch/powerpc/include/asm/board-da923rc.h
@@ -1,21 +1,10 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * DA923RC board configuration file.
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2013 GE Intelligent Platforms, Inc.
 
-#ifndef __CONFIG_H
-#define __CONFIG_H
+/* Don't include directly, include <asm/config.h> instead.  */
+
+#ifndef __BOARD_DA923RC_H
+#define __BOARD_DA923RC_H
 
 #define CFG_SYS_CLK_FREQ	66666666
 
@@ -50,4 +39,4 @@
 #define BOARD_TYPE_DA923	1
 #define BOARD_TYPE_GBX460	2
 
-#endif /* __CONFIG_H */
+#endif /* __BOARD_DA923RC_H */
diff --git a/arch/powerpc/boards/freescale-p1010rdb/config.h b/arch/powerpc/include/asm/board-p1010rdb.h
similarity index 64%
rename from arch/powerpc/boards/freescale-p1010rdb/config.h
rename to arch/powerpc/include/asm/board-p1010rdb.h
index 4f671835072d..d58c78bb6bb4 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/config.h
+++ b/arch/powerpc/include/asm/board-p1010rdb.h
@@ -1,19 +1,10 @@
-/*
- * Copyright 2009-2011 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2009-2011 Freescale Semiconductor, Inc.
 
-#ifndef __CONFIG_H
-#define __CONFIG_H
+/* Don't include directly, include <asm/config.h> instead.  */
+
+#ifndef __BOARD_P1010RDB_H
+#define __BOARD_P1010RDB_H
 
 #define CFG_SYS_CLK_FREQ	66666666
 #define CFG_DDR_CLK_FREQ	66666666
@@ -55,4 +46,4 @@
 #define CFG_IFC_CSOR0	CSOR_NOR_ADM_SHIFT(7)
 #define CFG_IFC_AMASK0	IFC_AMASK(32*1024*1024)
 
-#endif /* __CONFIG_H */
+#endif /* __BOARD_P1010RDB_H */
diff --git a/arch/powerpc/boards/freescale-p1022ds/config.h b/arch/powerpc/include/asm/board-p1022ds.h
similarity index 62%
rename from arch/powerpc/boards/freescale-p1022ds/config.h
rename to arch/powerpc/include/asm/board-p1022ds.h
index 666b9ff987ec..c0798c7c489a 100644
--- a/arch/powerpc/boards/freescale-p1022ds/config.h
+++ b/arch/powerpc/include/asm/board-p1022ds.h
@@ -1,19 +1,10 @@
-/*
- * Copyright 2009-2011 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2009-2011 Freescale Semiconductor, Inc.
 
-#ifndef __CONFIG_H
-#define __CONFIG_H
+/* Don't include directly, include <asm/config.h> instead.  */
+
+#ifndef __BOARD_P1022DS_H
+#define __BOARD_P1022DS_H
 
 #ifndef __ASSEMBLY__
 extern unsigned long ics307_clk_freq(unsigned int reg);
@@ -52,4 +43,4 @@ extern unsigned long ics307_clk_freq(unsigned int reg);
 #define CFG_PIXIS_BASE		0xffdf0000
 #define CFG_PIXIS_BASE_PHYS	CFG_PIXIS_BASE
 
-#endif /* __CONFIG_H */
+#endif /* __BOARD_P1022DS_H */
diff --git a/arch/powerpc/boards/freescale-p2020rdb/config.h b/arch/powerpc/include/asm/board-p2020rdb.h
similarity index 69%
rename from arch/powerpc/boards/freescale-p2020rdb/config.h
rename to arch/powerpc/include/asm/board-p2020rdb.h
index 0d3e095016a1..c4ad592ff8be 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/config.h
+++ b/arch/powerpc/include/asm/board-p2020rdb.h
@@ -1,25 +1,11 @@
-/*
- * Copyright 2012 GE Intelligent Platforms, Inc.
- * Copyright 2009-2011 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
- * GNU General Public License for more details.
- *
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2012 GE Intelligent Platforms, Inc.
+// SPDX-FileCopyrightText: 2009-2011 Freescale Semiconductor, Inc.
 
-/*
- * P2020RDB board configuration file
- */
+/* Don't include directly, include <asm/config.h> instead.  */
 
-#ifndef __CONFIG_H
-#define __CONFIG_H
+#ifndef __BOARD_P2020RDB_H
+#define __BOARD_P2020RDB_H
 
 #ifndef __ASSEMBLY__
 extern unsigned long get_board_sys_clk(unsigned long dummy);
@@ -82,4 +68,4 @@ extern unsigned long get_board_sys_clk(unsigned long dummy);
 /* Leave 256 bytes for global data */
 #define CFG_INIT_SP_OFFSET	(0x00004000 - 256)
 
-#endif	/* __CONFIG_H */
+#endif	/* __BOARD_P2020RDB_H */
diff --git a/arch/powerpc/include/asm/board-pcm030.h b/arch/powerpc/include/asm/board-pcm030.h
new file mode 100644
index 000000000000..bd7f2766265b
--- /dev/null
+++ b/arch/powerpc/include/asm/board-pcm030.h
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2003-2005 Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+// SPDX-FileCopyrightText: 2006 Eric Schumann, Phytec Messatechnik GmbH
+
+/* Don't include directly, include <asm/config.h> instead.  */
+
+#ifndef __BOARD_PCM030_H
+#define __BOARD_PCM030_H
+
+#include <mach/mpc5xxx.h>
+
+#define CFG_MPC5XXX_CLKIN	33333000 /* ... running at 33.333MHz */
+
+#define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
+#define CFG_HID0_FINAL		HID0_ICE
+
+#endif /* __BOARD_PCM030_H */
diff --git a/arch/powerpc/include/asm/config.h b/arch/powerpc/include/asm/config.h
index ce6581a83f60..727daa872f20 100644
--- a/arch/powerpc/include/asm/config.h
+++ b/arch/powerpc/include/asm/config.h
@@ -37,4 +37,16 @@
 #endif
 #endif
 
+#ifdef CONFIG_MACH_PHYCORE_MPC5200B_TINY
+#include <asm/board-pcm030.h>
+#elif defined(CONFIG_P1010RDB)
+#include <asm/board-p1010rdb.h>
+#elif defined(CONFIG_P2020RDB)
+#include <asm/board-p2020rdb.h>
+#elif defined(CONFIG_P1022DS)
+#include <asm/board-p1022ds.h>
+#elif defined(CONFIG_DA923RC)
+#include <asm/board-da923rc.h>
+#endif
+
 #endif /* _ASM_CONFIG_H_ */
diff --git a/arch/powerpc/include/asm/fsl_ifc.h b/arch/powerpc/include/asm/fsl_ifc.h
index 8faff7503343..459138fd6a10 100644
--- a/arch/powerpc/include/asm/fsl_ifc.h
+++ b/arch/powerpc/include/asm/fsl_ifc.h
@@ -8,7 +8,7 @@
 #ifndef __FSL_IFC_H
 #define __FSL_IFC_H
 
-#include <config.h>
+#include <asm/config.h>
 #include <common.h>
 
 /* Big-Endian */
diff --git a/arch/powerpc/include/asm/fsl_lbc.h b/arch/powerpc/include/asm/fsl_lbc.h
index cde0864378c8..4e94ff6953bf 100644
--- a/arch/powerpc/include/asm/fsl_lbc.h
+++ b/arch/powerpc/include/asm/fsl_lbc.h
@@ -11,7 +11,7 @@
 #ifndef __ASM_PPC_FSL_LBC_H
 #define __ASM_PPC_FSL_LBC_H
 
-#include <config.h>
+#include <asm/config.h>
 #include <common.h>
 
 /*
diff --git a/arch/powerpc/include/asm/status_led.h b/arch/powerpc/include/asm/status_led.h
index 129aa6614ab6..a51b6b34ea65 100644
--- a/arch/powerpc/include/asm/status_led.h
+++ b/arch/powerpc/include/asm/status_led.h
@@ -9,6 +9,8 @@
 #ifndef __ASM_STATUS_LED_H__
 #define __ASM_STATUS_LED_H__
 
+#include <asm/config.h>
+
 /* if not overriden */
 #ifndef CONFIG_BOARD_SPECIFIC_LED
 # if defined(CONFIG_8xx)
diff --git a/arch/powerpc/lib/ticks.S b/arch/powerpc/lib/ticks.S
index e923f17b6328..cea184474ecc 100644
--- a/arch/powerpc/lib/ticks.S
+++ b/arch/powerpc/lib/ticks.S
@@ -18,7 +18,7 @@
 
 #include <asm/ppc_asm.tmpl>
 #include <asm/ppc_defs.h>
-#include <config.h>
+#include <asm/config.h>
 
 /*
  * unsigned long long get_ticks(void);
diff --git a/arch/powerpc/mach-mpc5xxx/reginfo.c b/arch/powerpc/mach-mpc5xxx/reginfo.c
index dd33a82601ac..086ae6f0d1a9 100644
--- a/arch/powerpc/mach-mpc5xxx/reginfo.c
+++ b/arch/powerpc/mach-mpc5xxx/reginfo.c
@@ -2,7 +2,7 @@
 
 #include <stdio.h>
 #include <common.h>
-#include <config.h>
+#include <asm/config.h>
 #include <mach/mpc5xxx.h>
 #include <command.h>
 #include <complete.h>
diff --git a/arch/powerpc/mach-mpc5xxx/speed.c b/arch/powerpc/mach-mpc5xxx/speed.c
index 760d923bcf60..8d304e995d22 100644
--- a/arch/powerpc/mach-mpc5xxx/speed.c
+++ b/arch/powerpc/mach-mpc5xxx/speed.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/mpc5xxx.h>
 #include <init.h>
 #include <asm/processor.h>
diff --git a/arch/powerpc/mach-mpc5xxx/start.S b/arch/powerpc/mach-mpc5xxx/start.S
index 31648a652947..aaa19d6be807 100644
--- a/arch/powerpc/mach-mpc5xxx/start.S
+++ b/arch/powerpc/mach-mpc5xxx/start.S
@@ -18,7 +18,7 @@
 /*
  *  barebox - Startup Code for MPC5xxx CPUs
  */
-#include <config.h>
+#include <asm/config.h>
 
 #include <asm/ppc_asm.tmpl>
 #include <asm/ppc_defs.h>
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index 23da0eac4c39..e8ed7fc01901 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -19,7 +19,7 @@
  *
  */
 
-#include <config.h>
+#include <asm/config.h>
 #include <common.h>
 #include <memory.h>
 #include <init.h>
diff --git a/arch/powerpc/mach-mpc85xx/cpu_init.c b/arch/powerpc/mach-mpc85xx/cpu_init.c
index 3259945fda64..c5ae2b62d131 100644
--- a/arch/powerpc/mach-mpc85xx/cpu_init.c
+++ b/arch/powerpc/mach-mpc85xx/cpu_init.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <asm/config.h>
 #include <asm/processor.h>
 #include <asm/cache.h>
 #include <asm/fsl_law.h>
diff --git a/arch/powerpc/mach-mpc85xx/cpuid.c b/arch/powerpc/mach-mpc85xx/cpuid.c
index 28f08ca29247..7871369345c3 100644
--- a/arch/powerpc/mach-mpc85xx/cpuid.c
+++ b/arch/powerpc/mach-mpc85xx/cpuid.c
@@ -17,7 +17,7 @@
  *
  */
 
-#include <config.h>
+#include <asm/config.h>
 #include <common.h>
 #include <command.h>
 #include <asm/cache.h>
diff --git a/arch/powerpc/mach-mpc85xx/speed.c b/arch/powerpc/mach-mpc85xx/speed.c
index 16ce72d84678..4a69de3dc81a 100644
--- a/arch/powerpc/mach-mpc85xx/speed.c
+++ b/arch/powerpc/mach-mpc85xx/speed.c
@@ -22,6 +22,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <asm/processor.h>
 #include <mach/clock.h>
 #include <mach/immap_85xx.h>
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index b68c36841031..7a7767ff86a4 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -30,6 +30,17 @@
 #include <linux/mtd/concat.h>
 #include "cfi_flash.h"
 
+#ifdef CONFIG_PPC
+#include <asm/config.h>
+#endif
+
+/*
+ * Check if chip width is defined. If not, start detecting with 8bit.
+ */
+#ifndef CFG_FLASH_CFI_WIDTH
+#define CFG_FLASH_CFI_WIDTH	FLASH_CFI_8BIT
+#endif
+
 /*
  * This file implements a Common Flash Interface (CFI) driver for barebox.
  * The width of the port and the width of the chips are determined at initialization.
@@ -50,13 +61,6 @@ static unsigned int flash_offset_cfi[2] = {
 	FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT
 };
 
-/*
- * Check if chip width is defined. If not, start detecting with 8bit.
- */
-#ifndef CFG_FLASH_CFI_WIDTH
-#define CFG_FLASH_CFI_WIDTH	FLASH_CFI_8BIT
-#endif
-
 struct cfi_priv {
 	struct flash_info *infos;
 	int num_devs;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 35cd6e7f0a6e..18b3c8849c6e 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -8,7 +8,7 @@
  * based on work by Andy Fleming
  */
 
-#include <config.h>
+#include <asm/config.h>
 #include <common.h>
 #include <malloc.h>
 #include <net.h>
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index 8a60c7f38eca..8ccbbe14738b 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -14,7 +14,7 @@
 #define __GIANFAR_H
 
 #include <net.h>
-#include <config.h>
+#include <asm/config.h>
 #include <mach/gianfar.h>
 
 #define MAC_ADDR_LEN 6
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 4408de9e910a..921693188cdf 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -17,6 +17,7 @@
  */
 
 #include <common.h>
+#include <asm/config.h>
 #include <mach/mpc5xxx.h>
 #include <driver.h>
 #include <init.h>
-- 
2.47.3



