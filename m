Delivery-date: Mon, 21 Oct 2024 10:31:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2non-007078-11
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:31:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nol-0006hc-8h
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:31:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O5T2F3u2D0sD4uXoqgFGGkik/TOp9Ha7/NMIDWAQHSs=; b=xgqePZb/WXEAHLlA0ZiHax31MU
	d86jRJ6RO+2N83TBQ0q7Tn0+ZaXtZRzOBwmzdzASpTKgDRl7yLRuRKObpvweYj+6E96UzclHROAiN
	mo/JkbKkprIifS2UEFoipomo3IIa5IdoYcWu4389IN+t6/YfARUnUVonyyM9SjwsX3b7Nu/VJFyct
	4mke5QRe69qGqt4Jv99lEX8BBZ2OgladF01x3DNJYUjF3LJFe4qhr0lJ7GSR5IeyUBeRViO0p39f8
	RFOywIjZDlTd2M3ATGwKEIOF0AA+4pV1JCyOSskiAKCDCTeFpDRNv0Cnyfo1FhCqoNk5GwU4gJ9WP
	2rl5+x1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2noX-00000006YT0-2FyV;
	Mon, 21 Oct 2024 08:30:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mjP-00000006Lre-0IQX
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:21:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-0005nw-SO; Mon, 21 Oct 2024 09:21:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-000ecS-1s;
	Mon, 21 Oct 2024 09:21:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-00FGWz-1X;
	Mon, 21 Oct 2024 09:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Oct 2024 09:21:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-arm-layerscape-tfa-v1-5-0980697b6f66@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729495277; l=8960;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IvoizUqk2lFSFB4eqt52FHC0VHzgFun1FqnsfDxIHCQ=;
 b=WeqpVzkefRUu2RlOtOO9EmKBqJ+24tr9SC5tuySiBHsriCj34NZsiW2ijGFXxW7q3KqtRi2on
 oHQHNJrHI7sB13FXHFwfF6gAQQq1ANTbS3aakcrpauekLoFHTM3D7My
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_002135_314226_F3826429 
X-CRM114-Status: GOOD (  21.55  )
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
Subject: [PATCH 5/9] ARM: Layerscape: LS1046a: add TF-A support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Right now we still use PPA on LS1046a. This has long been deprecated and
replaced with TF-A. Add support for starting the TF-A on LS1046a based
boards as a first step to get rid of PPA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/lowlevel.c |  2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c |  2 +-
 arch/arm/mach-layerscape/Kconfig      |  2 ++
 arch/arm/mach-layerscape/Makefile     |  1 +
 arch/arm/mach-layerscape/tfa.c        | 29 +++++++++++++++++++++++++++++
 arch/arm/mach-layerscape/xload-qspi.c | 12 ++++++++----
 arch/arm/mach-layerscape/xload.c      |  6 +++---
 drivers/mci/imx-esdhc-pbl.c           |  5 ++++-
 firmware/Kconfig                      |  3 +++
 firmware/Makefile                     |  1 +
 include/mach/layerscape/xload.h       |  8 +++++---
 11 files changed, 58 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 753fca3272..bcc95cc59d 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -210,7 +210,7 @@ static noinline __noreturn void ls1046ardb_r_entry(void)
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_esdhc_start_image();
+	ls1046a_esdhc_start_image(NULL);
 
 err:
 	pr_err("Booting failed\n");
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 6531b22bd1..5ccafb2d77 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -331,7 +331,7 @@ static noinline __noreturn void tqmls1046a_r_entry(bool is_8g)
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_xload_start_image();
+	ls1046a_xload_start_image(NULL);
 
 	pr_err("Booting failed\n");
 
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 5658a63b33..9d15ba0173 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -24,6 +24,7 @@ config ARCH_LS1028
 config ARCH_LS1046
 	bool
 	select CPU_V8
+	select ARM_ATF
 	select SYS_SUPPORTS_64BIT_KERNEL
 
 if 64BIT
@@ -47,6 +48,7 @@ config MACH_TQMLS1046A
 	select MCI_IMX_ESDHC_PBL
 	select DDR_FSL
 	select DDR_FSL_DDR4
+	select FIRMWARE_LS1046A_ATF
 
 endif
 
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index e4bb1b42f2..ee7df5ea19 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -14,3 +14,4 @@ lwl-$(CONFIG_ARCH_LS1021) += lowlevel-ls102xa.o
 obj-$(CONFIG_ARCH_LS1021) += restart.o ls102xa_stream_id.o
 
 lwl-$(CONFIG_ARCH_LS1028) += lowlevel-ls1028a.o
+pbl-$(CONFIG_FIRMWARE_LS1046A_ATF) += tfa.o
diff --git a/arch/arm/mach-layerscape/tfa.c b/arch/arm/mach-layerscape/tfa.c
new file mode 100644
index 0000000000..c8a8c8bf1d
--- /dev/null
+++ b/arch/arm/mach-layerscape/tfa.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <firmware.h>
+#include <asm/atf_common.h>
+#include <asm/cache.h>
+#include <mach/layerscape/layerscape.h>
+#include <mach/layerscape/xload.h>
+
+void ls1046_start_tfa(void *barebox, struct dram_regions_info *dram_info)
+{
+	void (*bl31)(void) = (void *)0xfbe00000;
+	size_t bl31_size;
+	void *bl31_image;
+	struct bl2_to_bl31_params_mem_v2 *params;
+
+	get_builtin_firmware_ext(ls1046a_bl31_bin, barebox, &bl31_image, &bl31_size);
+	memcpy(bl31, bl31_image, bl31_size);
+
+	sync_caches_for_execution();
+
+	/* Setup an initial stack for EL2 */
+	asm volatile("msr sp_el2, %0" : : "r" ((unsigned long)barebox - 16) : "cc");
+
+	params = bl2_plat_get_bl31_params_v2(0, (uintptr_t)barebox, 0);
+	params->bl31_ep_info.args.arg3 = (unsigned long)dram_info;
+
+	printf("Starting bl31\n");
+
+	bl31_entry_v2((uintptr_t)bl31, &params->bl_params, NULL);
+}
diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layerscape/xload-qspi.c
index 11119840c3..fa5b699d4a 100644
--- a/arch/arm/mach-layerscape/xload-qspi.c
+++ b/arch/arm/mach-layerscape/xload-qspi.c
@@ -19,7 +19,8 @@ struct layerscape_base_addr {
 	void *qspi_mem_base;
 };
 
-static int layerscape_qspi_start_image(struct layerscape_base_addr *base)
+static int layerscape_qspi_start_image(struct layerscape_base_addr *base,
+				       struct dram_regions_info *dram_info)
 {
 	void (*barebox)(void) = base->membase;
 
@@ -28,6 +29,9 @@ static int layerscape_qspi_start_image(struct layerscape_base_addr *base)
 
 	memcpy(base->membase, base->qspi_mem_base + BAREBOX_START, barebox_image_size);
 
+	if (IS_ENABLED(CONFIG_FIRMWARE_LS1046A_ATF))
+		ls1046_start_tfa(base->membase, dram_info);
+
 	sync_caches_for_execution();
 
 	printf("Starting barebox\n");
@@ -39,7 +43,7 @@ static int layerscape_qspi_start_image(struct layerscape_base_addr *base)
 	return -EIO;
 }
 
-int ls1046a_qspi_start_image(void)
+int ls1046a_qspi_start_image(struct dram_regions_info *dram_info)
 {
 	struct layerscape_base_addr base;
 
@@ -47,7 +51,7 @@ int ls1046a_qspi_start_image(void)
 	base.membase = IOMEM(LS1046A_DDR_SDRAM_BASE);
 	base.qspi_mem_base = IOMEM(0x40000000);
 
-	return layerscape_qspi_start_image(&base);
+	return layerscape_qspi_start_image(&base, dram_info);
 }
 
 int ls1021a_qspi_start_image(void)
@@ -58,5 +62,5 @@ int ls1021a_qspi_start_image(void)
 	base.membase = IOMEM(LS1021A_DDR_SDRAM_BASE);
 	base.qspi_mem_base = IOMEM(0x40000000);
 
-	return layerscape_qspi_start_image(&base);
+	return layerscape_qspi_start_image(&base, NULL);
 }
diff --git a/arch/arm/mach-layerscape/xload.c b/arch/arm/mach-layerscape/xload.c
index 9103e8b4bc..cbdf14344e 100644
--- a/arch/arm/mach-layerscape/xload.c
+++ b/arch/arm/mach-layerscape/xload.c
@@ -5,7 +5,7 @@
 #include <mach/layerscape/layerscape.h>
 #include <mach/layerscape/xload.h>
 
-int ls1046a_xload_start_image(void)
+int ls1046a_xload_start_image(struct dram_regions_info *dram_info)
 {
 	enum bootsource src;
 
@@ -13,10 +13,10 @@ int ls1046a_xload_start_image(void)
 
 	switch (src) {
 	case BOOTSOURCE_SPI_NOR:
-		return ls1046a_qspi_start_image();
+		return ls1046a_qspi_start_image(dram_info);
 #if defined(CONFIG_MCI_IMX_ESDHC_PBL)
 	case BOOTSOURCE_MMC:
-		return ls1046a_esdhc_start_image();
+		return ls1046a_esdhc_start_image(dram_info);
 #endif
 	default:
 		pr_err("Unknown bootsource\n");
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 3bf3a7ace6..0e4b6114fd 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -352,7 +352,7 @@ static int layerscape_esdhc_load_image(struct fsl_esdhc_host *host, void *adr, u
  * Return: If successful, this function does not return. A negative error
  * code is returned when this function fails.
  */
-int ls1046a_esdhc_start_image(void)
+int ls1046a_esdhc_start_image(struct dram_regions_info *dram_info)
 {
 	int ret;
 	struct esdhc_soc_data data = {
@@ -370,6 +370,9 @@ int ls1046a_esdhc_start_image(void)
 	if (ret)
 		return ret;
 
+	if (IS_ENABLED(CONFIG_FIRMWARE_LS1046A_ATF))
+		ls1046_start_tfa(barebox, dram_info);
+
 	printf("Starting barebox\n");
 
 	barebox();
diff --git a/firmware/Kconfig b/firmware/Kconfig
index ae7bbdc71e..d068e6d983 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -98,4 +98,7 @@ config FIRMWARE_CCBV2_OPTEE
 config FIRMWARE_LS1028A_ATF
 	bool
 
+config FIRMWARE_LS1046A_ATF
+	bool
+
 endmenu
diff --git a/firmware/Makefile b/firmware/Makefile
index 7265c55c42..9351e24e86 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -33,6 +33,7 @@ firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bi
 
 firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
 fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
+fw-external-$(CONFIG_FIRMWARE_LS1046A_ATF) += ls1046a-bl31.bin
 
 pbl-firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
 pbl-firmware-$(CONFIG_FIRMWARE_TQMA6UL_OPTEE) += mba6ul_optee.bin
diff --git a/include/mach/layerscape/xload.h b/include/mach/layerscape/xload.h
index 64990e2ca1..74f095d789 100644
--- a/include/mach/layerscape/xload.h
+++ b/include/mach/layerscape/xload.h
@@ -5,12 +5,14 @@
 
 struct dram_regions_info;
 
-int ls1046a_esdhc_start_image(void);
+int ls1046a_esdhc_start_image(struct dram_regions_info *dram_info);
 int ls1028a_esdhc1_start_image(struct dram_regions_info *dram_info);
 int ls1028a_esdhc2_start_image(struct dram_regions_info *dram_info);
-int ls1046a_qspi_start_image(void);
+int ls1046a_qspi_start_image(struct dram_regions_info *dram_info);
 int ls1021a_qspi_start_image(void);
-int ls1046a_xload_start_image(void);
+int ls1046a_xload_start_image(struct dram_regions_info *dram_info);
 int ls1021a_xload_start_image(void);
 
+void ls1046_start_tfa(void *barebox, struct dram_regions_info *dram_info);
+
 #endif /* __MACH_LAYERSCAPE_XLOAD_H */

-- 
2.39.5



