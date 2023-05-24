Delivery-date: Thu, 25 May 2023 01:45:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAP-00CrgU-KM
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAM-00076Z-Qk
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p7sD1qzHPL2e9smUEtdK6b9jMQ2i2/XzLSVmioK+i6A=; b=pp/O5Y3qvbCfA3nmwk6/92rfYB
	3JjCFjiNSqO10jxjKGDcfzQ8pCGZvhQ5DpxzDpRshqEMAI1F8cucOM2kQYcKkyIYb8ltN3L+Xe4mD
	GEYD6WhQ4rW97R8Wd7haJTBB525fUAjHkloHqNkYNRxml1srWun3AqiClt/wAHnk21NfPSDOYl5iR
	Lsg2CAiMLVLmWir3LUv8nYZlDHEYVmCGH0/4GL3KVIF128H3J7+09X8feeex81Ddh3VdmgQ0BeW6b
	Ira5Fs0uLtzCh+yeNpbFcuRKCV9MNVVH/BAUjVJTnGAIu/QmDXvXgZ0jPzJs0GeDEd3Z4EUItlUMY
	2k+aFUyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y9B-00EzSm-1D;
	Wed, 24 May 2023 23:44:01 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8x-00EzKd-2s
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:53 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 79A7B1C0011;
	Wed, 24 May 2023 23:43:41 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:27 +0200
Message-Id: <20230524234328.82741-13-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164348_217563_E9940230 
X-CRM114-Status: GOOD (  15.25  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 12/13] ARM: boards: sunxi: Add pine64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
rfc->v1:
 - removed max-frequency on eMMC and PIO device-tree node

 arch/arm/boards/Makefile                 |  1 +
 arch/arm/boards/pine64-pine64/Makefile   |  1 +
 arch/arm/boards/pine64-pine64/lowlevel.c | 70 ++++++++++++++++++++++++
 arch/arm/dts/Makefile                    |  1 +
 arch/arm/dts/sun50i-a64-pine64-plus.dts  | 16 ++++++
 arch/arm/mach-sunxi/Kconfig              |  5 ++
 images/Makefile.sunxi                    | 10 ++++
 7 files changed, 104 insertions(+)
 create mode 100644 arch/arm/boards/pine64-pine64/Makefile
 create mode 100644 arch/arm/boards/pine64-pine64/lowlevel.c
 create mode 100644 arch/arm/dts/sun50i-a64-pine64-plus.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f4796f5374..2a9424d2c2 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -97,6 +97,7 @@ obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
 obj-$(CONFIG_MACH_PINE64_PINEPHONE)		+= pine64-pinephone/
+obj-$(CONFIG_MACH_PINE64_PINE64)		+= pine64-pine64/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
diff --git a/arch/arm/boards/pine64-pine64/Makefile b/arch/arm/boards/pine64-pine64/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/arm/boards/pine64-pine64/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/pine64-pine64/lowlevel.c b/arch/arm/boards/pine64-pine64/lowlevel.c
new file mode 100644
index 0000000000..d7d3111557
--- /dev/null
+++ b/arch/arm/boards/pine64-pine64/lowlevel.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <debug_ll.h>
+#include <linux/sizes.h>
+#include <linux/bitops.h>
+#include <mach/sunxi/barebox-arm.h>
+#include <mach/sunxi/init.h>
+#include <mach/sunxi/xload.h>
+#include <mach/sunxi/egon.h>
+#include <mach/sunxi/rmr_switch.h>
+#include <mach/sunxi/sun50i-regs.h>
+#include <mach/sunxi/sunxi-pinctrl.h>
+
+SUN50I_A64_ENTRY_FUNCTION(start_pine64_pine64, r0, r1, r2)
+{
+	extern char __dtb_z_sun50i_a64_pine64_plus_start[];
+	void *fdt;
+	u32 size;
+
+	sunxi_switch_to_aarch64(.text_head_soc_header2, SUN50I_A64_RVBAR_IOMAP);
+
+	sun50i_cpu_lowlevel_init();
+	sun50i_uart_setup();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	/* Skip SDRAM initialization if we run from it */
+	if (get_pc() < SUN50I_DRAM_ADDR) {
+		size = sun50i_a64_ddr3_dram_init();
+		if (size == 0) {
+			puts_ll("FAIL: dram init\r\n");
+			goto reset;
+		}
+		puthex_ll(size);
+		putc_ll('\r');	putc_ll('\n');
+	}
+
+	puts_ll("now booting\r\n");
+	fdt = __dtb_z_sun50i_a64_pine64_plus_start + get_runtime_offset();
+	barebox_arm_entry(SUN50I_DRAM_ADDR, SZ_1G, fdt);
+
+reset:
+	sun50i_cpu_lowlevel_reset();
+}
+
+SUN50I_A64_ENTRY_FUNCTION(start_pine64_pine64_xload, r0, r1, r2)
+{
+	u32 size;
+
+	sunxi_egon_header(.text_head_soc_header0);
+	sunxi_switch_to_aarch64(.text_head_soc_header1, SUN50I_A64_RVBAR_IOMAP);
+
+	sun50i_cpu_lowlevel_init();
+	sun50i_uart_setup();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	size = sun50i_a64_ddr3_dram_init();
+	if (size == 0) {
+		puts_ll("FAIL: dram init\r\n");
+		goto reset;
+	}
+
+	/* now let's boot from sd */
+	sun50i_mmc0_start_image();
+reset:
+	sun50i_cpu_lowlevel_reset();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e989f399c2..23589a5dfa 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -82,6 +82,7 @@ lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1) += stm32mp157c-phycore-stm32mp1-3.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_PINE64_PINEPHONE) += sun50i-a64-pinephone-1_2.dtb.o
+lwl-$(CONFIG_MACH_PINE64_PINE64) += sun50i-a64-pine64-plus.dtb.o
 lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
diff --git a/arch/arm/dts/sun50i-a64-pine64-plus.dts b/arch/arm/dts/sun50i-a64-pine64-plus.dts
new file mode 100644
index 0000000000..c16b683e88
--- /dev/null
+++ b/arch/arm/dts/sun50i-a64-pine64-plus.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <arm64/allwinner/sun50i-a64-pine64-plus.dts>
+/{
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x40000000>; /* 1 GB */
+	};
+};
+&mmc0 { /* SD */
+};
+&mmc1 { /* PIO */
+};
+&mmc2 { /* eMMC */
+	status = "ok";
+};
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
index 9975ceb471..0af924ba96 100644
--- a/arch/arm/mach-sunxi/Kconfig
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -21,4 +21,9 @@ config MACH_PINE64_PINEPHONE
 	select ARCH_SUN50I_A64
 	select ARM_USE_COMPRESSED_DTB
 
+config MACH_PINE64_PINE64
+	bool "Allwinner A64 based Pine64 PINE64"
+	select ARCH_SUN50I_A64
+	select ARM_USE_COMPRESSED_DTB
+
 endif
diff --git a/images/Makefile.sunxi b/images/Makefile.sunxi
index 070b1bf00d..75adba7f7f 100644
--- a/images/Makefile.sunxi
+++ b/images/Makefile.sunxi
@@ -20,3 +20,13 @@ image-$(CONFIG_MACH_PINE64_PINEPHONE) += barebox-pine64-pinephone_xload.img
 pblb-$(CONFIG_MACH_PINE64_PINEPHONE) += start_pine64_pinephone
 FILE_barebox-pine64-pinephone.img = start_pine64_pinephone.pblb
 image-$(CONFIG_MACH_PINE64_PINEPHONE) += barebox-pine64-pinephone.img
+
+pblb-$(CONFIG_MACH_PINE64_PINE64) += start_pine64_pine64
+FILE_barebox-pine64-pine64.img = start_pine64_pine64.pblb
+image-$(CONFIG_MACH_PINE64_PINE64) += barebox-pine64-pine64.img
+
+pblb-$(CONFIG_MACH_PINE64_PINE64) += start_pine64_pine64_xload
+MAX_PBL_IMAGE_SIZE_start_pine64_pine64_xload = 0x8000
+FILE_barebox-pine64-pine64_xload.img = start_pine64_pine64_xload.pblb.egonimg
+image-$(CONFIG_MACH_PINE64_PINE64) += barebox-pine64-pine64_xload.img
+
-- 
2.40.1



