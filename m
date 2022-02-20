Delivery-date: Sun, 20 Feb 2022 13:52:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlhc-004x6n-Io
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:52:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlha-0002f2-W7
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:52:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiQQ6fa/YZawgvJsaO7zWCefVADZTKQPwV4kl/wfmCk=; b=Oya5lAWDjF4jqH
	H/0yGNf/Eq+gGlFPQbopxlxB17fokWh8NBLdnBM+ToDbBYf2Q1v8Js2bHNrt70Dwbm6/4Bc0KEp+W
	uCBQhVpRclmUyQXLohT1QD6MBlqTNwFroRRrpcU7zYMbTsJu7/axwUF7qsGh68tsJOSdha2XEgvPO
	27SOX/22+cG+6s2H/QjnhwaHDpEfM89dk0HBkME+WQ5tp4EATUHAWjHn4GtSxn6JBjUy4rDwT7WGY
	PBsgzSWrGUlM//UBLs/JpQYfHjf2ECGdlQ7D9UuTrbTc3AubE8wSwPlG/Med4BixvCHcvJ/v5fjVH
	Xphq5+JIYk0p/Ttaa6Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLlg9-001JxJ-2K; Sun, 20 Feb 2022 12:51:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLldP-001IFf-KM
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:48:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a0-4C; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPc-W6; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:19 +0100
Message-Id: <20220220124736.3052502-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044815_717309_F45F758E 
X-CRM114-Status: GOOD (  18.01  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/24] ARM: stm32mp: build extra
 barebox-stm32mp-generic-bl33.img
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox-dt-2nd.img expects being loaded at an offset, so the stack can
grow down from entry point. The STM32MP TF-A default is to not have an
offset. Avoid this issue by having a stm32mp specific entry point that
sets up a 64 byte stack after end of barebox. As it's stm32mp-specific
anyway, we can skip the early FDT parsing and ask the SDRAM controller
about RAM size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst     | 51 ++++++++++++++++++++++++----
 arch/arm/mach-stm32mp/Makefile       |  1 +
 arch/arm/mach-stm32mp/bl33-generic.c | 24 +++++++++++++
 images/Makefile.stm32mp              |  5 +++
 4 files changed, 74 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/mach-stm32mp/bl33-generic.c

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 2b9dc01b551a..55bdafe78579 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -13,20 +13,26 @@ then the second stage boot loader (SSBL) is loaded into DRAM.
 When building barebox, the resulting ``barebox-${board}.stm32`` file has the STM32
 header preprended, so it can be loaded directly as SSBL by the ARM TF-A
 (https://github.com/ARM-software/arm-trusted-firmware). Each entry point has a
-header-less image ending in ``*.pblb`` as well.
+header-less image ending in ``*.pblb`` as well. Additionally, there is
+a ``barebox-stm32mp-generic.img``, which is a header-less image for
+use as part of a Firmware Image Package (FIP).
 
-Use of barebox as FSBL is not supported.
+barebox images are meant to be loaded by the ARM TF-A
+(https://github.com/ARM-software/arm-trusted-firmware). FIP images are
+mandatory for STM32MP1 since TF-A v2.7.
+
+Use of barebox as FSBL is not implemented.
 
 Building barebox
 ----------------
 
-With multi-image and device trees, it's expected to have ``stm32mp_defconfig``
-as sole defconfig for all STM32MP boards::
+There's a single ``stm32mp_defconfig`` for all STM32MP boards::
 
   make ARCH=arm stm32mp_defconfig
 
 The resulting images will be placed under ``images/``::
 
+  barebox-stm32mp-generic-bl33.img
   barebox-stm32mp15xx-dkx.stm32
   barebox-stm32mp15x-ev1.stm32
   barebox-stm32mp157c-lxa-mc1.stm32
@@ -37,13 +43,44 @@ The resulting images will be placed under ``images/``::
   barebox-dt-2nd.img
 
 In the above output, images with a ``.stm32`` extension feature the (legacy)
-stm32image header. ``barebox-dt-2nd.img`` is a generic barebox image that
-received an external device tree.
+stm32image header. ``barebox-dt-2nd.img`` and ``barebox-stm32mp-generic-bl33.img``
+are board-generic barebox images that receive an external device tree.
+
+Flashing barebox (FIP)
+----------------------
+
+After building barebox in ``$BAREBOX_BUILDDIR``, change directory to ARM
+Trusted Firmware to build a FIP image. Example building STM32MP157C-DK2
+with SP_min (no OP-TEE):
+
+.. code:: bash
+
+    make CROSS_COMPILE=arm-none-eabi- PLAT=stm32mp1 ARCH=aarch32 ARM_ARCH_MAJOR=7 \
+        STM32MP_EMMC=1 STM32MP_EMMC_BOOT=1 STM32MP_SDMMC=1 STM32MP_SPI_NOR=1 \
+        AARCH32_SP=sp_min \
+        DTB_FILE_NAME=stm32mp157c-dk2.dtb \
+        BL33=$BAREBOX_BUILDDIR/images/barebox-stm32mp-generic-bl33.img \
+        BL33_CFG=$BAREBOX_BUILDDIR/arch/arm/dts/stm32mp157c-dk2.dtb \
+        fip
+
+For different boards, adjust ``DTB_FILENAME`` and ``BL33_CFG`` as appropriate.
+
+If OP-TEE is used, ensure ``CONFIG_OPTEE_SIZE`` is set appropriately, so
+early barebox code does not attempt accessing secure memory.
+
+barebox can also be patched into an existing FIP image with ``fiptool``:
+
+.. code:: bash
+
+    fiptool update mmcblk0p3  \
+      --nt-fw $BAREBOX_BUILDDIR/images/barebox-stm32mp-generic-bl33.img \
+      --hw-config $BAREBOX_BUILDDIR/arch/arm/dts/stm32mp135f-dk.dtb
 
 Flashing barebox (legacy stm32image)
 ------------------------------------
 
-An appropriate image for a SD-Card can be generated with following
+After building ARM Trusted Firmware with ``STM32MP_USE_STM32IMAGE=1``,
+an appropriate image for a SD-Card can be generated with following
 ``genimage(1)`` config::
 
   image @STM32MP_BOARD@.img {
diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 4163bd176b1f..86c13b8fca8a 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -2,4 +2,5 @@
 
 obj-y := init.o
 obj-pbl-y := ddrctrl.o
+pbl-y := bl33-generic.o
 obj-$(CONFIG_BOOTM) += stm32image.o
diff --git a/arch/arm/mach-stm32mp/bl33-generic.c b/arch/arm/mach-stm32mp/bl33-generic.c
new file mode 100644
index 000000000000..6f779b19cf4d
--- /dev/null
+++ b/arch/arm/mach-stm32mp/bl33-generic.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <mach/entry.h>
+#include <debug_ll.h>
+
+/*
+ * barebox-dt-2nd.img expects being loaded at an offset, so the
+ * stack can grow down from entry point. The STM32MP TF-A default
+ * is to not have an offset. This stm32mp specific entry points
+ * avoids this issue by setting up a 64 byte stack after end of
+ * barebox and by asking the memory controller about RAM size
+ * instead of parsing it out of the DT.
+ *
+ * When using OP-TEE, ensure CONFIG_OPTEE_SIZE is appopriately set.
+ */
+
+ENTRY_FUNCTION(start_stm32mp_bl33, r0, r1, r2)
+{
+	stm32mp_cpu_lowlevel_init();
+
+	putc_ll('>');
+
+	stm32mp1_barebox_entry((void *)r2);
+}
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index eeb5d9ecf6d3..862e955dbc59 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -25,6 +25,11 @@ endef
 
 # --------------------------------------
 
+# For use as --nt-fw (BL33) in FIP images
+pblb-y += start_stm32mp_bl33
+FILE_barebox-stm32mp-generic-bl33.img  = start_stm32mp_bl33.pblb
+image-y += barebox-stm32mp-generic-bl33.img
+
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, stm32mp15x-ev1)
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

