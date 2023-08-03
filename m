Delivery-date: Thu, 03 Aug 2023 12:51:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVve-004wPY-Hw
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvb-0001rT-TA
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9DFXupHax1a2y95L94R2xSL1+9OzI42ul/6mBcIfPe8=; b=Phs9NaflqBkH9biUINOXvQ4PoQ
	AgQeietMiS6iSL1eg8ywHcmPdw5tUcemYkdhrvoBOHA4Wx69nOL/m+Zr6fZRrs+Aeq1g/ecJeYuqw
	kHlrF4/V6hE9OCcNl6YzkvKKGGpXSTqhIAnkH8rVtt6DbfG8PKGBwfgbC/1O9rHsq26XBKtk34hCV
	3BclvOx+Fk/qNUVMwl3avER00wQUElYDcXeuzR4Azdp5Z2/490AKjEmDMVFZ79lbpZxncFRWDCHe2
	UgrPzNDY008OkNZu6d4/No3wGgB3mVHefX92a/nM3H4BfAipRilTDkTv9sE906DgPlb2/mSEPBWd0
	xYSjoRbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuT-007Ul3-1o;
	Thu, 03 Aug 2023 10:50:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UYq-2j
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000wu-KR; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovl-UE; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzv-RN; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:59 +0200
Message-Id: <20230803105003.4088205-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 18/22] ARM: k3: Add initial BeaglePlay board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds basic 2nd stage support for the BeaglePlay board, see
https://docs.beagle.cc/latest/boards/beagleplay/index.html

The BeaglePlay is based on the Texas Instruments AM62x (K3) SoC.

1st stage support is out of scope for now, but current support is enough
to be started as a Kernel from running U-Boot using the booti command.
When encapsulated in a FIT image the resulting image can replace
u-boot.img to directly boot into barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile              |  1 +
 arch/arm/boards/beagleplay/Makefile   |  1 +
 arch/arm/boards/beagleplay/entry.S    | 29 +++++++++++++++++++++++
 arch/arm/boards/beagleplay/lowlevel.c | 33 +++++++++++++++++++++++++++
 arch/arm/dts/Makefile                 |  1 +
 arch/arm/dts/k3-am625-beagleplay.dts  |  9 ++++++++
 arch/arm/mach-k3/Kconfig              |  5 ++++
 images/Makefile                       |  1 +
 images/Makefile.k3                    |  9 ++++++++
 9 files changed, 89 insertions(+)
 create mode 100644 arch/arm/boards/beagleplay/Makefile
 create mode 100644 arch/arm/boards/beagleplay/entry.S
 create mode 100644 arch/arm/boards/beagleplay/lowlevel.c
 create mode 100644 arch/arm/dts/k3-am625-beagleplay.dts
 create mode 100644 images/Makefile.k3

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2877debad5..b34ef2e2cc 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
 obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
+obj-$(CONFIG_MACH_BEAGLEPLAY)			+= beagleplay/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
diff --git a/arch/arm/boards/beagleplay/Makefile b/arch/arm/boards/beagleplay/Makefile
new file mode 100644
index 0000000000..69935cc168
--- /dev/null
+++ b/arch/arm/boards/beagleplay/Makefile
@@ -0,0 +1 @@
+pbl-y += lowlevel.o entry.o
diff --git a/arch/arm/boards/beagleplay/entry.S b/arch/arm/boards/beagleplay/entry.S
new file mode 100644
index 0000000000..6e4c7196f3
--- /dev/null
+++ b/arch/arm/boards/beagleplay/entry.S
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+#include <asm/image.h>
+
+#define IMAGE_FLAGS \
+	(ARM64_IMAGE_FLAG_PAGE_SIZE_4K << ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT) | \
+	(ARM64_IMAGE_FLAG_PHYS_BASE << ARM64_IMAGE_FLAG_PHYS_BASE_SHIFT)
+
+.section .text_head_entry_start_beagleplay
+ENTRY("start_beagleplay")
+	adr x1, 0	   	   /* code0 */
+	b 2f                       /* code1 */
+	.xword 0x80000             /* Image load offset */
+	.xword _barebox_image_size /* Effective Image size */
+	.xword IMAGE_FLAGS	   /* Kernel flags */
+	.xword 0                   /* reserved */
+	.xword 0                   /* reserved */
+	.xword 0                   /* reserved */
+	.ascii ARM64_IMAGE_MAGIC   /* magic number */
+	.int   0                   /* reserved (PE-COFF offset) */
+	.asciz "barebox"	   /* unused for now */
+2:
+	mov sp, x1
+	/* Stack now grows into the 0x80000 image load offset specified
+	 * above. This is more than enough until FDT /memory is decoded.
+	 */
+	b beagleplay
+ENTRY_PROC_END(start_beagleplay)
diff --git a/arch/arm/boards/beagleplay/lowlevel.c b/arch/arm/boards/beagleplay/lowlevel.c
new file mode 100644
index 0000000000..9d76dbd0a2
--- /dev/null
+++ b/arch/arm/boards/beagleplay/lowlevel.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <debug_ll.h>
+#include <pbl.h>
+
+/* Called from assembly */
+void beagleplay(void);
+
+static noinline void beagleplay_continue(void)
+{
+	unsigned long membase, memsize;
+	extern char __dtb_k3_am625_beagleplay_start[];
+
+	fdt_find_mem(__dtb_k3_am625_beagleplay_start, &membase, &memsize);
+
+	barebox_arm_entry(membase, memsize, __dtb_k3_am625_beagleplay_start);
+}
+
+void beagleplay(void)
+{
+	putc_ll('>');
+
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+
+	setup_c();
+
+	beagleplay_continue();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 2a6823d988..b0d59749e5 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -7,6 +7,7 @@ obj- += dummy.o
 lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
+lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o
 lwl-$(CONFIG_MACH_CANON_A1100) += canon-a1100.dtb.o
 lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
 lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
diff --git a/arch/arm/dts/k3-am625-beagleplay.dts b/arch/arm/dts/k3-am625-beagleplay.dts
new file mode 100644
index 0000000000..6efc178777
--- /dev/null
+++ b/arch/arm/dts/k3-am625-beagleplay.dts
@@ -0,0 +1,9 @@
+/dts-v1/;
+
+#include <arm64/ti/k3-am625-beagleplay.dts>
+
+/ {
+	chosen {
+		stdout-path = &main_uart0;
+	};
+};
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index b2954493c4..152d231a56 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -3,4 +3,9 @@
 menu "K3 boards"
         depends on ARCH_K3
 
+config MACH_BEAGLEPLAY
+	bool "BeagleBoard BeaglePlay"
+	help
+	  Say Y here if you are using a TI AM62x based BeaglePlay board
+
 endmenu
diff --git a/images/Makefile b/images/Makefile
index c1cb56f5b1..d8cb45dbc0 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -166,6 +166,7 @@ include $(srctree)/images/Makefile.zynq
 include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
 include $(srctree)/images/Makefile.riscv
+include $(srctree)/images/Makefile.k3
 
 
 pblb-$(CONFIG_BOARD_GENERIC_DT) += start_dt_2nd
diff --git a/images/Makefile.k3 b/images/Makefile.k3
new file mode 100644
index 0000000000..55d2e7ceeb
--- /dev/null
+++ b/images/Makefile.k3
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for K3 images
+#
+
+pblb-$(CONFIG_MACH_BEAGLEPLAY) += start_beagleplay
+FILE_barebox-beagleplay.img = start_beagleplay.pblb
+image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
+
-- 
2.39.2



