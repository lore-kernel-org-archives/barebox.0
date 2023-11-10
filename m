Delivery-date: Fri, 10 Nov 2023 14:02:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R99-005rgh-02
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R98-0005By-FE
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UtYS3EsgNUEXELu0auHouwOrEDJE1Magmv7QT6urg58=; b=1+/h1uCGFH9KAPNcuULrTK6dd2
	38u3UFApEVbJS3ZaDuExEwELLVZ++0xBpfmhDlqwOUFSamAECY0IWyKAR+scZh6fzgsaCTBPy56tx
	FwQkZXES9yjG80XpbtBhAnlfOEnuIF89ir1EGSsdjcNsxA3A6vyeuV3w7qy8m7lke4yFTMRH3TGo1
	cqki+zWB5jXO5hE0HbC8Br1nJwYKLhMEzjKZSohHbFV0yk4aEzmGpKlIAMK7BDaICjBFquzJ7BZ+b
	HudvWnliEf2xMTCtwzNBj8zu1EG1FJ6G/zYNKbY600xnPsFZ4D0uBj0HQbnB50fDNfQfHqKJSWpMP
	WMV7DulA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7t-008lxp-2m;
	Fri, 10 Nov 2023 13:00:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lw3-0N
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UtYS3EsgNUEXELu0auHouwOrEDJE1Magmv7QT6urg58=; b=YPNis3DV+PTuEcgxwTysjgibJj
	7m0euSqqruDH8CLhLnkygYzvEAnEpjEDdQPZOpRW1Gzv49GoES+T4xa3/NgXfO4FzmZRPY/5DIlSq
	kr9NoXqpVxF9jDmOTLUxyRX09xPSQ5PfTgmu60L4nftQhvJdBj9KF36Zfe9DnQW/dLXf9PpyHlbFT
	3zCbQuJDKC7eClOwIfIB49aNhRZmyA0Fho1V1ho3f5rXUgQLs9/P5/hLj/6f0RziLaFEcXFii55m3
	2EcpUmdlFcXxr6//UOSrCLa9rcP/CgxLTZKHfD2aQeVfQ8PDodPttNz639oPyRmL3GVAeGT64JwOQ
	QpVfc24Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3u-0i
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043N-HW; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081ZE-Ca; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096NU-0x;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:24 +0100
Message-Id: <20231110130028.2123895-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_674572_73433351 
X-CRM114-Status: GOOD (  17.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/13] ddr: imx8m: split header file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Split the header file to a common part and a SoC specific part so that
upcoming i.MX9 support can re-use the common part.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/soc/imx/ddr.h   | 150 ++++++++++++++++++++++++++++++++++++++++
 include/soc/imx8m/ddr.h | 140 +------------------------------------
 2 files changed, 151 insertions(+), 139 deletions(-)
 create mode 100644 include/soc/imx/ddr.h

diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
new file mode 100644
index 0000000000..711abc07ba
--- /dev/null
+++ b/include/soc/imx/ddr.h
@@ -0,0 +1,150 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2017 NXP
+ */
+
+#ifndef __SOC_IMX_DDR_H
+#define __SOC_IMX_DDR_H
+
+/* user data type */
+enum fw_type {
+	FW_1D_IMAGE,
+	FW_2D_IMAGE,
+};
+
+enum dram_type {
+#define DRAM_TYPE_MASK	0x00ff
+	DRAM_TYPE_LPDDR4	= 0 << 0,
+	DRAM_TYPE_DDR4		= 1 << 0,
+};
+
+static inline enum dram_type get_dram_type(unsigned type)
+{
+	return type & DRAM_TYPE_MASK;
+}
+
+enum ddrc_type {
+#define DDRC_TYPE_MASK	0xff00
+	DDRC_TYPE_MM = 0 << 8,
+	DDRC_TYPE_MN = 1 << 8,
+	DDRC_TYPE_MQ = 2 << 8,
+	DDRC_TYPE_MP = 3 << 8,
+};
+
+static inline enum ddrc_type get_ddrc_type(unsigned type)
+{
+	return type & DDRC_TYPE_MASK;
+}
+
+struct dram_cfg_param {
+	unsigned int reg;
+	unsigned int val;
+};
+
+struct dram_fsp_msg {
+	unsigned int drate;
+	enum fw_type fw_type;
+	struct dram_cfg_param *fsp_cfg;
+	unsigned int fsp_cfg_num;
+};
+
+struct dram_timing_info {
+	/* umctl2 config */
+	struct dram_cfg_param *ddrc_cfg;
+	unsigned int ddrc_cfg_num;
+	/* ddrphy config */
+	struct dram_cfg_param *ddrphy_cfg;
+	unsigned int ddrphy_cfg_num;
+	/* ddr fsp train info */
+	struct dram_fsp_msg *fsp_msg;
+	unsigned int fsp_msg_num;
+	/* ddr phy trained CSR */
+	struct dram_cfg_param *ddrphy_trained_csr;
+	unsigned int ddrphy_trained_csr_num;
+	/* ddr phy PIE */
+	struct dram_cfg_param *ddrphy_pie;
+	unsigned int ddrphy_pie_num;
+	/* initialized drate table */
+	unsigned int fsp_table[4];
+};
+
+struct dram_controller {
+	enum ddrc_type ddrc_type;
+	enum dram_type dram_type;
+	void __iomem *phy_base;
+	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
+	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
+};
+
+void ddr_get_firmware_lpddr4(void);
+void ddr_get_firmware_ddr(void);
+
+static inline void ddr_get_firmware(enum dram_type dram_type)
+{
+	if (dram_type == DRAM_TYPE_LPDDR4)
+		ddr_get_firmware_lpddr4();
+	else
+		ddr_get_firmware_ddr();
+}
+
+int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
+void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param *param,
+			     unsigned int num);
+void dram_config_save(struct dram_timing_info *info, unsigned long base);
+
+/* utils function for ddr phy training */
+int wait_ddrphy_training_complete(struct dram_controller *dram);
+
+#define reg32_write(a, v)	writel(v, a)
+#define reg32_read(a)		readl(a)
+
+static inline void reg32setbit(unsigned long addr, u32 bit)
+{
+	setbits_le32(addr, (1 << bit));
+}
+
+static inline void *dwc_ddrphy_apb_addr(struct dram_controller *dram, unsigned int addr)
+{
+	return dram->phy_base + addr * 4;
+}
+
+static inline void dwc_ddrphy_apb_wr(struct dram_controller *dram, unsigned int addr, u32 data)
+{
+	reg32_write(dwc_ddrphy_apb_addr(dram, addr), data);
+}
+
+static inline u32 dwc_ddrphy_apb_rd(struct dram_controller *dram, unsigned int addr)
+{
+	return reg32_read(dwc_ddrphy_apb_addr(dram, addr));
+}
+
+extern struct dram_cfg_param ddrphy_trained_csr[];
+extern uint32_t ddrphy_trained_csr_num;
+
+enum ddrc_phy_firmware_offset {
+	DDRC_PHY_IMEM = 0x00050000U,
+	DDRC_PHY_DMEM = 0x00054000U,
+};
+
+void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
+			 enum fw_type fw_type);
+
+void ddrc_phy_load_firmware(struct dram_controller *dram,
+			    enum ddrc_phy_firmware_offset,
+			    const u16 *, size_t);
+
+static inline bool dram_is_lpddr4(enum dram_type dram_type)
+{
+	return IS_ENABLED(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) &&
+		dram_type == DRAM_TYPE_LPDDR4;
+}
+
+static inline bool dram_is_ddr4(enum dram_type dram_type)
+{
+	return IS_ENABLED(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) &&
+		dram_type == DRAM_TYPE_DDR4;
+}
+
+#define DDRC_PHY_REG(x)	((x) * 4)
+
+#endif /* __SOC_IMX_DDR_H */
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 04addc1448..abd9961099 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -9,6 +9,7 @@
 #include <io.h>
 #include <asm/types.h>
 #include <mach/imx/imx8m-regs.h>
+#include <soc/imx/ddr.h>
 
 #define IP2APB_DDRPHY_IPS_BASE_ADDR(X)	MX8M_DDRC_PHY_BASE_ADDR
 
@@ -320,87 +321,6 @@
 
 #define DDRC_IPS_BASE_ADDR(X) MX8M_DDRC_IPS_BASE_ADDR(X)
 
-/* user data type */
-enum fw_type {
-	FW_1D_IMAGE,
-	FW_2D_IMAGE,
-};
-
-enum dram_type {
-#define DRAM_TYPE_MASK	0x00ff
-	DRAM_TYPE_LPDDR4	= 0 << 0,
-	DRAM_TYPE_DDR4		= 1 << 0,
-};
-
-static inline enum dram_type get_dram_type(unsigned type)
-{
-	return type & DRAM_TYPE_MASK;
-}
-
-enum ddrc_type {
-#define DDRC_TYPE_MASK	0xff00
-	DDRC_TYPE_MM = 0 << 8,
-	DDRC_TYPE_MN = 1 << 8,
-	DDRC_TYPE_MQ = 2 << 8,
-	DDRC_TYPE_MP = 3 << 8,
-};
-
-static inline enum ddrc_type get_ddrc_type(unsigned type)
-{
-	return type & DDRC_TYPE_MASK;
-}
-
-struct dram_cfg_param {
-	unsigned int reg;
-	unsigned int val;
-};
-
-struct dram_fsp_msg {
-	unsigned int drate;
-	enum fw_type fw_type;
-	struct dram_cfg_param *fsp_cfg;
-	unsigned int fsp_cfg_num;
-};
-
-struct dram_timing_info {
-	/* umctl2 config */
-	struct dram_cfg_param *ddrc_cfg;
-	unsigned int ddrc_cfg_num;
-	/* ddrphy config */
-	struct dram_cfg_param *ddrphy_cfg;
-	unsigned int ddrphy_cfg_num;
-	/* ddr fsp train info */
-	struct dram_fsp_msg *fsp_msg;
-	unsigned int fsp_msg_num;
-	/* ddr phy trained CSR */
-	struct dram_cfg_param *ddrphy_trained_csr;
-	unsigned int ddrphy_trained_csr_num;
-	/* ddr phy PIE */
-	struct dram_cfg_param *ddrphy_pie;
-	unsigned int ddrphy_pie_num;
-	/* initialized drate table */
-	unsigned int fsp_table[4];
-};
-
-struct dram_controller {
-	enum ddrc_type ddrc_type;
-	enum dram_type dram_type;
-	void __iomem *phy_base;
-	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
-	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
-};
-
-void ddr_get_firmware_lpddr4(void);
-void ddr_get_firmware_ddr(void);
-
-static inline void ddr_get_firmware(enum dram_type dram_type)
-{
-	if (dram_type == DRAM_TYPE_LPDDR4)
-		ddr_get_firmware_lpddr4();
-	else
-		ddr_get_firmware_ddr();
-}
-
 int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_timing);
 
 extern struct dram_controller imx8m_dram_controller;
@@ -449,75 +369,17 @@ static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
 	return imx8m_ddr_init(&imx8m_dram_controller, dram_timing);
 }
 
-int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
-void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param *param,
-			     unsigned int num);
-void dram_config_save(struct dram_timing_info *info, unsigned long base);
-
-/* utils function for ddr phy training */
-int wait_ddrphy_training_complete(struct dram_controller *dram);
-
 static inline int imx8m_wait_ddrphy_training_complete(void)
 {
 	return wait_ddrphy_training_complete(&imx8m_dram_controller);
 }
 
-#define reg32_write(a, v)	writel(v, a)
-#define reg32_read(a)		readl(a)
-
-static inline void reg32setbit(unsigned long addr, u32 bit)
-{
-	setbits_le32(addr, (1 << bit));
-}
-
-static inline void *dwc_ddrphy_apb_addr(struct dram_controller *dram, unsigned int addr)
-{
-	return dram->phy_base + addr * 4;
-}
-
-static inline void dwc_ddrphy_apb_wr(struct dram_controller *dram, unsigned int addr, u32 data)
-{
-	reg32_write(dwc_ddrphy_apb_addr(dram, addr), data);
-}
-
-static inline u32 dwc_ddrphy_apb_rd(struct dram_controller *dram, unsigned int addr)
-{
-	return reg32_read(dwc_ddrphy_apb_addr(dram, addr));
-}
-
 extern bool imx8m_ddr_old_spreadsheet;
-extern struct dram_cfg_param ddrphy_trained_csr[];
-extern uint32_t ddrphy_trained_csr_num;
-
-enum ddrc_phy_firmware_offset {
-	DDRC_PHY_IMEM = 0x00050000U,
-	DDRC_PHY_DMEM = 0x00054000U,
-};
 
-void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
-			 enum fw_type fw_type);
 static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
 					     enum fw_type fw_type)
 {
 	ddr_load_train_code(&imx8m_dram_controller, dram_type, fw_type);
 }
 
-void ddrc_phy_load_firmware(struct dram_controller *dram,
-			    enum ddrc_phy_firmware_offset,
-			    const u16 *, size_t);
-
-static inline bool dram_is_lpddr4(enum dram_type dram_type)
-{
-	return IS_ENABLED(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) &&
-		dram_type == DRAM_TYPE_LPDDR4;
-}
-
-static inline bool dram_is_ddr4(enum dram_type dram_type)
-{
-	return IS_ENABLED(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) &&
-		dram_type == DRAM_TYPE_DDR4;
-}
-
-#define DDRC_PHY_REG(x)	((x) * 4)
-
 #endif
-- 
2.39.2



