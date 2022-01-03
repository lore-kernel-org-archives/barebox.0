Delivery-date: Mon, 03 Jan 2022 13:08:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8O-009oA2-Ct
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:08:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8J-0005mJ-Sz
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:08:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVQVq6VTQZJ5CxK22RHExauGBrTo4bNzxkO3F4Pa3V0=; b=DPQmsasiyapK2p
	ocIU0NsGfAhvu5cxZje6EfXlQZHH6KpZW54KcaOmi1W0+acBp6s3BclkB4sNteDYpn0JETd1/7KpV
	VId2Rcr3YrXkiZN2BiiOH4CCFngn5mvHervr6niedBJ4E+KoRL+0VRWlFg5tr2KrSodcpZAS3/9Yr
	HrJv7Mjggh+d6DrnlBqFrTNVbhUWBg1f0i0b0gVyduYYpO32Oz2A29WIaYZJ82oCNaPKgwyBUTS6M
	C+f/nbBAYxbINdXWGlJsvKi7614p0IiNrCvTDyg22146gZOiEpeoSsHaSykVeCEYkNZFc3S+Y5qPl
	Uk9sG2Dkpywe1Ntu+Igg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6l-008yNd-K8; Mon, 03 Jan 2022 12:06:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M64-008xwg-7m
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-00052q-Ix; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GWO-JC; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:37 +0100
Message-Id: <20220103120539.1730644-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040552_668742_90C87609 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/11] arch: add SPDX-License-Identifier to all .S files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Record GPL-2.0-only as license for all files lacking an explicit license
statement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/a9m2410/lowlevel_init.S                    | 4 +---
 arch/arm/boards/a9m2440/lowlevel_init.S                    | 4 +---
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S            | 2 ++
 arch/arm/boards/freescale-mx27-ads/lowlevel_init.S         | 2 ++
 arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S       | 2 ++
 arch/arm/boards/guf-neso/pll_init.S                        | 2 ++
 arch/arm/cpu/cache-armv4.S                                 | 2 ++
 arch/arm/cpu/cache-armv5.S                                 | 2 ++
 arch/arm/cpu/cache-armv6.S                                 | 2 ++
 arch/arm/cpu/cache-armv7.S                                 | 2 ++
 arch/arm/cpu/entry_ll.S                                    | 2 ++
 arch/arm/cpu/entry_ll_64.S                                 | 2 ++
 arch/arm/cpu/exceptions.S                                  | 2 ++
 arch/arm/cpu/hyp.S                                         | 2 ++
 arch/arm/cpu/lowlevel.S                                    | 2 ++
 arch/arm/cpu/lowlevel_64.S                                 | 2 ++
 arch/arm/cpu/setupc.S                                      | 2 ++
 arch/arm/cpu/setupc_64.S                                   | 2 ++
 arch/arm/cpu/sm_as.S                                       | 2 ++
 arch/arm/lib32/runtime-offset.S                            | 2 ++
 arch/arm/lib32/start-kernel-optee.S                        | 2 ++
 arch/arm/lib64/runtime-offset.S                            | 2 ++
 arch/arm/mach-layerscape/lowlevel.S                        | 2 ++
 arch/arm/mach-layerscape/ppa-entry.S                       | 2 ++
 arch/mips/lib/genex.S                                      | 2 ++
 arch/mips/pbl/piggy.gzip.S                                 | 2 ++
 arch/mips/pbl/piggy.lz4.S                                  | 2 ++
 arch/mips/pbl/piggy.lzo.S                                  | 2 ++
 arch/mips/pbl/piggy.shipped.S                              | 2 ++
 arch/mips/pbl/piggy.xzkern.S                               | 2 ++
 arch/openrisc/lib/ashldi3.S                                | 2 ++
 arch/openrisc/lib/lshrdi3.S                                | 2 ++
 arch/openrisc/lib/muldi3.S                                 | 2 ++
 arch/powerpc/cpu-85xx/resetvec.S                           | 2 ++
 arch/powerpc/lib/misc.S                                    | 1 +
 arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S | 2 ++
 arch/sandbox/board/barebox.lds.S                           | 2 ++
 arch/x86/mach-efi/elf_ia32_efi.lds.S                       | 2 ++
 arch/x86/mach-efi/elf_x86_64_efi.lds.S                     | 2 ++
 39 files changed, 75 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index b772b1f7f0c6..4c949b1efacc 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -1,6 +1,4 @@
-/*
- *
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <config.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 2c51e05806f3..585863f9d4d7 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -1,6 +1,4 @@
-/*
- *
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <config.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index b3504832d7e1..13e906eea49a 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <config.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/imx27-regs.h>
diff --git a/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S b/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
index e79b96dd2cfb..bd78ebf9e84c 100644
--- a/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * For clock initialization, see chapter 3 of the "MCIMX27 Multimedia
  * Applications Processor Reference Manual, Rev. 0.2".
diff --git a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
index 43bf49c12ce1..b26efa12b0b8 100644
--- a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
+++ b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Low level initialization for the FriendlyARM mini2440 board
  */
diff --git a/arch/arm/boards/guf-neso/pll_init.S b/arch/arm/boards/guf-neso/pll_init.S
index 4c6cb67fd48a..fe28c457fc6e 100644
--- a/arch/arm/boards/guf-neso/pll_init.S
+++ b/arch/arm/boards/guf-neso/pll_init.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <config.h>
 #include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index db87de17e98b..78a098b2fedf 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <init.h>
 
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index 4267f3e37fc9..bcb7ebf466f9 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <init.h>
 
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index 7a0675199757..cc720314c07b 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <init.h>
 
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 0f6108426c0b..efd9fe412fc9 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <init.h>
 
diff --git a/arch/arm/cpu/entry_ll.S b/arch/arm/cpu/entry_ll.S
index 8cc7a84f1062..2800174c4526 100644
--- a/arch/arm/cpu/entry_ll.S
+++ b/arch/arm/cpu/entry_ll.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/sections.h>
 
diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
index fb8645e0a03f..6530bec5ebe4 100644
--- a/arch/arm/cpu/entry_ll_64.S
+++ b/arch/arm/cpu/entry_ll_64.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/sections.h>
 
diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 55014c8d460f..749c713aab5c 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <config.h>
 #include <linux/linkage.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/cpu/hyp.S b/arch/arm/cpu/hyp.S
index 1314b56eab25..b5e480787770 100644
--- a/arch/arm/cpu/hyp.S
+++ b/arch/arm/cpu/hyp.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/system.h>
 #include <asm/opcodes-virt.h>
diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 203a4afc4723..5a7dd3c2093f 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <init.h>
 #include <asm/system.h>
diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index 6a23132ed140..ed00c8c47057 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <init.h>
 #include <asm/system.h>
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index 55aa105b2160..eafc9b52c6d0 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/sections.h>
 
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index e24acbd0da70..b5f4a643fa42 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/sections.h>
 
diff --git a/arch/arm/cpu/sm_as.S b/arch/arm/cpu/sm_as.S
index de6cd0406f4f..f55ac8661c6c 100644
--- a/arch/arm/cpu/sm_as.S
+++ b/arch/arm/cpu/sm_as.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/ptrace.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/lib32/runtime-offset.S b/arch/arm/lib32/runtime-offset.S
index f86ca7865eb3..ac104de1195c 100644
--- a/arch/arm/lib32/runtime-offset.S
+++ b/arch/arm/lib32/runtime-offset.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
diff --git a/arch/arm/lib32/start-kernel-optee.S b/arch/arm/lib32/start-kernel-optee.S
index 92da4b63c9b8..261ab39ba7a3 100644
--- a/arch/arm/lib32/start-kernel-optee.S
+++ b/arch/arm/lib32/start-kernel-optee.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 
 ENTRY(start_kernel_optee)
diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
index e2ff5d21036d..822e323c142e 100644
--- a/arch/arm/lib64/runtime-offset.S
+++ b/arch/arm/lib64/runtime-offset.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
diff --git a/arch/arm/mach-layerscape/lowlevel.S b/arch/arm/mach-layerscape/lowlevel.S
index adb3e5436727..e8e6410c525a 100644
--- a/arch/arm/mach-layerscape/lowlevel.S
+++ b/arch/arm/mach-layerscape/lowlevel.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 
 .section .text.ls1046a_init_l2_latency
diff --git a/arch/arm/mach-layerscape/ppa-entry.S b/arch/arm/mach-layerscape/ppa-entry.S
index 18cfa6c37ecf..f5f30b671930 100644
--- a/arch/arm/mach-layerscape/ppa-entry.S
+++ b/arch/arm/mach-layerscape/ppa-entry.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/linkage.h>
 
 .section .text.ppa_entry
diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
index 5fb222323133..d75a652e4d6c 100644
--- a/arch/mips/lib/genex.S
+++ b/arch/mips/lib/genex.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm/asm.h>
 #include <asm/regdef.h>
 #include <asm/mipsregs.h>
diff --git a/arch/mips/pbl/piggy.gzip.S b/arch/mips/pbl/piggy.gzip.S
index 1e6bbef66c98..b99ba8aeab6f 100644
--- a/arch/mips/pbl/piggy.gzip.S
+++ b/arch/mips/pbl/piggy.gzip.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm/asm.h>
 
 	.section .data
diff --git a/arch/mips/pbl/piggy.lz4.S b/arch/mips/pbl/piggy.lz4.S
index be9425bf00ac..c3ddbdace01f 100644
--- a/arch/mips/pbl/piggy.lz4.S
+++ b/arch/mips/pbl/piggy.lz4.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm/asm.h>
 
 	.section .data
diff --git a/arch/mips/pbl/piggy.lzo.S b/arch/mips/pbl/piggy.lzo.S
index 6f1af1f314da..2c1f4cb34edc 100644
--- a/arch/mips/pbl/piggy.lzo.S
+++ b/arch/mips/pbl/piggy.lzo.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm/asm.h>
 
 	.section .data
diff --git a/arch/mips/pbl/piggy.shipped.S b/arch/mips/pbl/piggy.shipped.S
index 8a35f6bc052b..fc2859e6739f 100644
--- a/arch/mips/pbl/piggy.shipped.S
+++ b/arch/mips/pbl/piggy.shipped.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm/asm.h>
 
 	.section .data
diff --git a/arch/mips/pbl/piggy.xzkern.S b/arch/mips/pbl/piggy.xzkern.S
index edfa53b86c70..8c99d959f80c 100644
--- a/arch/mips/pbl/piggy.xzkern.S
+++ b/arch/mips/pbl/piggy.xzkern.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm/asm.h>
 
 	.section .data
diff --git a/arch/openrisc/lib/ashldi3.S b/arch/openrisc/lib/ashldi3.S
index 3e422fadc4ff..f6b976bff254 100644
--- a/arch/openrisc/lib/ashldi3.S
+++ b/arch/openrisc/lib/ashldi3.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
  *
diff --git a/arch/openrisc/lib/lshrdi3.S b/arch/openrisc/lib/lshrdi3.S
index de30445f4e0f..99aa73ef51ca 100644
--- a/arch/openrisc/lib/lshrdi3.S
+++ b/arch/openrisc/lib/lshrdi3.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
  *
diff --git a/arch/openrisc/lib/muldi3.S b/arch/openrisc/lib/muldi3.S
index 902338a242b7..70d0eacf1ed6 100644
--- a/arch/openrisc/lib/muldi3.S
+++ b/arch/openrisc/lib/muldi3.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
  *
diff --git a/arch/powerpc/cpu-85xx/resetvec.S b/arch/powerpc/cpu-85xx/resetvec.S
index 29555d4a0092..b21cc0f19d6d 100644
--- a/arch/powerpc/cpu-85xx/resetvec.S
+++ b/arch/powerpc/cpu-85xx/resetvec.S
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 	.section .resetvec,"ax"
 	b _start_e500
diff --git a/arch/powerpc/lib/misc.S b/arch/powerpc/lib/misc.S
index bd06ff2062ca..c45f02ba3af0 100644
--- a/arch/powerpc/lib/misc.S
+++ b/arch/powerpc/lib/misc.S
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <asm/ppc_asm.tmpl>
 #include <asm-generic/errno.h>
diff --git a/arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S b/arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S
index 42d0e3ce0825..17213053d2c4 100644
--- a/arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S
+++ b/arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Copyright (C) 2001, Software Center, Motorola China.
  *
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 7a5a8eb1e7ce..84d085a25911 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/barebox.lds.h>
 
 SECTIONS
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 18ddf1780244..ac89fd89a4d3 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/barebox.lds.h>
 
 OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index ab4a9e815c00..b620ba5b3797 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/barebox.lds.h>
 
 /* Same as elf_x86_64_fbsd_efi.lds, except for OUTPUT_FORMAT below - KEEP IN SYNC */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

