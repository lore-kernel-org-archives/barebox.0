Delivery-date: Thu, 04 Jan 2024 15:19:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ1-003cUQ-0M
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYz-0005JO-LO
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QwRlCM4hqTOcJE9/wuKlAMB4snKkKITMYu4zfqaXvYI=; b=yb0PFoyZ0asL4pRtjdAeRKSGkt
	ydm6M+QFKCva2Tr/lsZp4eF66qwIK6WsyCtQs7104J/PNn9yaJKOvqSBoZYaMkT0onr/ic0f6vVws
	00yNJLH4IvKuUsDCqN95XhTiw7aKdlUJxraT2SxncXBXeCb2MdvNRNfklH2VGcYv28ll3xp/gpc2w
	/3Fpg8ANBKJT8VuDFt/CTa3TIahJnNsJKMQw2Mrloq0tvJufZjgqOJnvHTfaA2iGUo211tfbgFJp8
	IFvG+lVGxiFi816IbORkqEzr2bTxWZvvKrfo+e9e9Ei9rnQLa0++692MN8d/Z9+D0Ekp+VegyaS5X
	f38L0bxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXs-00EJ8P-0h;
	Thu, 04 Jan 2024 14:18:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIzH-2N
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hr-Oo; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000Myh-Tb; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017zv-2f;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:45 +0100
Message-Id: <20240104141746.165014-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_880323_2FA6C223 
X-CRM114-Status: GOOD (  15.42  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/19] mci: imx-esdhc-pbl: implement esdhc xload for ls1028a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements esdhc xload support for LS1028a. Unlike LS1046a we use
TF-A rather than obsoleted PPA for EL3, so this code also starts the
TF-A.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c          | 55 +++++++++++++++++++++++++++-
 firmware/Kconfig                     |  3 ++
 firmware/Makefile                    |  1 +
 include/mach/layerscape/layerscape.h | 12 ++++++
 include/mach/layerscape/xload.h      |  4 ++
 5 files changed, 74 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index c13830d726..2c74d101e4 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -9,6 +9,8 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <mach/imx/xload.h>
+#include <firmware.h>
+#include <asm/atf_common.h>
 #ifdef CONFIG_ARCH_IMX
 #include <mach/imx/atf.h>
 #include <mach/imx/imx6-regs.h>
@@ -319,7 +321,8 @@ static int layerscape_esdhc_load_image(struct fsl_esdhc_host *host, void *adr, u
 	val |= div_val;
 	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
 
-	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
+	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL,
+		      ESDHC_SYSCTL_DMA_SNOOP | ESDHC_SYSCTL_PERIPHERAL_CLK_SEL);
 
 	ret = esdhc_read_blocks(host, adr, size);
 	if (ret) {
@@ -373,4 +376,54 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 
 	return -EINVAL;
 }
+
+static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_info *dram_info)
+{
+	struct esdhc_soc_data data = {
+		.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
+	};
+	struct fsl_esdhc_host host = {
+		.sdhci.base = base,
+		.socdata = &data,
+	};
+	void *sdram = (void *)0x80000000;
+	void (*bl31)(void) = (void *)0xfbe00000;
+	size_t bl31_size;
+	void *bl31_image;
+	struct bl2_to_bl31_params_mem_v2 *params;
+	unsigned long size = ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512);
+	void (*barebox)(unsigned long, unsigned long, unsigned long) =
+		(sdram + LS1046A_SD_IMAGE_OFFSET);
+	int ret;
+
+	ret = layerscape_esdhc_load_image(&host, sdram, size, 8 << 4);
+	if (ret)
+		return ret;
+
+	get_builtin_firmware_ext(ls1028a_bl31_bin, barebox, &bl31_image, &bl31_size);
+	memcpy(bl31, bl31_image, bl31_size);
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
+
+	return -EINVAL;
+}
+
+int ls1028a_esdhc1_start_image(struct dram_regions_info *dram_info)
+{
+	return ls1028a_esdhc_start_image(IOMEM(0x2140000), dram_info);
+}
+
+int ls1028a_esdhc2_start_image(struct dram_regions_info *dram_info)
+{
+	return ls1028a_esdhc_start_image(IOMEM(0x2150000), dram_info);
+}
+
 #endif
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 38fbf85555..2785c4aabe 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -58,4 +58,7 @@ config FIRMWARE_CCBV2_OPTEE
 	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
 	default y
 
+config FIRMWARE_LS1028A_ATF
+	bool
+
 endmenu
diff --git a/firmware/Makefile b/firmware/Makefile
index 51d98d54bf..9c3ffa4289 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -29,6 +29,7 @@ pbl-firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
 firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
+fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
 
 pbl-firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
 
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index 95c230b8f3..ceb7b983f6 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -29,4 +29,16 @@ static inline int ls1046a_ppa_init(resource_size_t ppa_start,
 }
 #endif
 
+struct dram_region_info {
+        uint64_t addr;
+        uint64_t size;
+};
+#define NUM_DRAM_REGIONS  3
+
+struct dram_regions_info {
+        uint64_t num_dram_regions;
+        int64_t total_dram_size;
+        struct dram_region_info region[NUM_DRAM_REGIONS];
+};
+
 #endif /* __MACH_LAYERSCAPE_H */
diff --git a/include/mach/layerscape/xload.h b/include/mach/layerscape/xload.h
index 0aeedc2834..86327c63e6 100644
--- a/include/mach/layerscape/xload.h
+++ b/include/mach/layerscape/xload.h
@@ -3,7 +3,11 @@
 #ifndef __MACH_LAYERSCAPE_XLOAD_H
 #define __MACH_LAYERSCAPE_XLOAD_H
 
+struct dram_regions_info;
+
 int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2);
+int ls1028a_esdhc1_start_image(struct dram_regions_info *dram_info);
+int ls1028a_esdhc2_start_image(struct dram_regions_info *dram_info);
 int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
 					     unsigned long r2);
 int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
-- 
2.39.2



