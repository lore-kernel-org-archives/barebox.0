Delivery-date: Mon, 03 Jan 2022 13:08:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8w-009oCX-TR
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:08:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8l-0005t1-9X
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:08:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQLbQvvbS2COx4O6bHVJ4HxcukFowrOQw0pzhJ3/8VA=; b=gIOn3c66pJ8iZj
	vTPzDc7couDZ5lxAs6XFK711LCiS6RzV8mTQCLtJmXOE/qgvw/s6YyBVNr6gOaNwzzubhEHGm037w
	JtWXqZj3tjHYtIsl44/MN/cAmSHko6xhuPyeopBG+Tei3SfPjYNWr/NfCqws8qFWSgP6fA4Ba4VuQ
	Oxt2xFD1gvKbQs2qWBGlXAT6mTDEdHDwbsid2SkmPV+SWMzO9v5iohJ1JImYZgsvbp3Tv/sakZQP7
	2iFs43eg9lxQdaIcL5RZNumB8kublBiU9LZTF1mm4OTay5RwoRWuc8D6lj/PVZkoYDnjkNeVe424M
	MpF0d9OU9JKWNXavQCtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6r-008yR9-Ty; Mon, 03 Jan 2022 12:06:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5w-008xtw-7p
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-00052z-J7; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GWT-KL; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:38 +0100
Message-Id: <20220103120539.1730644-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040544_834172_E615BECB 
X-CRM114-Status: UNSURE (   9.51  )
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
Subject: [PATCH 10/11] arch: add SPDX-License-Identifier to all .c files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Record GPL-2.0-only as license for all files lacking an explicit license
statement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/afi-gf/lowlevel.c                       | 2 ++
 arch/arm/boards/altera-socdk/board.c                    | 2 ++
 arch/arm/boards/altera-socdk/lowlevel.c                 | 2 ++
 arch/arm/boards/at91sam9x5ek/lowlevel.c                 | 2 ++
 arch/arm/boards/beagle/lowlevel.c                       | 2 ++
 arch/arm/boards/beaglebone/lowlevel.c                   | 2 ++
 arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c    | 2 ++
 arch/arm/boards/canon-a1100/lowlevel.c                  | 2 ++
 arch/arm/boards/chumby_falconwing/lowlevel.c            | 2 ++
 arch/arm/boards/cm-fx6/lowlevel.c                       | 2 ++
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c        | 2 ++
 arch/arm/boards/digi-ccimx6ulsom/lowlevel.c             | 2 ++
 arch/arm/boards/duckbill/lowlevel.c                     | 2 ++
 arch/arm/boards/ebv-socrates/board.c                    | 2 ++
 arch/arm/boards/ebv-socrates/lowlevel.c                 | 2 ++
 arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c   | 2 ++
 arch/arm/boards/ebv-socrates/sequencer_auto_inst_init.c | 2 ++
 arch/arm/boards/efika-mx-smartbook/lowlevel.c           | 2 ++
 arch/arm/boards/element14-warp7/lowlevel.c              | 2 ++
 arch/arm/boards/embedsky-e9/lowlevel.c                  | 2 ++
 arch/arm/boards/embest-riotboard/lowlevel.c             | 2 ++
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c              | 2 ++
 arch/arm/boards/freescale-mx23-evk/lowlevel.c           | 2 ++
 arch/arm/boards/freescale-mx28-evk/lowlevel.c           | 2 ++
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c       | 2 ++
 arch/arm/boards/freescale-mx51-babbage/power.c          | 2 ++
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c           | 2 ++
 arch/arm/boards/freescale-mx53-smd/lowlevel.c           | 2 ++
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c         | 2 ++
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c      | 2 ++
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c        | 2 ++
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c        | 2 ++
 arch/arm/boards/freescale-vf610-twr/lowlevel.c          | 2 ++
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c         | 2 ++
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c         | 2 ++
 arch/arm/boards/gateworks-ventana/lowlevel.c            | 2 ++
 arch/arm/boards/gk802/lowlevel.c                        | 2 ++
 arch/arm/boards/guf-santaro/lowlevel.c                  | 2 ++
 arch/arm/boards/guf-vincell/lowlevel.c                  | 2 ++
 arch/arm/boards/imx233-olinuxino/lowlevel.c             | 2 ++
 arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c    | 2 ++
 arch/arm/boards/karo-tx28/lowlevel.c                    | 2 ++
 arch/arm/boards/karo-tx53/lowlevel.c                    | 2 ++
 arch/arm/boards/kindle-mx50/lowlevel.c                  | 2 ++
 arch/arm/boards/lubbock/lowlevel.c                      | 2 ++
 arch/arm/boards/mainstone/lowlevel.c                    | 2 ++
 arch/arm/boards/mioa701/lowlevel.c                      | 2 ++
 arch/arm/boards/netgear-rn104/lowlevel.c                | 2 ++
 arch/arm/boards/netgear-rn2120/board.c                  | 2 ++
 arch/arm/boards/nhk8815/lowlevel.c                      | 2 ++
 arch/arm/boards/omap343xdsp/lowlevel.c                  | 2 ++
 arch/arm/boards/omap3evm/lowlevel.c                     | 2 ++
 arch/arm/boards/panda/board.c                           | 2 ++
 arch/arm/boards/panda/mux.c                             | 2 ++
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c         | 2 ++
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c         | 2 ++
 arch/arm/boards/phytec-phycard-omap4/mux.c              | 2 ++
 arch/arm/boards/phytec-phycore-imx7/lowlevel.c          | 2 ++
 arch/arm/boards/phytec-phycore-omap4460/mux.c           | 2 ++
 arch/arm/boards/raspberry-pi/lowlevel.c                 | 2 ++
 arch/arm/boards/reflex-achilles/board.c                 | 2 ++
 arch/arm/boards/reflex-achilles/lowlevel.c              | 2 ++
 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c | 2 ++
 arch/arm/boards/reflex-achilles/pll-config-arria10.c    | 2 ++
 arch/arm/boards/solidrun-microsom/lowlevel.c            | 2 ++
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c       | 2 ++
 arch/arm/boards/terasic-de0-nano-soc/board.c            | 2 ++
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c         | 2 ++
 arch/arm/boards/terasic-de10-nano/board.c               | 2 ++
 arch/arm/boards/terasic-de10-nano/lowlevel.c            | 2 ++
 arch/arm/boards/terasic-sockit/board.c                  | 2 ++
 arch/arm/boards/terasic-sockit/lowlevel.c               | 2 ++
 arch/arm/boards/tqma53/lowlevel.c                       | 2 ++
 arch/arm/boards/udoo-neo/lowlevel.c                     | 2 ++
 arch/arm/boards/udoo/lowlevel.c                         | 2 ++
 arch/arm/boards/versatile/lowlevel.c                    | 2 ++
 arch/arm/boards/vscom-baltos/lowlevel.c                 | 2 ++
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c               | 2 ++
 arch/arm/boards/zylonite/lowlevel.c                     | 2 ++
 arch/arm/cpu/atf.c                                      | 2 ++
 arch/arm/cpu/cache-l2x0.c                               | 2 ++
 arch/arm/cpu/cache.c                                    | 2 ++
 arch/arm/cpu/entry.c                                    | 2 ++
 arch/arm/cpu/mmu-common.c                               | 2 ++
 arch/arm/cpu/mmu-early.c                                | 2 ++
 arch/arm/cpu/mmu-early_64.c                             | 4 +++-
 arch/arm/cpu/sections.c                                 | 2 ++
 arch/arm/lib32/bootm.c                                  | 2 ++
 arch/arm/lib32/bootu.c                                  | 2 ++
 arch/arm/lib32/bootz.c                                  | 2 ++
 arch/arm/lib32/io.c                                     | 2 ++
 arch/arm/lib32/unwind.c                                 | 2 ++
 arch/arm/lib64/pbl.c                                    | 2 ++
 arch/arm/lib64/string.c                                 | 2 ++
 arch/arm/mach-at91/at91rm9200.c                         | 2 ++
 arch/arm/mach-at91/at91sam9260.c                        | 2 ++
 arch/arm/mach-at91/at91sam9261.c                        | 2 ++
 arch/arm/mach-at91/at91sam9263.c                        | 2 ++
 arch/arm/mach-at91/at91sam9g45.c                        | 2 ++
 arch/arm/mach-at91/at91sam9n12.c                        | 2 ++
 arch/arm/mach-at91/at91sam9x5.c                         | 2 ++
 arch/arm/mach-at91/bootm-barebox.c                      | 2 ++
 arch/arm/mach-at91/sama5d3.c                            | 2 ++
 arch/arm/mach-at91/xload-mmc.c                          | 2 ++
 arch/arm/mach-ep93xx/header.c                           | 2 ++
 arch/arm/mach-imx/atf.c                                 | 2 ++
 arch/arm/mach-imx/devices.c                             | 2 ++
 arch/arm/mach-imx/imx5.c                                | 2 ++
 arch/arm/mach-imx/xload-common.c                        | 2 ++
 arch/arm/mach-imx/xload-spi.c                           | 2 ++
 arch/arm/mach-layerscape/icid.c                         | 2 ++
 arch/arm/mach-layerscape/pblimage.c                     | 2 ++
 arch/arm/mach-mvebu/kwb_bbu.c                           | 2 ++
 arch/arm/mach-mvebu/kwbootimage.c                       | 2 ++
 arch/arm/mach-nomadik/clock.c                           | 2 ++
 arch/arm/mach-omap/am3xxx.c                             | 4 +++-
 arch/arm/mach-omap/omap4_clock.c                        | 2 ++
 arch/arm/mach-omap/omap4_generic.c                      | 2 ++
 arch/arm/mach-omap/omap_devices.c                       | 2 ++
 arch/arm/mach-omap/omap_fb.c                            | 2 ++
 arch/arm/mach-omap/xload.c                              | 2 ++
 arch/arm/mach-rockchip/bootm.c                          | 2 ++
 arch/arm/mach-socfpga/arria10-generic.c                 | 2 ++
 arch/arm/mach-socfpga/arria10-xload-emmc.c              | 2 ++
 arch/arm/mach-socfpga/arria10-xload.c                   | 2 ++
 arch/arm/mach-socfpga/cyclone5-generic.c                | 2 ++
 arch/arm/mach-socfpga/cyclone5-init.c                   | 2 ++
 arch/arm/mach-socfpga/xload.c                           | 2 ++
 arch/arm/mach-stm32mp/stm32image.c                      | 2 ++
 arch/mips/boards/netgear-wg102/ram.c                    | 2 ++
 arch/mips/lib/asm-offsets.c                             | 2 ++
 arch/mips/lib/bootm.c                                   | 2 ++
 arch/mips/lib/sections.c                                | 2 ++
 arch/mips/lib/shutdown.c                                | 2 ++
 arch/mips/lib/traps.c                                   | 2 ++
 arch/mips/mach-malta/pci.c                              | 2 ++
 arch/openrisc/boards/generic/generic.c                  | 1 +
 arch/openrisc/lib/asm-offsets.c                         | 2 ++
 arch/powerpc/lib/kgdb.c                                 | 2 ++
 arch/powerpc/lib/ppclinux.c                             | 2 ++
 arch/powerpc/mach-mpc5xxx/loadtask.c                    | 2 ++
 arch/powerpc/mach-mpc5xxx/reginfo.c                     | 2 ++
 arch/riscv/lib/asm-offsets.c                            | 2 ++
 arch/sandbox/board/dev-random.c                         | 2 ++
 arch/sandbox/board/power.c                              | 2 ++
 arch/sandbox/lib/asm-offsets.c                          | 2 ++
 arch/x86/lib/asm-offsets.c                              | 1 +
 arch/x86/mach-efi/clocksource.c                         | 2 ++
 148 files changed, 296 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index da4a00067586..de40f6c5af52 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <init.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/altera-socdk/board.c b/arch/arm/boards/altera-socdk/board.c
index f4b1dcd3249f..1c91d2a10dec 100644
--- a/arch/arm/boards/altera-socdk/board.c
+++ b/arch/arm/boards/altera-socdk/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <types.h>
 #include <driver.h>
diff --git a/arch/arm/boards/altera-socdk/lowlevel.c b/arch/arm/boards/altera-socdk/lowlevel.c
index 822c3d8ee60d..537453b6760d 100644
--- a/arch/arm/boards/altera-socdk/lowlevel.c
+++ b/arch/arm/boards/altera-socdk/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index ebd417b19cc0..3d266161ec8f 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/at91_ddrsdrc.h>
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 30cc1f2c54ff..683ab552f4d5 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <init.h>
 #include <debug_ll.h>
 #include <io.h>
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 31211448f5e8..6642bc4add85 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <init.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
index 74ff71fc246a..9312a1d4aa99 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/generic.h>
 #include <mach/esdctl.h>
diff --git a/arch/arm/boards/canon-a1100/lowlevel.c b/arch/arm/boards/canon-a1100/lowlevel.c
index b75a1bfa6090..47a9564e0f84 100644
--- a/arch/arm/boards/canon-a1100/lowlevel.c
+++ b/arch/arm/boards/canon-a1100/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index 0277b5d08326..091dd1955260 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
index fd86e159aaae..27c15f5412e1 100644
--- a/arch/arm/boards/cm-fx6/lowlevel.c
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "cm-fx6: " fmt
 
 #include <common.h>
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 1bc5947682d5..92b42aa89350 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
index 7bf1db8120f9..ba562a501f81 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
+++ b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 22987a6cdb22..0f76d9c938aa 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "I2SE Duckbill: " fmt
 #define DEBUG
 
diff --git a/arch/arm/boards/ebv-socrates/board.c b/arch/arm/boards/ebv-socrates/board.c
index 965150f9a3be..c2a8edac98f4 100644
--- a/arch/arm/boards/ebv-socrates/board.c
+++ b/arch/arm/boards/ebv-socrates/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <types.h>
 #include <driver.h>
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 3f12ae806fc8..1f5b835df230 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c b/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
index 5b5196ad77e4..1a19310dcb6c 100644
--- a/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
+++ b/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 static const uint32_t ac_rom_init_size = 36;
 static const uint32_t ac_rom_init[36] =
 {
diff --git a/arch/arm/boards/ebv-socrates/sequencer_auto_inst_init.c b/arch/arm/boards/ebv-socrates/sequencer_auto_inst_init.c
index e261ecb6c178..c818d725b8e0 100644
--- a/arch/arm/boards/ebv-socrates/sequencer_auto_inst_init.c
+++ b/arch/arm/boards/ebv-socrates/sequencer_auto_inst_init.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 static const uint32_t inst_rom_init_size = 128;
 static const uint32_t inst_rom_init[128] =
 {
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 3881678d8587..5375578c94f5 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index 6ca733a0beaf..94b7eb598b50 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define DEBUG
 #include <io.h>
 #include <common.h>
diff --git a/arch/arm/boards/embedsky-e9/lowlevel.c b/arch/arm/boards/embedsky-e9/lowlevel.c
index 845c4ec90c29..1cda6e07e2e1 100644
--- a/arch/arm/boards/embedsky-e9/lowlevel.c
+++ b/arch/arm/boards/embedsky-e9/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 07f669fc0309..4093bf3bba53 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
index 6762fdad4b82..cecc3f6c833f 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 99e08d88c75d..62560bbff733 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 82411bb51630..7f0bd8a90e7c 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "Freescale MX28evk: " fmt
 #define DEBUG
 
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index e29a647daa5d..e95324e64505 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <mach/clock-imx51_53.h>
 #include <mach/iomux-mx51.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/power.c b/arch/arm/boards/freescale-mx51-babbage/power.c
index 6edc672a5a22..ce44f3ae423a 100644
--- a/arch/arm/boards/freescale-mx51-babbage/power.c
+++ b/arch/arm/boards/freescale-mx51-babbage/power.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "babbage-power: " fmt
 
 #include <common.h>
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index c9044011d599..e845fa4a3e3c 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index fffbfdf0ba8c..b15025ba1863 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index ae94538c9e92..58eca49455e2 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index c2d7a3c8f3da..0d8c51242a9f 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index 7f83366e7a1d..d902dbeafb1d 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index 8db46ca69624..a8733d62091f 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <io.h>
 #include <common.h>
diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index 8fec9f4b91bf..9c7fafe4d682 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
index ccbdd13795cb..dfb69d2272f2 100644
--- a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
index ccbdd13795cb..dfb69d2272f2 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/gateworks-ventana/lowlevel.c b/arch/arm/boards/gateworks-ventana/lowlevel.c
index 0a79d820499e..50386d8aed87 100644
--- a/arch/arm/boards/gateworks-ventana/lowlevel.c
+++ b/arch/arm/boards/gateworks-ventana/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index a41b711e362f..385ec3e73775 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index 30c5e9054a3c..ee39903c80f2 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 04060b20031d..97f1ffc3a97a 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <debug_ll.h>
 #include <io.h>
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index 253cf1257be4..71fc379f0487 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
index 8cd6d67f7ee1..4a9eae80d153 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <io.h>
 #include <common.h>
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 84cc6818163e..28d96f3e1a5f 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "KARO TX28: " fmt
 #define DEBUG
 
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 230f60ebd9db..e1bce4d3296d 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/kindle-mx50/lowlevel.c b/arch/arm/boards/kindle-mx50/lowlevel.c
index 992d1fd1a834..fce23ec6e027 100644
--- a/arch/arm/boards/kindle-mx50/lowlevel.c
+++ b/arch/arm/boards/kindle-mx50/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
index abf9e7a98a8b..f93a2ff47b9d 100644
--- a/arch/arm/boards/lubbock/lowlevel.c
+++ b/arch/arm/boards/lubbock/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
index 31f9d76513a1..1ec1d1e028aa 100644
--- a/arch/arm/boards/mainstone/lowlevel.c
+++ b/arch/arm/boards/mainstone/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
index ee0546ea6329..611699040282 100644
--- a/arch/arm/boards/mioa701/lowlevel.c
+++ b/arch/arm/boards/mioa701/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/netgear-rn104/lowlevel.c b/arch/arm/boards/netgear-rn104/lowlevel.c
index 8a5361501873..c6c8e8402346 100644
--- a/arch/arm/boards/netgear-rn104/lowlevel.c
+++ b/arch/arm/boards/netgear-rn104/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * Copyright (C) 2014  Uwe Kleine-Koenig <uwe@kleine-koenig.org>
  */
diff --git a/arch/arm/boards/netgear-rn2120/board.c b/arch/arm/boards/netgear-rn2120/board.c
index d5756e09694b..8b44b9225796 100644
--- a/arch/arm/boards/netgear-rn2120/board.c
+++ b/arch/arm/boards/netgear-rn2120/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <clock.h>
 #include <init.h>
 #include <of.h>
diff --git a/arch/arm/boards/nhk8815/lowlevel.c b/arch/arm/boards/nhk8815/lowlevel.c
index a9ccf1fff5ae..9ba5bbffadf1 100644
--- a/arch/arm/boards/nhk8815/lowlevel.c
+++ b/arch/arm/boards/nhk8815/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index fb99ea9278df..271b122d4df8 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index e06ece256064..1dcfbc27ba9c 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <io.h>
 #include <init.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index a0a00782d3ea..01189ebd76ae 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <console.h>
 #include <init.h>
diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index 76d1c5100517..25def93ea22b 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 40d39680fda7..8ab682b9db19 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * For clock initialization, see chapter 3 of the "MCIMX27 Multimedia
  * Applications Processor Reference Manual, Rev. 0.2".
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index 546fa787355f..6f24108ef20e 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <init.h>
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.c b/arch/arm/boards/phytec-phycard-omap4/mux.c
index 564944d1ba47..b0bbfa5906cf 100644
--- a/arch/arm/boards/phytec-phycard-omap4/mux.c
+++ b/arch/arm/boards/phytec-phycard-omap4/mux.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
index 3d2038e4a8d8..f8dcb3ce54d0 100644
--- a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define DEBUG
 #include <io.h>
 #include <common.h>
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.c b/arch/arm/boards/phytec-phycore-omap4460/mux.c
index ca4ccf39f0c6..9cd10e06f8f5 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/mux.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/mux.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index d58beb605255..29162ff02d54 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <asm/barebox-arm.h>
 #include <asm/cache.h>
 #include <common.h>
diff --git a/arch/arm/boards/reflex-achilles/board.c b/arch/arm/boards/reflex-achilles/board.c
index 2b8186e19f40..43e3a69be725 100644
--- a/arch/arm/boards/reflex-achilles/board.c
+++ b/arch/arm/boards/reflex-achilles/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index f910b67d5fd6..e8d1a9cee4c2 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
index b6a72304b623..146bb5405d62 100644
--- a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
+++ b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <mach/arria10-pinmux.h>
 
 static uint32_t pinmux[] = {
diff --git a/arch/arm/boards/reflex-achilles/pll-config-arria10.c b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
index 9da41ecdf20f..27dbe01b58c5 100644
--- a/arch/arm/boards/reflex-achilles/pll-config-arria10.c
+++ b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <mach/arria10-clock-manager.h>
 
 static struct arria10_mainpll_cfg mainpll_cfg = {
diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index ea204e15f38f..b8f68fa22c95 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <asm/barebox-arm.h>
 #include <common.h>
 #include <mach/esdctl.h>
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index f59c424dec26..43259675b084 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
index c6036a41f9a9..4019dae6a4bf 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/board.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <types.h>
 #include <driver.h>
diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index deac0e9cb289..91bfd1a77679 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
index dc0e8967de83..f8df37eadf4a 100644
--- a/arch/arm/boards/terasic-de10-nano/board.c
+++ b/arch/arm/boards/terasic-de10-nano/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <types.h>
 #include <driver.h>
diff --git a/arch/arm/boards/terasic-de10-nano/lowlevel.c b/arch/arm/boards/terasic-de10-nano/lowlevel.c
index d80cea6f20df..f6a3e3963489 100644
--- a/arch/arm/boards/terasic-de10-nano/lowlevel.c
+++ b/arch/arm/boards/terasic-de10-nano/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/terasic-sockit/board.c b/arch/arm/boards/terasic-sockit/board.c
index 19e67ff933e5..a3537fe6e353 100644
--- a/arch/arm/boards/terasic-sockit/board.c
+++ b/arch/arm/boards/terasic-sockit/board.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <types.h>
 #include <driver.h>
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 1dd7940aebd9..dbe99ac1dff4 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 97a7ac556e55..37a098416132 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <debug_ll.h>
 #include <io.h>
diff --git a/arch/arm/boards/udoo-neo/lowlevel.c b/arch/arm/boards/udoo-neo/lowlevel.c
index bb6b7d833278..83530fb190e1 100644
--- a/arch/arm/boards/udoo-neo/lowlevel.c
+++ b/arch/arm/boards/udoo-neo/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowlevel.c
index 1f06f7e37f7f..0f9e2d69a45c 100644
--- a/arch/arm/boards/udoo/lowlevel.c
+++ b/arch/arm/boards/udoo/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
index beab04d234a3..2f8d7b514be9 100644
--- a/arch/arm/boards/versatile/lowlevel.c
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 0a220f2628a2..7da2f92efb69 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index c7bb044e0d59..14136358dd59 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <mach/clock-imx51_53.h>
 #include <mach/iomux-mx51.h>
diff --git a/arch/arm/boards/zylonite/lowlevel.c b/arch/arm/boards/zylonite/lowlevel.c
index 5b95d879fa65..972fd3476103 100644
--- a/arch/arm/boards/zylonite/lowlevel.c
+++ b/arch/arm/boards/zylonite/lowlevel.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/cpu/atf.c b/arch/arm/cpu/atf.c
index 4753a8a55924..ccd540d32a77 100644
--- a/arch/arm/cpu/atf.c
+++ b/arch/arm/cpu/atf.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <asm/atf_common.h>
 #include <asm/system.h>
diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
index e975ecffc766..82ae16ba4dab 100644
--- a/arch/arm/cpu/cache-l2x0.c
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "l2x0: " fmt
 
 #include <common.h>
diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 2b6e958a4ee7..24a02c68f31e 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index 0b447de801a0..b863af5757cd 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <types.h>
 
 #include <asm/cache.h>
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 5cc5138cfa3d..2ef1fa231f39 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 
 #define pr_fmt(fmt)	"mmu: " fmt
 
diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index b985aa455fe8..0d528b9b9cc3 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <asm/mmu.h>
 #include <errno.h>
diff --git a/arch/arm/cpu/mmu-early_64.c b/arch/arm/cpu/mmu-early_64.c
index a7598f28aaf4..d1f4a046bbff 100644
--- a/arch/arm/cpu/mmu-early_64.c
+++ b/arch/arm/cpu/mmu-early_64.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <dma-dir.h>
 #include <init.h>
@@ -88,4 +90,4 @@ void mmu_early_disable(void)
 
 	dsb();
 	isb();
-}
\ No newline at end of file
+}
diff --git a/arch/arm/cpu/sections.c b/arch/arm/cpu/sections.c
index a53236d90016..f310578ba272 100644
--- a/arch/arm/cpu/sections.c
+++ b/arch/arm/cpu/sections.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <asm/sections.h>
 #include <linux/types.h>
 
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 2bba585e964f..e814593dce43 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <bootm.h>
 #include <boot.h>
 #include <common.h>
diff --git a/arch/arm/lib32/bootu.c b/arch/arm/lib32/bootu.c
index 0540a16280df..31c3c56cc597 100644
--- a/arch/arm/lib32/bootu.c
+++ b/arch/arm/lib32/bootu.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <fs.h>
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index 486e945a7409..7b3b32d41837 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <fs.h>
diff --git a/arch/arm/lib32/io.c b/arch/arm/lib32/io.c
index abfd887aac58..a12da49c0ab2 100644
--- a/arch/arm/lib32/io.c
+++ b/arch/arm/lib32/io.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <module.h>
 #include <linux/types.h>
 #include <io.h>
diff --git a/arch/arm/lib32/unwind.c b/arch/arm/lib32/unwind.c
index 02fae3c25306..79bf7420d757 100644
--- a/arch/arm/lib32/unwind.c
+++ b/arch/arm/lib32/unwind.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <asm/stacktrace.h>
diff --git a/arch/arm/lib64/pbl.c b/arch/arm/lib64/pbl.c
index 0cef08e4d2e1..78eab33f8d68 100644
--- a/arch/arm/lib64/pbl.c
+++ b/arch/arm/lib64/pbl.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <asm/system.h>
 #include <clock.h>
 #include <common.h>
diff --git a/arch/arm/lib64/string.c b/arch/arm/lib64/string.c
index a2cf09e58ed5..26a284be5a77 100644
--- a/arch/arm/lib64/string.c
+++ b/arch/arm/lib64/string.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <asm/system.h>
 #include <string.h>
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index ba680eb81fe2..ef2430576b6a 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index fdd8ea014e9d..457aecde518e 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index 0465ed9524df..840c0be3829a 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index dc5dddfb646a..53523d1f9f90 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index affc624b1d36..ee8650db398c 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 850d34604a2c..dbaabc0533f5 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 8266b512c999..ecc144a37a0f 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <restart.h>
diff --git a/arch/arm/mach-at91/bootm-barebox.c b/arch/arm/mach-at91/bootm-barebox.c
index 1dccdb86a939..3c99d5813b53 100644
--- a/arch/arm/mach-at91/bootm-barebox.c
+++ b/arch/arm/mach-at91/bootm-barebox.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "at91-bootm-barebox: " fmt
 
 #include <bootm.h>
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index b1e7b2c565fc..0c9d9cb0239a 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index 1b641f3a47ac..28d122f0a357 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/xload.h>
 #include <mach/sama5_bootsource.h>
diff --git a/arch/arm/mach-ep93xx/header.c b/arch/arm/mach-ep93xx/header.c
index a9dde2d8b05b..0d7e68c34b99 100644
--- a/arch/arm/mach-ep93xx/header.c
+++ b/arch/arm/mach-ep93xx/header.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 4b6ac8a2ae5e..9ab9ddd20385 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/atf.h>
 
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index a0609e282a5b..58c0a8aff3ed 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <driver.h>
 #include <mach/devices.h>
diff --git a/arch/arm/mach-imx/imx5.c b/arch/arm/mach-imx/imx5.c
index dd6c079fe3a3..072e960e53d5 100644
--- a/arch/arm/mach-imx/imx5.c
+++ b/arch/arm/mach-imx/imx5.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index bd6405258e9f..f4bcca1d1483 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <asm/sections.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/mach-imx/xload-spi.c b/arch/arm/mach-imx/xload-spi.c
index e87af81e416f..2a01b0d8065b 100644
--- a/arch/arm/mach-imx/xload-spi.c
+++ b/arch/arm/mach-imx/xload-spi.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <spi/imx-spi.h>
diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 644401b18113..d1d623416aa6 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <init.h>
diff --git a/arch/arm/mach-layerscape/pblimage.c b/arch/arm/mach-layerscape/pblimage.c
index deaf7143b92b..26345af27621 100644
--- a/arch/arm/mach-layerscape/pblimage.c
+++ b/arch/arm/mach-layerscape/pblimage.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "pblimage: " fmt
 
 #include <bootm.h>
diff --git a/arch/arm/mach-mvebu/kwb_bbu.c b/arch/arm/mach-mvebu/kwb_bbu.c
index 3de575740c27..eb205b2799b9 100644
--- a/arch/arm/mach-mvebu/kwb_bbu.c
+++ b/arch/arm/mach-mvebu/kwb_bbu.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <bbu.h>
 #include <libfile.h>
 #include <linux/printk.h>
diff --git a/arch/arm/mach-mvebu/kwbootimage.c b/arch/arm/mach-mvebu/kwbootimage.c
index e379d732fed6..7189faa751ba 100644
--- a/arch/arm/mach-mvebu/kwbootimage.c
+++ b/arch/arm/mach-mvebu/kwbootimage.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <bootm.h>
 #include <common.h>
 #include <fcntl.h>
diff --git a/arch/arm/mach-nomadik/clock.c b/arch/arm/mach-nomadik/clock.c
index f3ea958aeccf..e68097ade867 100644
--- a/arch/arm/mach-nomadik/clock.c
+++ b/arch/arm/mach-nomadik/clock.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * linux/arch/arm/mach-nomadik/clock.c
  *
diff --git a/arch/arm/mach-omap/am3xxx.c b/arch/arm/mach-omap/am3xxx.c
index 75965a8e0e12..60a6e4b825d1 100644
--- a/arch/arm/mach-omap/am3xxx.c
+++ b/arch/arm/mach-omap/am3xxx.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <mach/am3xxx-silicon.h>
@@ -29,4 +31,4 @@ void am3xxx_uart_soft_reset(void __iomem *uart_base)
 }
 
 void am33xx_uart_soft_reset(void __iomem *uart_base)
-	__alias(am3xxx_uart_soft_reset);
\ No newline at end of file
+	__alias(am3xxx_uart_soft_reset);
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 72f72a17a113..6f53c706d694 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <mach/syslib.h>
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 848a664064f5..c9a89c57b7e2 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <bootsource.h>
 #include <init.h>
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index f577fa6ea70d..7c36b8819d7b 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <driver.h>
 #include <platform_data/serial-ns16550.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/mach-omap/omap_fb.c b/arch/arm/mach-omap/omap_fb.c
index ae318d85fe1a..0bd51c5f556a 100644
--- a/arch/arm/mach-omap/omap_fb.c
+++ b/arch/arm/mach-omap/omap_fb.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <driver.h>
 #include <common.h>
 #include <linux/ioport.h>
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 47aa8275b9ee..0fe78883d1aa 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <bootsource.h>
 #include <partition.h>
diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
index 5d6181ebd7de..036a3696adbc 100644
--- a/arch/arm/mach-rockchip/bootm.c
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "rockchip-bootm-barebox: " fmt
 
 #include <bootm.h>
diff --git a/arch/arm/mach-socfpga/arria10-generic.c b/arch/arm/mach-socfpga/arria10-generic.c
index 38558309f860..d3990e1281d8 100644
--- a/arch/arm/mach-socfpga/arria10-generic.c
+++ b/arch/arm/mach-socfpga/arria10-generic.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <io.h>
 #include <init.h>
diff --git a/arch/arm/mach-socfpga/arria10-xload-emmc.c b/arch/arm/mach-socfpga/arria10-xload-emmc.c
index dcc38cf4a237..98d219b6efd9 100644
--- a/arch/arm/mach-socfpga/arria10-xload-emmc.c
+++ b/arch/arm/mach-socfpga/arria10-xload-emmc.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index e52fd1ed875b..fb92c01ddb02 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <asm/sections.h>
 #include <debug_ll.h>
diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
index dfb1f49e4d36..c494f048ec5b 100644
--- a/arch/arm/mach-socfpga/cyclone5-generic.c
+++ b/arch/arm/mach-socfpga/cyclone5-generic.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <malloc.h>
 #include <envfs.h>
diff --git a/arch/arm/mach-socfpga/cyclone5-init.c b/arch/arm/mach-socfpga/cyclone5-init.c
index 412808b8416f..68fd02430c23 100644
--- a/arch/arm/mach-socfpga/cyclone5-init.c
+++ b/arch/arm/mach-socfpga/cyclone5-init.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <debug_ll.h>
 #include <common.h>
 #include <init.h>
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index 5c611ac6e151..81c1a7488625 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <bootsource.h>
 #include <bootstrap.h>
 #include <common.h>
diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
index 207df6894d4e..caff68651c47 100644
--- a/arch/arm/mach-stm32mp/stm32image.c
+++ b/arch/arm/mach-stm32mp/stm32image.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define pr_fmt(fmt) "stm32image: " fmt
 
 #include <bootm.h>
diff --git a/arch/mips/boards/netgear-wg102/ram.c b/arch/mips/boards/netgear-wg102/ram.c
index 4cde573982d7..fe9c88162359 100644
--- a/arch/mips/boards/netgear-wg102/ram.c
+++ b/arch/mips/boards/netgear-wg102/ram.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
diff --git a/arch/mips/lib/asm-offsets.c b/arch/mips/lib/asm-offsets.c
index 457bc8ab7cee..227d8cf54ef4 100644
--- a/arch/mips/lib/asm-offsets.c
+++ b/arch/mips/lib/asm-offsets.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * offset.c: Calculate pt_regs and task_struct offsets.
  *
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index b71b8d5c38e9..655535737ec8 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <boot.h>
 #include <bootm.h>
 #include <common.h>
diff --git a/arch/mips/lib/sections.c b/arch/mips/lib/sections.c
index 66d559f94a7d..46fca5ca7914 100644
--- a/arch/mips/lib/sections.c
+++ b/arch/mips/lib/sections.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <asm/sections.h>
 #include <linux/types.h>
diff --git a/arch/mips/lib/shutdown.c b/arch/mips/lib/shutdown.c
index 973cd23c7184..9f993ab7a953 100644
--- a/arch/mips/lib/shutdown.c
+++ b/arch/mips/lib/shutdown.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /**
  * This function is called by shutdown_barebox to get a clean
  * memory/cache state.
diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
index 5fc32fe7e429..ff0a54af8e31 100644
--- a/arch/mips/lib/traps.c
+++ b/arch/mips/lib/traps.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <abort.h>
 #include <asm/mipsregs.h>
diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index 4561123d22b4..113b94fe2332 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <types.h>
 #include <driver.h>
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index ff6f9f4d42ad..1129a7d52e48 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <init.h>
 
diff --git a/arch/openrisc/lib/asm-offsets.c b/arch/openrisc/lib/asm-offsets.c
index 8cee8e00c618..e9d631a35c6a 100644
--- a/arch/openrisc/lib/asm-offsets.c
+++ b/arch/openrisc/lib/asm-offsets.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * OpenRISC asm-offsets.c
  *
diff --git a/arch/powerpc/lib/kgdb.c b/arch/powerpc/lib/kgdb.c
index 762cc7a88c9a..bbe7a80d27c6 100644
--- a/arch/powerpc/lib/kgdb.c
+++ b/arch/powerpc/lib/kgdb.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 
diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index b4cb59a524d6..9b8404962cea 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #define DEBUG
 
 #include <common.h>
diff --git a/arch/powerpc/mach-mpc5xxx/loadtask.c b/arch/powerpc/mach-mpc5xxx/loadtask.c
index 1458cf7218a1..e2489983eec9 100644
--- a/arch/powerpc/mach-mpc5xxx/loadtask.c
+++ b/arch/powerpc/mach-mpc5xxx/loadtask.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * (C) Copyright 2003
  * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
diff --git a/arch/powerpc/mach-mpc5xxx/reginfo.c b/arch/powerpc/mach-mpc5xxx/reginfo.c
index 8b646e7d048c..64816faffc22 100644
--- a/arch/powerpc/mach-mpc5xxx/reginfo.c
+++ b/arch/powerpc/mach-mpc5xxx/reginfo.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <stdio.h>
 #include <common.h>
 #include <config.h>
diff --git a/arch/riscv/lib/asm-offsets.c b/arch/riscv/lib/asm-offsets.c
index 4b869690f198..48960e58a6bc 100644
--- a/arch/riscv/lib/asm-offsets.c
+++ b/arch/riscv/lib/asm-offsets.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * Generate definitions needed by assembly language modules.
  * This code generates raw asm output which is post-processed to extract
diff --git a/arch/sandbox/board/dev-random.c b/arch/sandbox/board/dev-random.c
index 60295e9fced2..b62e8cc0d7cc 100644
--- a/arch/sandbox/board/dev-random.c
+++ b/arch/sandbox/board/dev-random.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <mach/linux.h>
 
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index aa778792c155..009b410eaa06 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <driver.h>
 #include <poweroff.h>
diff --git a/arch/sandbox/lib/asm-offsets.c b/arch/sandbox/lib/asm-offsets.c
index 22f382b71e7b..21aab692d083 100644
--- a/arch/sandbox/lib/asm-offsets.c
+++ b/arch/sandbox/lib/asm-offsets.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * Generate definitions needed by assembly language modules.
  * This code generates raw asm output which is post-processed to extract
diff --git a/arch/x86/lib/asm-offsets.c b/arch/x86/lib/asm-offsets.c
index 22f382b71e7b..caa4a289d8b3 100644
--- a/arch/x86/lib/asm-offsets.c
+++ b/arch/x86/lib/asm-offsets.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Generate definitions needed by assembly language modules.
  * This code generates raw asm output which is post-processed to extract
diff --git a/arch/x86/mach-efi/clocksource.c b/arch/x86/mach-efi/clocksource.c
index 2023fa19ac53..3d01ff9d1eca 100644
--- a/arch/x86/mach-efi/clocksource.c
+++ b/arch/x86/mach-efi/clocksource.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

