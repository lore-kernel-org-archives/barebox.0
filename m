Delivery-date: Thu, 04 Jan 2024 15:19:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ4-003cWs-1F
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ2-0005Ln-SY
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PQSIcLDPJdH9Y0LS0pJp0OtNLbuLww1hstPLSZsbWxg=; b=bd08r+piMbYz5gOITgLJYRu+18
	CwZ8N9nsvwn4+3TJ6HuLr1QRoTo8FMoiNMryx5/YwcaiVxw+DadrSVONf6+I+gZkGAGAAp1zgcsT3
	zk5Yu5nOIJd8vaAB5AAoBha6X/nIbnKpAoByurmkRR0AltMg4HYTRIP62G41a/GRMmAhQ7LgrAMn0
	ml/8AAOiwOfR1EcwmJfd5HRY3u18tMMdHp1KHmnraxX2+XlR6ME4GQXPY5tzxV/nE6se7Lol3HWJK
	gQq/GZmLXmzrUMAgHWQqkY5CVhF4/uy/QN7ZlraSaWqXdLAeLbNVyzUKInDGs9R/vI6rpthj1XyVG
	VBXugNTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXk-00EJ3R-1C;
	Thu, 04 Jan 2024 14:17:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIz4-2M
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HP-9x; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000My2-Iw; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017xM-1h;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:28 +0100
Message-Id: <20240104141746.165014-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/19] soc/fsl: import immap_lsch3 from U-Boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For upcoming LS1028a support we'll need immap_lsch3.h. Import
it from U-Boot v2023.10-rc4.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/soc/fsl/immap_lsch3.h | 187 ++++++++++++++++++++++++++++++++++
 1 file changed, 187 insertions(+)
 create mode 100644 include/soc/fsl/immap_lsch3.h

diff --git a/include/soc/fsl/immap_lsch3.h b/include/soc/fsl/immap_lsch3.h
new file mode 100644
index 0000000000..f2fdb7dfb3
--- /dev/null
+++ b/include/soc/fsl/immap_lsch3.h
@@ -0,0 +1,187 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * LayerScape Internal Memory Map
+ *
+ * Copyright 2017-2020 NXP
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __ARCH_FSL_LSCH3_IMMAP_H_
+#define __ARCH_FSL_LSCH3_IMMAP_H_
+
+#define LSCH3_IMMR	0x01000000
+
+// LSCH3_2: ls1028a, lx2162a, lx2160a
+#define LSCH3_DDR_ADDR				(LSCH3_IMMR + 0x00080000)
+#define LSCH3_DDR2_ADDR				(LSCH3_IMMR + 0x00090000)
+#define LSCH3_DDR3_ADDR				0x08210000
+#define LSCH3_GUTS_ADDR				(LSCH3_IMMR + 0x00E00000)
+#define LSCH3_PMU_ADDR				(LSCH3_IMMR + 0x00E30000)
+#define LSCH3_RST_ADDR_LX21XXA			(LSCH3_IMMR + 0x00e88180)
+#define LSCH3_RST_ADDR				(LSCH3_IMMR + 0x00E60000)
+#define LSCH3_CH3_CLK_GRPA_ADDR			(LSCH3_IMMR + 0x00300000)
+#define LSCH3_CH3_CLK_GRPB_ADDR			(LSCH3_IMMR + 0x00310000)
+#define LSCH3_CH3_CLK_CTRL_ADDR			(LSCH3_IMMR + 0x00370000)
+#define LSCH3_QSPI_ADDR_LSCH3			(LSCH3_IMMR + 0x010c0000)
+#define LSCH3_FSPI_ADDR				(LSCH3_IMMR + 0x010c0000)
+#define LSCH3_ESDHC1_BASE_ADDR			(LSCH3_IMMR + 0x01140000)
+#define LSCH3_ESDHC2_BASE_ADDR			(LSCH3_IMMR + 0x01150000)
+#define LSCH3_IFC_ADDR				(LSCH3_IMMR + 0x01240000)
+#define LSCH3_NS16550_COM1			(LSCH3_IMMR + 0x011C0500)
+#define LSCH3_NS16550_COM2			(LSCH3_IMMR + 0x011C0600)
+#define LSCH3_TIMER_ADDR			(LSCH3_IMMR + 0x013e0000)
+#define LSCH3_CCI400_ADDR			(LSCH3_IMMR + 0x03090000)
+#define LSCH3_PMU_CLTBENR			(LSCH3_PMU_ADDR + 0x18A0)
+#define LSCH3_PCTBENR_OFFSET			(LSCH3_PMU_ADDR + 0x8A0)
+#define LSCH3_SVR				(LSCH3_GUTS_ADDR + 0xA4)
+
+#define LSCH3_WRIOP1_ADDR			(LSCH3_IMMR + 0x7B80000)
+#define LSCH3_WRIOP1_MDIO1			(LSCH3_WRIOP1_ADDR + 0x16000)
+#define LSCH3_WRIOP1_MDIO2			(LSCH3_WRIOP1_ADDR + 0x17000)
+#define LSCH3_SERDES_ADDR			(LSCH3_IMMR + 0xEA0000)
+
+#define LSCH3_DCSR_DDR_ADDR			0x70012c000ULL
+#define LSCH3_DCSR_DDR2_ADDR			0x70012d000ULL
+#define LSCH3_DCSR_DDR3_ADDR			0x700132000ULL
+
+#define LSCH3_I2C1_BASE_ADDR			(LSCH3_IMMR + 0x01000000)
+#define LSCH3_I2C2_BASE_ADDR			(LSCH3_IMMR + 0x01010000)
+#define LSCH3_I2C3_BASE_ADDR			(LSCH3_IMMR + 0x01020000)
+#define LSCH3_I2C4_BASE_ADDR			(LSCH3_IMMR + 0x01030000)
+#define LSCH3_I2C5_BASE_ADDR			(LSCH3_IMMR + 0x01040000)
+#define LSCH3_I2C6_BASE_ADDR			(LSCH3_IMMR + 0x01050000)
+#define LSCH3_I2C7_BASE_ADDR			(LSCH3_IMMR + 0x01060000)
+#define LSCH3_I2C8_BASE_ADDR			(LSCH3_IMMR + 0x01070000)
+
+/* EDMA */
+#define LSCH3_EDMA_BASE_ADDR			(LSCH3_IMMR + 0x012c0000)
+
+/* MMU 500 */
+#define LSCH3_SMMU_SCR0				(SMMU_BASE + 0x0)
+#define LSCH3_SMMU_SCR1				(SMMU_BASE + 0x4)
+#define LSCH3_SMMU_SCR2				(SMMU_BASE + 0x8)
+#define LSCH3_SMMU_SACR				(SMMU_BASE + 0x10)
+#define LSCH3_SMMU_IDR0				(SMMU_BASE + 0x20)
+#define LSCH3_SMMU_IDR1				(SMMU_BASE + 0x24)
+
+#define LSCH3_SMMU_NSCR0			(SMMU_BASE + 0x400)
+#define LSCH3_SMMU_NSCR2			(SMMU_BASE + 0x408)
+#define LSCH3_SMMU_NSACR			(SMMU_BASE + 0x410)
+
+/* Device Configuration */
+#define LSCH3_DCFG_BASE				0x01e00000
+#define LSCH3_DCFG_PORSR1			0x000
+#define LSCH3_DCFG_PORSR1_RCW_SRC		0xff800000
+#define LSCH3_DCFG_PORSR1_RCW_SRC_SDHC1		0x04000000
+#define LSCH3_DCFG_PORSR1_RCW_SRC_SDHC2		0x04800000
+#define LSCH3_DCFG_PORSR1_RCW_SRC_I2C		0x05000000
+#define LSCH3_DCFG_PORSR1_RCW_SRC_FSPI_NOR	0x07800000
+#define LSCH3_DCFG_PORSR1_RCW_SRC_NOR		0x12f00000
+#define LSCH3_DCFG_RCWSR12			0x12c
+#define LSCH3_DCFG_RCWSR12_SDHC_SHIFT		24
+#define LSCH3_DCFG_RCWSR12_SDHC_MASK		0x7
+#define LSCH3_DCFG_RCWSR13			0x130
+#define LSCH3_DCFG_RCWSR13_SDHC_SHIFT		3
+#define LSCH3_DCFG_RCWSR13_SDHC_MASK		0x7
+#define LSCH3_DCFG_RCWSR13_DSPI			(0 << 8)
+#define LSCH3_DCFG_RCWSR15			0x138
+#define LSCH3_DCFG_RCWSR15_IFCGRPABASE_QSPI	0x3
+
+#define LSCH3_DCFG_DCSR_BASE			0X700100000ULL
+#define LSCH3_DCFG_DCSR_PORCR1			0x000
+
+/* Supplemental Configuration */
+#define LSCH3_SCFG_BASE				0x01fc0000
+#define LSCH3_SCFG_USB3PRM1CR			0x000
+#define LSCH3_SCFG_USB3PRM1CR_INIT		0x27672b2a
+#define LSCH3_SCFG_USB_TXVREFTUNE		0x9
+#define LSCH3_SCFG_USB_SQRXTUNE_MASK		0x7
+#define LSCH3_SCFG_QSPICLKCTLR			0x10
+
+#define LSCH3_DCSR_BASE				0x700000000ULL
+#define LSCH3_DCSR_USB_PHY1			0x4600000
+#define LSCH3_DCSR_USB_PHY2			0x4610000
+#define LSCH3_DCSR_USB_PHY_RX_OVRD_IN_HI	0x200C
+#define LSCH3_DCSR_USB_IOCR1			0x108004
+#define LSCH3_DCSR_USB_PCSTXSWINGFULL		0x71
+
+#ifndef __ASSEMBLY__
+
+/* Global Utilities Block */
+struct lsch3_ccsr_gur {
+	u32	porsr1;		/* POR status 1 */
+	u32	porsr2;		/* POR status 2 */
+	u8	res_008[0x20-0x8];
+	u32	gpporcr1;	/* General-purpose POR configuration */
+	u32	gpporcr2;	/* General-purpose POR configuration 2 */
+	u32	gpporcr3;
+	u32	gpporcr4;
+	u8	res_030[0x60-0x30];
+	u32	dcfg_fusesr;	/* Fuse status register */
+	u8	res_064[0x70-0x64];
+	u32	devdisr;	/* Device disable control 1 */
+	u32	devdisr2;	/* Device disable control 2 */
+	u32	devdisr3;	/* Device disable control 3 */
+	u32	devdisr4;	/* Device disable control 4 */
+	u32	devdisr5;	/* Device disable control 5 */
+	u32	devdisr6;	/* Device disable control 6 */
+	u8	res_088[0x94-0x88];
+	u32	coredisr;	/* Device disable control 7 */
+	u8	res_098[0xa0-0x98];
+	u32	pvr;		/* Processor version */
+	u32	svr;		/* System version */
+	u8	res_0a8[0x100-0xa8];
+	u32	rcwsr[30];	/* Reset control word status */
+	u8	res_178[0x200-0x178];
+	u32	scratchrw[16];	/* Scratch Read/Write */
+	u8	res_240[0x300-0x240];
+	u32	scratchw1r[4];	/* Scratch Read (Write once) */
+	u8	res_310[0x400-0x310];
+	u32	bootlocptrl;	/* Boot location pointer low-order addr */
+	u32	bootlocptrh;	/* Boot location pointer high-order addr */
+	u8	res_408[0x520-0x408];
+	u32	usb1_amqr;
+	u32	usb2_amqr;
+	u8	res_528[0x530-0x528];	/* add more registers when needed */
+	u32	sdmm1_amqr;
+	u32	sdmm2_amqr;
+	u8	res_538[0x550 - 0x538];	/* add more registers when needed */
+	u32	sata1_amqr;
+	u32	sata2_amqr;
+	u32	sata3_amqr;
+	u32	sata4_amqr;
+	u8	res_560[0x570 - 0x560];	/* add more registers when needed */
+	u32	misc1_amqr;
+	u8	res_574[0x590-0x574];	/* add more registers when needed */
+	u32	spare1_amqr;
+	u32	spare2_amqr;
+	u32	spare3_amqr;
+	u8	res_59c[0x620 - 0x59c];	/* add more registers when needed */
+	u32	gencr[7];	/* General Control Registers */
+	u8	res_63c[0x640-0x63c];	/* add more registers when needed */
+	u32	cgensr1;	/* Core General Status Register */
+	u8	res_644[0x660-0x644];	/* add more registers when needed */
+	u32	cgencr1;	/* Core General Control Register */
+	u8	res_664[0x740-0x664];	/* add more registers when needed */
+	u32	tp_ityp[64];	/* Topology Initiator Type Register */
+	struct {
+		u32	upper;
+		u32	lower;
+	} tp_cluster[4];	/* Core cluster n Topology Register */
+	u8	res_864[0x920-0x864];	/* add more registers when needed */
+	u32 ioqoscr[8];	/*I/O Quality of Services Register */
+	u32 uccr;
+	u8	res_944[0x960-0x944];	/* add more registers when needed */
+	u32 ftmcr;
+	u8	res_964[0x990-0x964];	/* add more registers when needed */
+	u32 coredisablesr;
+	u8	res_994[0xa00-0x994];	/* add more registers when needed */
+	u32 sdbgcr; /*Secure Debug Confifuration Register */
+	u8	res_a04[0xbf8-0xa04];	/* add more registers when needed */
+	u32 ipbrr1;
+	u32 ipbrr2;
+	u8	res_858[0x1000-0xc00];
+};
+
+#endif /*__ASSEMBLY__ */
+#endif /* __ARCH_FSL_LSCH3_IMMAP_H_ */
-- 
2.39.2



