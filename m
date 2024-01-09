Delivery-date: Tue, 09 Jan 2024 17:17:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmv-00AUNg-1k
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmu-0000cS-Fw
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1eunCA0VWAi2J7i2UACY/vDI7UKTNynmAM9jaX0U7ag=; b=VLJm1D+tBkp02STe3mS22G3+7Y
	2wQwbd/HOgUtRkdP/WNhdgzS5ye2RYDclLdS+YS3MWlDbA9VFROA4ImnpexbePSI3XEa9paAyA5xF
	0M1bukqp393/+QwiYVqhEasXuNOBw/TAAHTNWzxO9HlCi18Z+OPnAo2Y26ernczcbBakSL21/ueod
	5uNDX9q8hsaKBLdpVZGURfrOpKal9bJLJxu6rZgi8LJsgT4j05gjQL5m8/fGGbDxX+W4UfDCgtpWj
	pOGwA7hjUOrq/xOqrgDVHB15x6iEDp42hnmGXyBiwTQa4ymnWsuff/ssrjWr9FNm+8wGi9KIK5Hli
	UHHYDMKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEll-008o73-2q;
	Tue, 09 Jan 2024 16:16:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElO-008nnk-2O
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lE-DF; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCh-LT; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7Qd-1u;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:17 +0100
Message-Id: <20240109161527.3237581-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081538_971978_2917C182 
X-CRM114-Status: GOOD (  20.17  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 11/21] ARM: Layerscape: LS1028a: fixup icids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DMA operations from peripherals have a stream id attached to them
which must match the stream ids configured in the IOMMU. Configure the
stream ids in the peripheral registers and fixup the Kernel device tree
with the configured stream ids.
The code is based on the corresponding U-Boot code as of
U-Boot-2023.10-rc1. The result is hard to match against the U-Boot code
though as U-Boot hides the initialisation arrays behind multiply layered
defines which are dropped here to make the code readable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c      | 213 +++++++++++++++++++++++++++
 arch/arm/mach-layerscape/soc.c       |   1 +
 include/mach/layerscape/layerscape.h |   1 +
 3 files changed, 215 insertions(+)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 3207d55bf0..ebe3896075 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -5,6 +5,7 @@
 #include <init.h>
 #include <of_address.h>
 #include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/immap_lsch3.h>
 #include <soc/fsl/fsl_qbman.h>
 #include <soc/fsl/fsl_fman.h>
 #include <mach/layerscape/layerscape.h>
@@ -580,3 +581,215 @@ void ls1046a_setup_icids(void)
 
 	of_register_fixup(of_fixup_ls1046a, NULL);
 }
+
+static const struct icid_id_table icid_tbl_ls1028a[] = {
+	{
+		.compat = "snps,dwc3",
+		.id = 1,
+		.reg = 1,
+		.compat_addr = LSCH3_XHCI_USB1_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, usb1_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "snps,dwc3",
+		.id = 2,
+		.reg = 2,
+		.compat_addr = LSCH3_XHCI_USB2_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, usb2_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "fsl,esdhc",
+		.id = 3,
+		.reg = 3,
+		.compat_addr = LSCH3_ESDHC1_BASE_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, sdmm1_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "fsl,esdhc",
+		.id = 69,
+		.reg = 69,
+		.compat_addr = LSCH3_ESDHC2_BASE_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, sdmm2_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "fsl,ls1028a-ahci",
+		.id = 4,
+		.reg = 4,
+		.compat_addr = LSCH3_AHCI1_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, sata1_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "fsl,vf610-edma",
+		.id = 40,
+		.reg = 40,
+		.compat_addr = LSCH3_EDMA_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, spare3_amqr) + LSCH3_GUTS_ADDR,
+	},  {
+		.compat = "fsl,ls1028a-qdma",
+		.id = 5,
+		.reg = (1 << 31) | 5,
+		.compat_addr = LSCH3_QDMA_ADDR,
+		.reg_addr = LSCH3_QDMA_ADDR + QMAN_CQSIDR_REG,
+	}, {
+		.compat = NULL,
+		.id = 5,
+		.reg = (1 << 31) | 5,
+		.compat_addr = LSCH3_QDMA_ADDR,
+		.reg_addr = LSCH3_QDMA_ADDR + QMAN_CQSIDR_REG + 4,
+	}, {
+		.compat = "vivante,gc",
+		.id = 71,
+		.reg = 71,
+		.compat_addr = LSCH3_GPU_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, misc1_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "arm,mali-dp500",
+		.id = 72,
+		.reg = 72,
+		.compat_addr = LSCH3_DISPLAY_ADDR,
+		.reg_addr = offsetof(struct lsch3_ccsr_gur, spare2_amqr) + LSCH3_GUTS_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = 65,
+		.reg = 65,
+		.compat_addr = LSCH3_SEC_JR0_ADDR,
+		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[0].ls) + LSCH3_SEC_ADDR,
+        }, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = 66,
+		.reg = 66,
+		.compat_addr = LSCH3_SEC_JR1_ADDR,
+		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[1].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 67,
+		.reg = 67,
+		.compat_addr = LSCH3_SEC_JR2_ADDR,
+		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[2].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = 68,
+		.reg = 68,
+		.compat_addr = LSCH3_SEC_JR3_ADDR,
+		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[3].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 64,
+		.reg = 64,
+		.compat_addr = 0,
+		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[0].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 64,
+		.reg = 64,
+		.compat_addr = 0,
+		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[1].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 64,
+		.reg = 64,
+		.compat_addr = 0,
+		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[2].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 64,
+		.reg = 64,
+		.compat_addr = 0,
+		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[3].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 64,
+		.reg = 64,
+		.compat_addr = 0,
+		.reg_addr = offsetof(struct ccsr_sec, decoliodnr[0].ls) + LSCH3_SEC_ADDR,
+	}, {
+		.id = 64,
+		.reg = 64,
+		.compat_addr = 0,
+		.reg_addr = offsetof(struct ccsr_sec, decoliodnr[1].ls) + LSCH3_SEC_ADDR,
+	}
+};
+
+static int of_fixup_icid_ls1028a(struct device_node *root, void *context)
+{
+	phandle iommu_handle;
+
+	iommu_handle = of_get_iommu_handle(root);
+	if (!iommu_handle)
+		return 0;
+
+	of_fixup_icid(root, iommu_handle, icid_tbl_ls1028a, ARRAY_SIZE(icid_tbl_ls1028a));
+
+	return 0;
+}
+
+/* offset of IERB config register per PCI function */
+static const int ierb_offset[] = {
+	0x0800,
+	0x1800,
+	0x2800,
+	0x3800,
+	0x4800,
+	0x5800,
+	0x6800,
+	-1,
+	0x0804,
+	0x0808,
+	0x1804,
+	0x1808,
+};
+
+#define ECAM_IERB_BASE                0x1f0800000ULL
+#define ECAM_IERB_MSICAR              (ECAM_IERB_BASE + 0xa400)
+#define ECAM_IERB_MSICAR_VALUE                0x30
+#define FSL_ECAM_STREAM_ID_START 41
+
+/*
+ * Use a custom function for LS1028A, for now this is the only SoC with IERB
+ * and we're currently considering reorganizing IERB for future SoCs.
+ */
+static void ls1028a_set_ecam_icids(void)
+{
+	int i;
+
+	out_le32(ECAM_IERB_MSICAR, ECAM_IERB_MSICAR_VALUE);
+
+	for (i = 0; i < ARRAY_SIZE(ierb_offset); i++) {
+		if (ierb_offset[i] < 0)
+			continue;
+
+		out_le32(ECAM_IERB_BASE + ierb_offset[i],
+			 FSL_ECAM_STREAM_ID_START + i);
+	}
+}
+
+static int of_fixup_ecam_ls1028a(struct device_node *root, void *context)
+{
+	struct device_node *np;
+	int i, ret;
+	const char *props[] = { "msi-map", "iommu-map" };
+	uint32_t map[4];
+
+	np = of_find_compatible_node(root, NULL, "pci-host-ecam-generic");
+	if (!np) {
+		pr_info("No \"pci-host-ecam-generic\" node found, won't fixup\n");
+		return 0;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(props); i++) {
+		ret = of_property_read_u32_array(np, props[i], map, 4);
+		if (ret) {
+			pr_err("Cannot read \"%s\" property: %pe", props[i], ERR_PTR(ret));
+			return ret;
+		}
+
+		map[2] = FSL_ECAM_STREAM_ID_START;
+		map[3] = ARRAY_SIZE(ierb_offset);
+		ret = of_property_write_u32_array(np, props[i], map, 4);
+		if (ret) {
+			pr_err("Cannot write \"%s\" property: %pe", props[i], ERR_PTR(ret));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+void ls1028a_setup_icids(void)
+{
+	setup_icid_offsets(icid_tbl_ls1028a, ARRAY_SIZE(icid_tbl_ls1028a), true);
+
+	ls1028a_set_ecam_icids();
+
+	of_register_fixup(of_fixup_icid_ls1028a, NULL);
+	of_register_fixup(of_fixup_ecam_ls1028a, NULL);
+}
diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
index 8507a66ff6..a50aafc954 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -93,6 +93,7 @@ static int ls1028a_init(void)
 		return -EINVAL;
 
 	layerscape_register_pbl_image_handler();
+	ls1028a_setup_icids();
 
 	return 0;
 }
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index 3dacfcb29f..a9037125c8 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -58,6 +58,7 @@ void ls1046a_bootsource_init(void);
 void layerscape_register_pbl_image_handler(void);
 void ls102xa_smmu_stream_id_init(void);
 void ls1021a_restart_register_feature(void);
+void ls1028a_setup_icids(void);
 void ls1046a_setup_icids(void);
 
 extern int __layerscape_soc_type;
-- 
2.39.2



