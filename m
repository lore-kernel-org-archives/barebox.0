Delivery-date: Fri, 11 Apr 2025 09:31:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rP-00B9o7-1y
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rN-0002tl-Cy
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ms0nv98AykhgevoamG/w/0ECQOqJCGTn6FNaLwRLXQg=; b=AfoEYF+0G9ZKxmdp3frTi4YHjO
	WMU9wUFh6czPmdxb2ycsr2Dp2+Us0Cs4YbicEsVLUwgKsa1VbYQRMlYSfS4RkOqbWy8WEzWQJ/fxw
	RGWpSPwgXMaJLXId4XojUxXgRaynGbNvn9q36sbbEkHLxDz9a0HimaANkIh6GbQZKLAQC6KPa+/xC
	HT+QErbghUF3//Nn3951mMnnGDMp1ht3MNebwY7Hkh3v4qPTqsPfPwuSwm6TgvcTnL4SCxePlrbCq
	xLu+rWsYwIM4lfB7fglNQ35bHKbp0tCc6AAiu3G938DWhv4TQWrOh4msXchUg1Xmrwn+W5Pdogfpw
	8Z8iI3CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qm-0000000CsYJ-16tN;
	Fri, 11 Apr 2025 07:30:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38no-0000000CrMK-3NHS
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:27:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-0001Xb-G0; Fri, 11 Apr 2025 09:27:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-004OcO-0x;
	Fri, 11 Apr 2025 09:27:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-008TCU-0f;
	Fri, 11 Apr 2025 09:27:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:27:46 +0200
Message-Id: <20250411072748.2017367-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
References: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_002753_161137_050C4B02 
X-CRM114-Status: GOOD (  23.28  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: stm32mp: drop all images with legacy STM32 header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The legacy .stm32 images have been deprecated in TF-A v2.7 and removed
altogether in v2.8, released in 2022.

It's time that we move on in barebox as well and drop the legacy images.

Users wishing to continue to use new barebox versions need to upgrade
their TF-A versions and switch to FIP images.

For purposes of network boot, two alternatives are possible: The
barebox.fit image will contain all built device trees and externally
assembled FIT images can be booted if the new FIP bootm handler is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst              |  90 ++----
 Documentation/devel/porting.rst               |   8 +-
 arch/arm/boards/lxa-mc1/Makefile              |   1 -
 arch/arm/boards/lxa-mc1/lowlevel.c            |  26 --
 .../boards/phytec-phycore-stm32mp1/Makefile   |   2 +-
 .../boards/phytec-phycore-stm32mp1/lowlevel.c |  19 --
 arch/arm/boards/protonic-stm32mp1/Makefile    |   1 -
 arch/arm/boards/protonic-stm32mp1/lowlevel.c  | 102 -------
 arch/arm/boards/protonic-stm32mp13/Makefile   |   1 -
 arch/arm/boards/protonic-stm32mp13/lowlevel.c |  36 ---
 arch/arm/boards/seeed-odyssey/Makefile        |   1 -
 arch/arm/boards/seeed-odyssey/lowlevel.c      |  19 --
 arch/arm/boards/stm32mp15x-ev1/Makefile       |   1 -
 arch/arm/boards/stm32mp15x-ev1/lowlevel.c     |  26 --
 arch/arm/mach-stm32mp/Makefile                |   1 -
 arch/arm/mach-stm32mp/stm32image.c            |  54 ----
 images/Makefile.stm32mp                       |  49 ++-
 scripts/.gitignore                            |   1 -
 scripts/Kconfig                               |   7 -
 scripts/Makefile                              |   1 -
 scripts/Makefile.lib                          |   3 -
 scripts/stm32image.c                          | 281 ------------------
 22 files changed, 43 insertions(+), 687 deletions(-)
 delete mode 100644 arch/arm/boards/lxa-mc1/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
 delete mode 100644 arch/arm/boards/protonic-stm32mp1/lowlevel.c
 delete mode 100644 arch/arm/boards/protonic-stm32mp13/lowlevel.c
 delete mode 100644 arch/arm/boards/seeed-odyssey/lowlevel.c
 delete mode 100644 arch/arm/boards/stm32mp15x-ev1/lowlevel.c
 delete mode 100644 arch/arm/mach-stm32mp/stm32image.c
 delete mode 100644 scripts/stm32image.c

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 79e3edcb5037..1fa96a85cc8d 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -10,12 +10,19 @@ The first stage boot loader (FSBL) is loaded by the ROM code into the built-in
 SYSRAM and executed. The FSBL sets up the SDRAM, install a secure monitor and
 then the second stage boot loader (SSBL) is loaded into DRAM.
 
-When building barebox, the resulting ``barebox-${board}.stm32`` file has the STM32
-header preprended, so it can be loaded directly as SSBL by the ARM TF-A
-(https://github.com/ARM-software/arm-trusted-firmware). Each entry point has a
-header-less image ending in ``*.pblb`` as well. Additionally, there is
-a ``barebox-stm32mp-generic.img``, which is a header-less image for
-use as part of a Firmware Image Package (FIP).
+When barebox is built, a ``barebox-stm32mp-generic.img`` is generated, which is
+a header-less image for use as part of a Firmware Image Package (FIP).
+This image can be used together with the device tree of any enabled board.
+This is very similar to ``barebox-dt-2nd.img`` with the difference that
+it can cope with being placed at the start of DRAM and reads the size
+of the DRAM out of the DRAM controller.
+
+Depending on enabled options, the build may also generate a number of
+``barebox-${board}.img`` images. These images ship multiple device trees,
+which is not feasible when using ``barebox-stm32mp-generic.img`` with
+a single device tree. It's up to the integrator which image they want
+to use depending on whether supporting multiple boards with the same
+FIP is desired or not.
 
 barebox images are meant to be loaded by the ARM TF-A
 (https://github.com/ARM-software/arm-trusted-firmware). FIP images are
@@ -35,19 +42,11 @@ There's a single ``stm32mp_defconfig`` for all STM32MP boards::
 The resulting images will be placed under ``images/``::
 
   barebox-stm32mp-generic-bl33.img
-  barebox-stm32mp13xx-dk.stm32
-  barebox-stm32mp15xx-dkx.stm32
-  barebox-stm32mp15x-ev1.stm32
-  barebox-stm32mp157c-lxa-mc1.stm32
-  barebox-prtt1a.stm32
-  barebox-prtt1s.stm32
-  barebox-prtt1c.stm32
-  barebox-stm32mp157c-seeed-odyssey.stm32
+  barebox-stm32mp15xx-dkx.img
   barebox-dt-2nd.img
 
-In the above output, images with a ``.stm32`` extension feature the (legacy)
-stm32image header. ``barebox-dt-2nd.img`` and ``barebox-stm32mp-generic-bl33.img``
-are board-generic barebox images that receive an external device tree.
+The ``barebox-stm32mp-generic-bl33.img`` image can be booted on all
+enabled boards, when provided an external device tree via a FIP image.
 
 .. _stm32mp_fip:
 
@@ -81,58 +80,17 @@ barebox can also be patched into an existing FIP image with ``fiptool``:
       --nt-fw $BAREBOX_BUILDDIR/images/barebox-stm32mp-generic-bl33.img \
       --hw-config $BAREBOX_BUILDDIR/arch/arm/dts/stm32mp135f-dk.dtb
 
-Flashing barebox (legacy stm32image)
-------------------------------------
+eMMC fast BOOT_ACK
+------------------
 
-After building ARM Trusted Firmware with ``STM32MP_USE_STM32IMAGE=1``,
-an appropriate image for a SD-Card can be generated with following
-``genimage(1)`` config::
-
-  image @STM32MP_BOARD@.img {
-      hdimage {
-          align = 1M
-          gpt = "true"
-      }
-      partition fsbl1 {
-          image = "tf-a-@STM32MP_BOARD@.stm32"
-          size = 256K
-      }
-      partition fsbl2 {
-          image = "tf-a-@STM32MP_BOARD@.stm32"
-          size = 256K
-      }
-      partition ssbl {
-          image = "barebox-@STM32MP_BOARD@.stm32"
-          size = 1M
-      }
-      partition barebox-environment {
-          image = "/dev/null"
-          size = 1M
-      }
-  }
-
-For eMMC, the boot partitions are used as the FSBL partitions and so the user
-partitions may look like this::
-
-  image @STM32MP_BOARD@.img {
-      partition ssbl {
-          image = "barebox-@STM32MP_BOARD@.stm32"
-          size = 1M
-      }
-      partition barebox-environment {
-          image = "/dev/null"
-          size = 1M
-      }
-  }
-
-The fsbl1 and fsbl2 can be flashed by writing to barebox ``/dev/mmcX.boot0`` and
-``/dev/mmcX.boot1`` respectively or from a booted operating system.
-
-Additionally, the eMMC's ``ext_csd`` register must be modified to activate the
+The eMMC's ``ext_csd`` register must be modified to activate the
 boot acknowledge signal (``BOOT_ACK``) and to select a boot partition.
 
-Assuming ``CONFIG_CMD_MMC_EXTCSD`` is enabled and the board shall boot from
-``/dev/mmc1.boot1``::
+This is done automatically when barebox is flashed to a board via
+the barebox update handler.
+
+To do it manually, enable ``CONFIG_CMD_MMC_EXTCSD`` and assuming the
+board should boot from ``/dev/mmc1.boot1``, run::
 
   mmc_extcsd /dev/mmc1 -i 179 -v 0x50
 
diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index e63de1259078..e3904eea067c 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -335,14 +335,8 @@ Example::
 
   --- a/images/Makefile.stm32mp
   +++ b/images/Makefile.stm32mp
-   $(obj)/%.stm32: $(obj)/% FORCE
-   $(call if_changed,stm32_image)
-
-   STM32MP1_OPTS = -a 0xc0100000 -e 0xc0100000 -v1
-
   +pblb-$(CONFIG_MACH_SEEED_ODYSSEY) += start_stm32mp157c_seeed_odyssey
-  +FILE_barebox-stm32mp157c-seeed-odyssey.img = start_stm32mp157c_seeed_odyssey.pblb.stm32
-  +OPTS_start_stm32mp157c_seeed_odyssey.pblb.stm32 = $(STM32MP1_OPTS)
+  +FILE_barebox-stm32mp157c-seeed-odyssey.img = start_stm32mp157c_seeed_odyssey.pblb
   +image-$(CONFIG_MACH_SEEED_ODYSSEY) += barebox-stm32mp157c-seeed-odyssey.img
 
 ********************
diff --git a/arch/arm/boards/lxa-mc1/Makefile b/arch/arm/boards/lxa-mc1/Makefile
index 5678718188b9..ad283446eaf1 100644
--- a/arch/arm/boards/lxa-mc1/Makefile
+++ b/arch/arm/boards/lxa-mc1/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/lxa-mc1/lowlevel.c b/arch/arm/boards/lxa-mc1/lowlevel.c
deleted file mode 100644
index 86211bf9d86a..000000000000
--- a/arch/arm/boards/lxa-mc1/lowlevel.c
+++ /dev/null
@@ -1,26 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#include <common.h>
-#include <mach/stm32mp/entry.h>
-#include <debug_ll.h>
-
-extern char __dtb_z_stm32mp157c_lxa_mc1_start[];
-
-static void setup_uart(void)
-{
-	/* first stage has set up the UART, so nothing to do here */
-	putc_ll('>');
-}
-
-ENTRY_FUNCTION(start_stm32mp157c_lxa_mc1, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp157c_lxa_mc1_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/Makefile b/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
index 1d052d28c9fc..ad283446eaf1 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-lwl-y += lowlevel.o
+
 obj-y += board.o
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
deleted file mode 100644
index 8174e060af72..000000000000
--- a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
+++ /dev/null
@@ -1,19 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#include <common.h>
-#include <mach/stm32mp/entry.h>
-#include <debug_ll.h>
-
-extern char __dtb_z_stm32mp157c_phycore_stm32mp1_3_start[];
-
-ENTRY_FUNCTION(start_phycore_stm32mp1_3, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	putc_ll('>');
-
-	fdt = __dtb_z_stm32mp157c_phycore_stm32mp1_3_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/arch/arm/boards/protonic-stm32mp1/Makefile b/arch/arm/boards/protonic-stm32mp1/Makefile
index 5678718188b9..ad283446eaf1 100644
--- a/arch/arm/boards/protonic-stm32mp1/Makefile
+++ b/arch/arm/boards/protonic-stm32mp1/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
deleted file mode 100644
index 3c145cfa21ce..000000000000
--- a/arch/arm/boards/protonic-stm32mp1/lowlevel.c
+++ /dev/null
@@ -1,102 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
-
-#include <common.h>
-#include <debug_ll.h>
-#include <mach/stm32mp/entry.h>
-
-extern char __dtb_z_stm32mp151_prtt1a_start[];
-extern char __dtb_z_stm32mp151_prtt1c_start[];
-extern char __dtb_z_stm32mp151_prtt1s_start[];
-extern char __dtb_z_stm32mp151_mecio1_start[];
-extern char __dtb_z_stm32mp151_mect1s_start[];
-extern char __dtb_z_stm32mp151c_plyaqm_start[];
-
-static void setup_uart(void)
-{
-	/* first stage has set up the UART, so nothing to do here */
-	putc_ll('>');
-}
-
-ENTRY_FUNCTION(start_prtt1a, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp151_prtt1a_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
-
-ENTRY_FUNCTION(start_prtt1c, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp151_prtt1c_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
-
-ENTRY_FUNCTION(start_prtt1s, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp151_prtt1s_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
-
-ENTRY_FUNCTION(start_mecio1, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp151_mecio1_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
-
-ENTRY_FUNCTION(start_mect1s, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp151_mect1s_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
-
-ENTRY_FUNCTION(start_stm32mp151c_plyaqm, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	setup_uart();
-
-	fdt = __dtb_z_stm32mp151c_plyaqm_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/arch/arm/boards/protonic-stm32mp13/Makefile b/arch/arm/boards/protonic-stm32mp13/Makefile
index 5678718188b9..ad283446eaf1 100644
--- a/arch/arm/boards/protonic-stm32mp13/Makefile
+++ b/arch/arm/boards/protonic-stm32mp13/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/protonic-stm32mp13/lowlevel.c b/arch/arm/boards/protonic-stm32mp13/lowlevel.c
deleted file mode 100644
index 71e658934383..000000000000
--- a/arch/arm/boards/protonic-stm32mp13/lowlevel.c
+++ /dev/null
@@ -1,36 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
-
-#include <common.h>
-#include <debug_ll.h>
-#include <mach/stm32mp/entry.h>
-
-extern char __dtb_z_stm32mp133c_prihmb_start[];
-extern char __dtb_z_stm32mp133c_mect1s_start[];
-
-ENTRY_FUNCTION(start_stm32mp133c_prihmb, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	/* first stage has set up the UART, so nothing to do here */
-	putc_ll('>');
-
-	fdt = __dtb_z_stm32mp133c_prihmb_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
-
-ENTRY_FUNCTION(start_stm32mp133c_mect1s, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	putc_ll('>');
-
-	fdt = __dtb_z_stm32mp133c_mect1s_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/arch/arm/boards/seeed-odyssey/Makefile b/arch/arm/boards/seeed-odyssey/Makefile
index 5678718188b9..ad283446eaf1 100644
--- a/arch/arm/boards/seeed-odyssey/Makefile
+++ b/arch/arm/boards/seeed-odyssey/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/seeed-odyssey/lowlevel.c b/arch/arm/boards/seeed-odyssey/lowlevel.c
deleted file mode 100644
index a0e6173d49ad..000000000000
--- a/arch/arm/boards/seeed-odyssey/lowlevel.c
+++ /dev/null
@@ -1,19 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#include <common.h>
-#include <mach/stm32mp/entry.h>
-#include <debug_ll.h>
-
-extern char __dtb_z_stm32mp157c_odyssey_start[];
-
-ENTRY_FUNCTION(start_stm32mp157c_seeed_odyssey, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	putc_ll('>');
-
-	fdt = __dtb_z_stm32mp157c_odyssey_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/arch/arm/boards/stm32mp15x-ev1/Makefile b/arch/arm/boards/stm32mp15x-ev1/Makefile
index 5678718188b9..ad283446eaf1 100644
--- a/arch/arm/boards/stm32mp15x-ev1/Makefile
+++ b/arch/arm/boards/stm32mp15x-ev1/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/stm32mp15x-ev1/lowlevel.c b/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
deleted file mode 100644
index 13f16f8dcb21..000000000000
--- a/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
+++ /dev/null
@@ -1,26 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#include <common.h>
-#include <mach/stm32mp/entry.h>
-#include <debug_ll.h>
-
-extern char __dtb_z_stm32mp157c_ev1_start[];
-
-static void setup_uart(void)
-{
-	/* first stage has set up the UART, so nothing to do here */
-	putc_ll('>');
-}
-
-ENTRY_FUNCTION(start_stm32mp15x_ev1, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_z_stm32mp157c_ev1_start + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 837449150cff..b6fbb46f4fb0 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -3,5 +3,4 @@
 obj-y := init.o
 obj-pbl-y := ddrctrl.o
 pbl-y := bl33-generic.o
-obj-$(CONFIG_BOOTM) += stm32image.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
deleted file mode 100644
index 1b2e8c618c85..000000000000
--- a/arch/arm/mach-stm32mp/stm32image.c
+++ /dev/null
@@ -1,54 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#define pr_fmt(fmt) "stm32image: " fmt
-
-#include <bootm.h>
-#include <common.h>
-#include <init.h>
-#include <memory.h>
-#include <linux/sizes.h>
-#include <mach/stm32mp/stm32.h>
-
-#define BAREBOX_STAGE2_OFFSET	256
-
-static int do_bootm_stm32image(struct image_data *data)
-{
-	void (*barebox)(void);
-	resource_size_t start, end;
-	int ret;
-
-	ret = memory_bank_first_find_space(&start, &end);
-	if (ret)
-		return ret;
-
-	ret = bootm_load_os(data, start);
-	if (ret)
-		return ret;
-
-	barebox = (void*)start + BAREBOX_STAGE2_OFFSET;
-
-	if (data->verbose)
-		printf("Loaded barebox image to 0x%08lx\n",
-		       (unsigned long)barebox);
-
-	shutdown_barebox();
-
-	barebox();
-
-	return -EIO;
-}
-
-static struct image_handler image_handler_stm32_image_v1_handler = {
-	.name = "STM32 image (v1)",
-	.bootm = do_bootm_stm32image,
-	.filetype = filetype_stm32_image_ssbl_v1,
-};
-
-static int stm32mp_register_stm32image_image_handler(void)
-{
-	if (!stm32mp_soc_code())
-		return 0;
-
-	return register_image_handler(&image_handler_stm32_image_v1_handler);
-}
-late_initcall(stm32mp_register_stm32image_image_handler);
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 4727bb093783..68b65bd78afd 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -3,47 +3,32 @@
 # barebox image generation Makefile for STMicroelectronics MP
 #
 
-# %.stm32 - convert into STM32MP image
-# --------------------------------------
-
-.SECONDEXPANSION:
-$(obj)/%.stm32: $(obj)/$$(FILE_$$(@F)) FORCE
-	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
-	@(cd $(obj) && rm -f $(basename $(notdir $@)).img)
-	$(call if_changed,stm32_image)
-
-define build_stm32mp_image =
+define build_stm32mp_ssbl_image =
 $(eval
 ifeq ($($(strip $(1))), y)
 	pblb-y += $(strip $(2))
-	FILE_barebox-$(strip $(3)).stm32  = $(strip $(2)).pblb
-	OPTS_barebox-$(strip $(3)).stm32 = -a 0xc0100000 -e 0xc0100000 -v1
-	image-y += barebox-$(strip $(3)).stm32
+	FILE_barebox-$(strip $(3)).img  = $(strip $(2)).pblb
+	image-y += barebox-$(strip $(3)).img
 endif
 )
 endef
 
 # --------------------------------------
+# On STM32MP15 and STM32MP13 platforms, barebox can only be built
+# as second stage bootloader (SSBL) to be started by TF-A acting as FSBL.
+# The TF-A binary expects a FIP that can be created by fiptool.
+# barebox needs to be paced as --nt-fw (BL33) into the FIP image
 
-# For use as --nt-fw (BL33) in FIP images
-pblb-$(CONFIG_ARCH_STM32MP) += start_stm32mp_bl33
-FILE_barebox-stm32mp-generic-bl33.img  = start_stm32mp_bl33.pblb
-image-$(CONFIG_ARCH_STM32MP) += barebox-stm32mp-generic-bl33.img
+# ----------------------- Generic FIP SSBL Image -------------------------
+# This is the generic image, which contains no device tree.
+# The board device tree needs to be added separately as --hw-config
+# This should be used by default for new board support.
 
-$(call build_stm32mp_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
-$(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, stm32mp15x-ev1)
+$(call build_stm32mp_ssbl_image, CONFIG_ARCH_STM32MP, start_stm32mp_bl33, stm32mp-generic-bl33)
 
-$(call build_stm32mp_image, CONFIG_MACH_LXA_MC1, start_stm32mp157c_lxa_mc1, stm32mp157c-lxa-mc1)
+# ------------ SSBL Images for FIP with builtin Device Trees -------------
+# These images all have a device tree builtin. This is useful for boards that
+# support multiple hardware variants and need to ship multiple device trees.
+# These boards ignore the hardware config in the FIP.
 
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1a, prtt1a)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mecio1, mecio1)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mect1s, mect1s)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_stm32mp151c_plyaqm, stm32mp151c-plyaqm)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP13, start_stm32mp133c_prihmb, stm32mp133c-prihmb)
-$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP13, start_stm32mp133c_mect1s, stm32mp133c-mect1s)
-
-$(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
-
-$(call build_stm32mp_image, CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1, start_phycore_stm32mp1_3, phycore-stm32mp1)
+$(call build_stm32mp_ssbl_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 17df85ba96e0..1b760309583b 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -35,6 +35,5 @@ rk-usb-loader-target
 rkimage
 mips-relocs
 keytoc
-stm32image
 mvebuimg
 prelink-riscv
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 62bf0298ec53..738f69585b8f 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -49,13 +49,6 @@ config LAYERSCAPE_PBLIMAGE
 	help
 	  This enables building the PBL image tool for Freescale Layerscape SoCs
 
-config STM32_IMAGE
-	bool "STM32MP image tool" if COMPILE_HOST_TOOLS
-	depends on ARCH_STM32MP || COMPILE_HOST_TOOLS
-	default y if ARCH_STM32MP
-	help
-	  This enables building the image creation tool for STM32MP SoCs
-
 config RK_IMAGE
 	bool "Rockchip image tool" if COMPILE_HOST_TOOLS
 	depends on ARCH_ROCKCHIP_V8 || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index 6d89af7d4f35..eb3884471bc9 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -23,7 +23,6 @@ hostprogs-always-$(CONFIG_ZYNQ_MKIMAGE)			+= zynq_mkimage
 hostprogs-always-$(CONFIG_SOCFPGA_MKIMAGE)		+= socfpga_mkimage
 hostprogs-always-$(CONFIG_MXS_HOSTTOOLS)		+= mxsimage mxsboot
 hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
-hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
 hostprogs-always-$(CONFIG_IMX9_IMAGE)			+= imx9image
 hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
 hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e7c56c6627be..b10119797686 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -628,9 +628,6 @@ quiet_cmd_cboot_bct = BCT     $@
 $(obj)/%.bct: $(obj)/%.bct.cfg
 	$(call cmd,cboot_bct)
 
-quiet_cmd_stm32_image = STM32-IMG $@
-      cmd_stm32_image = $(objtree)/scripts/stm32image $(OPTS_$(@F)) -i $< -o $@
-
 quiet_cmd_b64dec = B64DEC  $@
       cmd_b64dec = base64 -d $< > $@
 
diff --git a/scripts/stm32image.c b/scripts/stm32image.c
deleted file mode 100644
index c33bcca0d80a..000000000000
--- a/scripts/stm32image.c
+++ /dev/null
@@ -1,281 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
-/*
- * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
- * Copyright (C) 2019, Pengutronix
- */
-
-#include <stdio.h>
-#include <stdlib.h>
-#include <errno.h>
-#include <sys/stat.h>
-#include <unistd.h>
-#include <fcntl.h>
-#include <string.h>
-#include <stdint.h>
-#include <getopt.h>
-#include "compiler.h"
-
-#ifndef MAP_POPULATE
-#define MAP_POPULATE 0
-#endif
-
-/* magic ='S' 'T' 'M' 0x32 */
-#define HEADER_MAGIC htobe32(0x53544D32)
-#define VER_MAJOR_IDX	2
-#define VER_MINOR_IDX	1
-#define VER_VARIANT_IDX	0
-/* default option : bit0 => no signature */
-#define HEADER_DEFAULT_OPTION	htole32(0x00000001)
-/* default binary type for barebox */
-#define HEADER_TYPE_BAREBOX	htole32(0x00000000)
-#define HEADER_LENGTH	0x100
-
-#define FSBL_LOADADDR		0x2ffc2400
-#define FSBL_ENTRYPOINT		(FSBL_LOADADDR + HEADER_LENGTH)
-#define MAX_FSBL_PAYLOAD_SIZE	(247 * 1024)
-
-struct __attribute((packed)) stm32_header {
-	uint32_t magic_number;
-	uint32_t image_signature[64 / 4];
-	uint32_t image_checksum;
-	uint8_t  header_version[4];
-	uint32_t image_length;
-	uint32_t image_entry_point;
-	uint32_t reserved1;
-	uint32_t load_address;
-	uint32_t reserved2;
-	uint32_t version_number;
-	uint32_t option_flags;
-	uint32_t ecdsa_algorithm;
-	uint32_t ecdsa_public_key[64 / 4];
-	uint32_t padding[83 / 4];
-	uint32_t binary_type;
-};
-
-static struct stm32_header stm32image_header;
-
-static const char *infile;
-static const char *outfile;
-static int in_fd;
-static int out_fd;
-static uint32_t loadaddr;
-static uint32_t entrypoint;
-static uint32_t pbl_size;
-static uint32_t version = 0x01;
-
-static void stm32image_print_header(void)
-{
-	printf("Image Type   : STMicroelectronics STM32 V%d.%d\n",
-	       stm32image_header.header_version[VER_MAJOR_IDX],
-	       stm32image_header.header_version[VER_MINOR_IDX]);
-	printf("Image Size   : %u bytes\n",
-	       le32toh(stm32image_header.image_length));
-	printf("Image Load   : 0x%08x\n",
-	       le32toh(stm32image_header.load_address));
-	printf("Entry Point  : 0x%08x\n",
-	       le32toh(stm32image_header.image_entry_point));
-	printf("Checksum     : 0x%08x\n",
-	       le32toh(stm32image_header.image_checksum));
-	printf("Option     : 0x%08x\n",
-	       le32toh(stm32image_header.option_flags));
-	printf("BinaryType : 0x%08x\n",
-	       le32toh(stm32image_header.binary_type));
-}
-
-static uint32_t stm32image_checksum(void)
-{
-	uint32_t csum = 0;
-	uint32_t len = pbl_size;
-	uint8_t *p;
-
-	p = mmap(NULL, len, PROT_READ, MAP_PRIVATE | MAP_POPULATE, in_fd, 0);
-	if (p == MAP_FAILED) {
-		perror("mmap");
-		exit(EXIT_FAILURE);
-	}
-
-	for (; len > 0; len--)
-		csum += *p++;
-
-	munmap(p, len);
-
-	return csum;
-}
-
-static void stm32image_set_header(void)
-{
-
-	memset(&stm32image_header, 0, sizeof(struct stm32_header));
-
-	/* set default values */
-	stm32image_header.magic_number = HEADER_MAGIC;
-	stm32image_header.header_version[VER_MAJOR_IDX] = version;
-	stm32image_header.option_flags = HEADER_DEFAULT_OPTION;
-	stm32image_header.ecdsa_algorithm = 1;
-	/* used to specify the 2nd-stage barebox address within dram */
-	stm32image_header.load_address = loadaddr;
-	stm32image_header.binary_type = HEADER_TYPE_BAREBOX;
-
-	stm32image_header.image_entry_point = htole32(entrypoint);
-	stm32image_header.image_length = htole32(pbl_size);
-	stm32image_header.image_checksum = stm32image_checksum();
-}
-
-static void stm32image_check_params(void)
-{
-	off_t ret;
-
-	in_fd = open(infile, O_RDONLY);
-	if (in_fd < 0) {
-		fprintf(stderr, "Error: Cannot open %s for reading: %s\n", infile,
-			strerror(errno));
-		exit(EXIT_FAILURE);
-	}
-
-	if (!pbl_size) {
-		pbl_size = lseek(in_fd, 0, SEEK_END);
-		if (pbl_size == (uint32_t)-1) {
-			fprintf(stderr, "Cannot seek to end\n");
-			exit(EXIT_FAILURE);
-		}
-
-		ret = lseek(in_fd, 0, SEEK_SET);
-		if (ret == (off_t)-1) {
-			fprintf(stderr, "Cannot seek to start\n");
-			exit(EXIT_FAILURE);
-		}
-	}
-
-	out_fd = creat(outfile, 0644);
-	if (out_fd < 0) {
-		fprintf(stderr, "Cannot open %s for writing: %s\n",
-			outfile, strerror(errno));
-		exit(EXIT_FAILURE);
-	}
-
-	if (loadaddr < 0xc0000000) {
-		fprintf(stderr, "Error: loadaddr must be within the DDR memory space\n");
-		exit(EXIT_FAILURE);
-	}
-}
-
-static void copy_fd(int in, int out)
-{
-	int bs = 4096;
-	void *buf = malloc(bs);
-
-	if (!buf)
-		exit(EXIT_FAILURE);
-
-	while (1) {
-		int now, wr;
-
-		now = read(in, buf, bs);
-		if (now < 0) {
-			fprintf(stderr, "read failed with %s\n", strerror(errno));
-			exit(EXIT_FAILURE);
-		}
-
-		if (!now)
-			break;
-
-		wr = write(out, buf, now);
-		if (wr < 0) {
-			fprintf(stderr, "write failed with %s\n", strerror(errno));
-			exit(EXIT_FAILURE);
-		}
-
-		if (wr != now) {
-			fprintf(stderr, "short write\n");
-			exit(EXIT_FAILURE);
-		}
-	}
-
-	free(buf);
-}
-
-int main(int argc, char *argv[])
-{
-	const char *verbose;
-	int opt, ret;
-	off_t pos;
-	entrypoint = FSBL_ENTRYPOINT;
-
-	while ((opt = getopt(argc, argv, "i:o:a:e:s:v:h")) != -1) {
-		switch (opt) {
-		case 'i':
-			infile = optarg;
-			break;
-		case 'o':
-			outfile = optarg;
-			break;
-		case 'a':
-			loadaddr = strtol(optarg, NULL, 16);
-			break;
-		case 'e':
-			entrypoint = strtol(optarg, NULL, 16);
-			break;
-		case 's':
-			pbl_size = strtol(optarg, NULL, 16);
-			break;
-		case 'v':
-			version = strtol(optarg, NULL, 16);
-			break;
-		case 'h':
-			printf("%s [-i inputfile] [-o outputfile] [-a loadaddr] [-s pblimage size in byte]\n", argv[0]);
-			exit(EXIT_SUCCESS);
-		default:
-			fprintf(stderr, "Unknown option: -%c\n", opt);
-			exit(EXIT_FAILURE);
-		}
-	}
-
-	if (!infile) {
-		fprintf(stderr, "No infile given\n");
-		exit(EXIT_FAILURE);
-	}
-
-	if (!outfile) {
-		fprintf(stderr, "No outfile given\n");
-		exit(EXIT_FAILURE);
-	}
-
-	stm32image_check_params();
-	stm32image_set_header();
-
-	ret = write(out_fd, (const void *)&stm32image_header, sizeof(struct stm32_header));
-	if (ret != 0x100) {
-		fprintf(stderr, "Error: write on %s: %s\n", outfile,
-			strerror(errno));
-		exit(EXIT_FAILURE);
-	}
-
-	verbose = getenv("V");
-	if (verbose && !strcmp(verbose, "1"))
-		stm32image_print_header();
-
-	ret = ftruncate(out_fd, HEADER_LENGTH);
-	if (ret) {
-		fprintf(stderr, "Cannot truncate\n");
-		exit(EXIT_FAILURE);
-	}
-
-	pos = lseek(out_fd, HEADER_LENGTH, SEEK_SET);
-	if (pos == (off_t)-1) {
-		fprintf(stderr, "Cannot lseek 1\n");
-		exit(EXIT_FAILURE);
-	}
-
-	pos = lseek(in_fd, 0, SEEK_SET);
-	if (pos == (off_t)-1) {
-		fprintf(stderr, "Cannot lseek 2\n");
-		exit(EXIT_FAILURE);
-	}
-
-	copy_fd(in_fd, out_fd);
-
-	close(in_fd);
-	close(out_fd);
-
-	exit(EXIT_SUCCESS);
-}
-- 
2.39.5



