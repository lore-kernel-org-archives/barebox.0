Delivery-date: Thu, 05 Jun 2025 15:13:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPc-0041Mj-1W
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPW-0000xB-JG
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cCU9MkL9Spo/Xjg9naWWMX+qMnsS+RdPnmN6vZz1gFo=; b=VOnpA8kJrXnKC4uDpfdRn7bcJm
	iigk+UIPi2bFFsRHRIeJTtAhKH4Sg6HIa5W78LI34dTb43F80OtSGgl9NU8FqzBiZw2/aCwUpJM3A
	93dSvXOmTirGMeT15QDpiuNmXmsEnSMK/r/8VK9n4+XQ76/n+GEpAOgFAdlwcEr7uC/tL5HbUAsXC
	hwh0ovPxOKJN+5VLBe7SGhFeV5zSna4uz8hAFViWhh3WReWggpxtNUlNlS7xpNAZEeyrPha2bVc3g
	x6hKx2J0mmWXbYaf6iF7P7v+QN6GavQsbVmP7XuVOnE8A6M6BVc31IF+Uh03FpXIyiKweT+AzyIzP
	wun14Mdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOu-0000000FZCm-2njF;
	Thu, 05 Jun 2025 13:12:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFE-0000000FXqA-1SOd
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:02:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-00011I-8J; Thu, 05 Jun 2025 15:02:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-001xjI-0C;
	Thu, 05 Jun 2025 15:02:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1u;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-30-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=8199;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cSsV+2R3/+Hh72nnWT8KgGZ4bQvPe6PYahZqICuRDiw=;
 b=t9fPizwC8ce92Fgaf1VAv4CbhhfuPr2LLCM75Mery02wAr5l2Z9Ax7Akok5gB6AGbxNjn7Fvu
 8xpFUSd5UqyCbewRFWt7JeW2o20fP4nToA9MMeXkJ3RsTo171Qs6iN5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060256_549532_51F77337 
X-CRM114-Status: GOOD (  14.66  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 30/33] ARM: k3: add AM62l3 EVM board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the AM62l3 EVM board [1]. Currently supported are:

- DRAM
- eMMC
- SD card
- Ethernet
- USB

[1] https://www.ti.com/tool/TMDS62LEVM

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile              |  1 +
 arch/arm/boards/am62lx-evm/Makefile   |  1 +
 arch/arm/boards/am62lx-evm/lowlevel.c | 37 ++++++++++++++++++++
 arch/arm/dts/Makefile                 |  1 +
 arch/arm/mach-k3/Kconfig              |  6 ++++
 images/Makefile.k3                    | 63 +++++++++++++++++++++++++++++++++--
 6 files changed, 107 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 908497cd8b0509bdca01c9ccfbb1501654051bda..ac1fa74d4c03de7a462746cb93a061017cd2b64d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)		+= advantech-mx6/
 obj-$(CONFIG_MACH_AFI_GF)			+= afi-gf/
 obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
 obj-$(CONFIG_MACH_AM625_SK)			+= am625-sk/
+obj-$(CONFIG_MACH_AM62LX_EVM)			+= am62lx-evm/
 obj-$(CONFIG_MACH_AT91RM9200EK)			+= at91rm9200ek/
 obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
 obj-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek/
diff --git a/arch/arm/boards/am62lx-evm/Makefile b/arch/arm/boards/am62lx-evm/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..562535d391d66ae2068377967c4c84844cddd380
--- /dev/null
+++ b/arch/arm/boards/am62lx-evm/Makefile
@@ -0,0 +1 @@
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/am62lx-evm/lowlevel.c b/arch/arm/boards/am62lx-evm/lowlevel.c
new file mode 100644
index 0000000000000000000000000000000000000000..c2f5771dcf53fb49f3d7e1cf9fd0e8a93d0323d7
--- /dev/null
+++ b/arch/arm/boards/am62lx-evm/lowlevel.c
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/k3/debug_ll.h>
+#include <debug_ll.h>
+#include <pbl.h>
+#include <cache.h>
+#include <pbl/handoff-data.h>
+#include <compressed-dtb.h>
+#include <mach/k3/common.h>
+
+#define SECURE_SIZE 0x600000
+
+static noinline void am62lx_evm_continue(void)
+{
+	extern char __dtb_z_k3_am62l3_evm_start[];
+
+	pbl_set_putc((void *)debug_ll_ns16550_putc, IOMEM(AM62X_UART_UART0_BASE));
+
+	putc_ll('>');
+
+	barebox_arm_entry(0x80000000 + SECURE_SIZE, SZ_2G - SECURE_SIZE, __dtb_z_k3_am62l3_evm_start);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_am62lx_evm, 0x80800000, r0, r1, r2)
+{
+	writel(0x00000000, 0x040841b8);
+
+	k3_debug_ll_init(IOMEM(AM62X_UART_UART0_BASE));
+
+	relocate_to_current_adr();
+	setup_c();
+
+	am62lx_evm_continue();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3044c9bf120f9ece9564164b3fa569f4b7be1881..6612a514523103fdaaae026527f3441ebc57d228 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -7,6 +7,7 @@ obj- += dummy.o
 lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_AM625_SK) += k3-am625-sk.dtb.o k3-am625-r5-sk.dtb.o k3-am625sip-r5-sk.dtb.o
+lwl-$(CONFIG_MACH_AM62LX_EVM) += k3-am62l3-evm.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o k3-am625-r5-beagleplay.dtb.o
 lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index cda44807e8a1db7c2f701309948c7bd1a863d365..338421a8af1715c72a23adc41fb7a21d69091585 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -46,6 +46,12 @@ config MACH_BEAGLEPLAY
 	help
 	  Say Y here if you are using a TI AM62x based BeaglePlay board
 
+config MACH_AM62LX_EVM
+	bool "TI AM62Lx EVM"
+	select MACH_AM62LX
+	help
+	  Say Y here if you are using a TI AM62Lx EVM board
+
 config ARCH_K3_AUTHENTICATE_IMAGE
 	bool "Force authentication of FIP image against ROM API"
 	help
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 12db9c59a96eade62679987aedb9b5433cec3c2f..ed8cdf126a9d4487e3423fcb6959c2d2a1fff3bf 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -17,6 +17,9 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
 
 endif
 
+KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
+KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
+
 ifdef CONFIG_MACH_K3_CORTEX_R5
 
 SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62x.k3cfg
@@ -24,8 +27,6 @@ DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am62x.k3cfg
 SYSFW_am625_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-hs-fs-enc.bin
 SYSFW_am625_gp=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-gp.bin
 INNERDATA_am625=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-hs-fs-cert.bin
-KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
-KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
 
 ## TI am625(sip)-SK ##
 SYSFW_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
@@ -60,6 +61,29 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-r5.img
 
 endif
 
+SYSFWDATA_am62lx=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62l.k3cfg
+SYSFW_am62lx_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-fs-enc.bin
+INNERDATA_am62lx=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-fs-cert.bin
+
+## TI am62lx-EVM ##
+SYSFW_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFW_am62lx_hs_fs)
+SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFWDATA_am62lx)
+TFA_start_am62lx_evm.pblb.k3_am62lx_img=$(FIRMWARE_DIR)/am62lx-bl31.bin
+INNERDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(INNERDATA_am62lx)
+KEY_start_am62lx_evm.pblb.k3_am62lx_img=$(KEY_custmpk)
+
+SYSFW_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFW_am62lx_hs_fs)
+SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFWDATA_am62lx)
+INNERDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(INNERDATA_am62lx)
+TFA_BL1_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(FIRMWARE_DIR)/am62lx-bl1.bin
+KEY_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(KEY_custmpk)
+
+pblb-$(CONFIG_MACH_AM62LX_EVM) += start_am62lx_evm
+FILE_barebox-am62lx-evm.img = start_am62lx_evm.pblb.k3_am62lx_img
+image-$(CONFIG_MACH_AM62LX_EVM) += barebox-am62lx-evm.img barebox-am62lx-evm-tiboot3.img
+
+FILE_barebox-am62lx-evm-tiboot3.img = start_am62lx_evm.pblb.k3_am62lx_tiboot3_img
+
 quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
       cmd_k3_am62x_image = \
 		if [ -n "$(INNERDATA_$(@F))" ]; then				\
@@ -74,5 +98,40 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
 			$(DMDATA_$(@F)):17:16:0:43c3a800			\
 			--key $(KEY_$(@F)) --out $@
 
+quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
+      cmd_k3_am62lx_image = \
+		if [ -n "$(INNERDATA_$(@F))" ]; then				\
+			inner="$(INNERDATA_$(@F)):3:0:0:00000000";		\
+		fi;								\
+										\
+		if [ -n "$(FIRMWARE_DIR)/am62lx-bl32.bin" ]; then		\
+			optee=$(FIRMWARE_DIR)/am62lx-bl32.bin:17:16:0:80200000;	\
+		fi;								\
+										\
+		$(srctree)/scripts/k3img					\
+			$(TFA_$(@F)):1:16:0:80000000				\
+			$(SYSFW_$(@F)):2:0:0:00040000				\
+			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
+			$$inner							\
+			$$optee							\
+			$<:17:16:0:82000000					\
+			--key $(KEY_$(@F)) --out $@
+
+quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
+      cmd_k3_am62lx_tiboot3_image = \
+		$(srctree)/scripts/k3img					\
+			$(TFA_BL1_$(@F)):1:16:160:70800000			\
+			$(SYSFW_$(@F)):2:0:0:00040000				\
+			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
+			$(INNERDATA_$(@F)):3:0:0:00000000			\
+			--key $(KEY_$(@F))					\
+			--out $@
+
 $(obj)/%.k3_am62x_img: $(obj)/% scripts/k3img FORCE
 	$(call if_changed,k3_am62x_image)
+
+$(obj)/%.k3_am62lx_img: $(obj)/% scripts/k3img FORCE
+	$(call if_changed,k3_am62lx_image)
+
+$(obj)/%.k3_am62lx_tiboot3_img: $(obj)/% scripts/k3img FORCE
+	$(call if_changed,k3_am62lx_tiboot3_image)

-- 
2.39.5



