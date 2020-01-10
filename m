Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrk-0006Mg-Uq
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:54:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:54:06 +0100
Message-Id: <20200110115410.18265-2-s.hauer@pengutronix.de>
In-Reply-To: <20200110115410.18265-1-s.hauer@pengutronix.de>
References: <20200110115410.18265-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] ARM: Layerscape: replace overcomplicated macros
To: Barebox List <barebox@lists.infradead.org>

The icid tables are generated with several macros which makes the code
hard to read. Drop the macros.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 342 +++++++++++++++++++-------------
 1 file changed, 204 insertions(+), 138 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 2326d7e67a..340ca959ca 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -36,9 +36,6 @@
  *
  */
 
-
-#define FSL_INVALID_STREAM_ID		0
-
 /* legacy devices */
 #define FSL_USB1_STREAM_ID		1
 #define FSL_USB2_STREAM_ID		2
@@ -56,8 +53,8 @@
 #define FSL_PEX_STREAM_ID_END		26
 
 /* DPAA1 - Stream-ID that can be programmed in DPAA1 h/w */
-#define FSL_DPAA1_STREAM_ID_START	27
-#define FSL_DPAA1_STREAM_ID_END		63
+#define DPAA1_SID_START	27
+#define DPAA1_SID_END	63
 
 struct icid_id_table {
 	const char *compat;
@@ -72,141 +69,210 @@ struct fman_icid_id_table {
 	u32 icid;
 };
 
-#define SET_ICID_ENTRY(name, idA, regA, addr, compataddr) \
-	{					\
-		.compat = name,			\
-		.id = idA,			\
-		.reg = regA,			\
-		.compat_addr = compataddr,	\
-		.reg_addr = addr,		\
-	}
-
-#define SET_SCFG_ICID(compat, streamid, name, compataddr) \
-	SET_ICID_ENTRY(compat, streamid, (((streamid) << 24) | (1 << 23)), \
-		offsetof(struct ccsr_scfg, name) + LSCH2_SCFG_ADDR, \
-		compataddr)
-
-#define SET_USB_ICID(usb_num, compat, streamid) \
-	SET_SCFG_ICID(compat, streamid, usb##usb_num##_icid,\
-		LSCH2_XHCI_USB##usb_num##_ADDR)
-
-#define SET_SATA_ICID(compat, streamid) \
-	SET_SCFG_ICID(compat, streamid, sata_icid,\
-		LSCH2_HCI_BASE_ADDR)
-
-#define SET_SDHC_ICID(streamid) \
-	SET_SCFG_ICID("fsl,esdhc", streamid, sdhc_icid,\
-		LSCH2_ESDHC_ADDR)
-
-#define QMAN_CQSIDR_REG	0x20a80
-
-#define SET_QDMA_ICID(compat, streamid) \
-	SET_ICID_ENTRY(compat, streamid, (1 << 31) | (streamid), \
-		LSCH2_QDMA_BASE_ADDR + QMAN_CQSIDR_REG, \
-		LSCH2_QDMA_BASE_ADDR), \
-	SET_ICID_ENTRY(NULL, streamid, (1 << 31) | (streamid), \
-		LSCH2_QDMA_BASE_ADDR + QMAN_CQSIDR_REG + 4, \
-		LSCH2_QDMA_BASE_ADDR)
-
-#define SET_EDMA_ICID(streamid) \
-	SET_SCFG_ICID("fsl,vf610-edma", streamid, edma_icid,\
-		LSCH2_EDMA_BASE_ADDR)
-
-#define SET_ETR_ICID(streamid) \
-	SET_SCFG_ICID(NULL, streamid, etr_icid, 0)
-
-#define SET_DEBUG_ICID(streamid) \
-	SET_SCFG_ICID(NULL, streamid, debug_icid, 0)
-
-#define SET_QE_ICID(streamid) \
-	SET_SCFG_ICID("fsl,qe", streamid, qe_icid,\
-		LSCH2_QE_BASE_ADDR)
-
-#define SET_QMAN_ICID(streamid) \
-	SET_ICID_ENTRY("fsl,qman", streamid, streamid, \
-		offsetof(struct ccsr_qman, liodnr) + \
-		LSCH2_QMAN_ADDR, \
-		LSCH2_QMAN_ADDR)
-
-#define SET_BMAN_ICID(streamid) \
-	SET_ICID_ENTRY("fsl,bman", streamid, streamid, \
-		offsetof(struct ccsr_bman, liodnr) + \
-		LSCH2_BMAN_ADDR, \
-		LSCH2_BMAN_ADDR)
-
-#define SET_FMAN_ICID_ENTRY(_port_id, streamid) \
-	{ .port_id = (_port_id), .icid = (streamid) }
-
-#define SET_SEC_QI_ICID(streamid) \
-	SET_ICID_ENTRY("fsl,sec-v4.0", streamid, \
-		0, offsetof(ccsr_sec_t, qilcr_ls) + \
-		LSCH2_SEC_ADDR, \
-		LSCH2_SEC_ADDR)
-
-#define SET_SEC_JR_ICID_ENTRY(jr_num, streamid) \
-	SET_ICID_ENTRY( \
-		(CONFIG_ARMV8_SEC_FIRMWARE_SUPPORT && \
-		(FSL_SEC_JR##jr_num##_OFFSET ==  \
-			SEC_JR3_OFFSET + CONFIG_SYS_FSL_SEC_OFFSET) \
-			? NULL \
-			: "fsl,sec-v4.0-job-ring"), \
-		streamid, \
-		(((streamid) << 16) | (streamid)), \
-		offsetof(ccsr_sec_t, jrliodnr[jr_num].ls) + \
-		LSCH2_SEC_ADDR, \
-		FSL_SEC_JR##jr_num##_BASE_ADDR)
-
-#define SET_SEC_DECO_ICID_ENTRY(deco_num, streamid) \
-	SET_ICID_ENTRY(NULL, streamid, (((streamid) << 16) | (streamid)), \
-		offsetof(ccsr_sec_t, decoliodnr[deco_num].ls) + \
-		LSCH2_SEC_ADDR, 0)
-
-#define SET_SEC_RTIC_ICID_ENTRY(rtic_num, streamid) \
-	SET_ICID_ENTRY(NULL, streamid, (((streamid) << 16) | (streamid)), \
-		offsetof(ccsr_sec_t, rticliodnr[rtic_num].ls) + \
-		LSCH2_SEC_ADDR, 0)
-
-static struct icid_id_table icid_tbl_ls1046a[] = {
-	SET_QMAN_ICID(FSL_DPAA1_STREAM_ID_START),
-	SET_BMAN_ICID(FSL_DPAA1_STREAM_ID_START + 1),
-
-	SET_SDHC_ICID(FSL_SDHC_STREAM_ID),
-
-	SET_USB_ICID(1, "snps,dwc3", FSL_USB1_STREAM_ID),
-	SET_USB_ICID(2, "snps,dwc3", FSL_USB2_STREAM_ID),
-	SET_USB_ICID(3, "snps,dwc3", FSL_USB3_STREAM_ID),
-
-	SET_SATA_ICID("fsl,ls1046a-ahci", FSL_SATA_STREAM_ID),
-	SET_QDMA_ICID("fsl,ls1046a-qdma", FSL_QDMA_STREAM_ID),
-	SET_EDMA_ICID(FSL_EDMA_STREAM_ID),
-	SET_ETR_ICID(FSL_ETR_STREAM_ID),
-	SET_DEBUG_ICID(FSL_DEBUG_STREAM_ID),
+#define QMAN_CQSIDR_REG        0x20a80
+
+#define SEC_JRnICID_LS(n)	((0x10 + (n) * 0x8) + 0x4)
+#define SEC_RTICnICID_LS(n)	((0x60 + (n) * 0x8) + 0x4)
+#define SEC_DECOnICID_LS(n)	((0xa0 + (n) * 0x8) + 0x4)
+#define SEC_QIIC_LS	0x70024
+#define	SEC_IRBAR_JRn(n) 	(0x10000 * ((n) + 1))
+
+struct icid_id_table icid_tbl_ls1046a[] = {
+	{
+		.compat = "fsl,qman",
+		.id = DPAA1_SID_START,
+		.reg = DPAA1_SID_START,
+		.compat_addr = LSCH2_QMAN_ADDR,
+		.reg_addr = offsetof(struct ccsr_qman, liodnr) + LSCH2_QMAN_ADDR,
+	}, {
+		.compat = "fsl,bman",
+		.id = DPAA1_SID_START + 1,
+		.reg = DPAA1_SID_START + 1,
+		.compat_addr = LSCH2_BMAN_ADDR,
+		.reg_addr = offsetof(struct ccsr_bman, liodnr) + LSCH2_BMAN_ADDR,
+	}, {
+		.compat = "fsl,esdhc",
+		.id = FSL_SDHC_STREAM_ID,
+		.reg = (((FSL_SDHC_STREAM_ID) << 24) | (1 << 23)),
+		.compat_addr = LSCH2_ESDHC_ADDR,
+		.reg_addr = offsetof(struct ccsr_scfg, sdhc_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.compat = "snps,dwc3",
+		.id = FSL_USB1_STREAM_ID,
+		.reg = (((FSL_USB1_STREAM_ID) << 24) | (1 << 23)),
+		.compat_addr = LSCH2_XHCI_USB1_ADDR,
+		.reg_addr = offsetof(struct ccsr_scfg, usb1_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.compat = "snps,dwc3",
+		.id = FSL_USB2_STREAM_ID,
+		.reg = (((FSL_USB2_STREAM_ID) << 24) | (1 << 23)),
+		.compat_addr = LSCH2_XHCI_USB2_ADDR,
+		.reg_addr = offsetof(struct ccsr_scfg, usb2_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.compat = "snps,dwc3",
+		.id = FSL_USB3_STREAM_ID,
+		.reg = (((FSL_USB3_STREAM_ID) << 24) | (1 << 23)),
+		.compat_addr = LSCH2_XHCI_USB3_ADDR,
+		.reg_addr = offsetof(struct ccsr_scfg, usb3_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.compat = "fsl,ls1046a-ahci",
+		.id = FSL_SATA_STREAM_ID,
+		.reg = (((FSL_SATA_STREAM_ID) << 24) | (1 << 23)),
+		.compat_addr = LSCH2_HCI_BASE_ADDR,
+		.reg_addr = offsetof(struct ccsr_scfg, sata_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.compat = "fsl,ls1046a-qdma",
+		.id = FSL_QDMA_STREAM_ID,
+		.reg = (1 << 31) | (FSL_QDMA_STREAM_ID),
+		.compat_addr = LSCH2_QDMA_BASE_ADDR,
+		.reg_addr = LSCH2_QDMA_BASE_ADDR + QMAN_CQSIDR_REG,
+	}, {
+		.id = FSL_QDMA_STREAM_ID,
+		.reg = (1 << 31) | (FSL_QDMA_STREAM_ID),
+		.compat_addr = LSCH2_QDMA_BASE_ADDR,
+		.reg_addr = LSCH2_QDMA_BASE_ADDR + QMAN_CQSIDR_REG + 4,
+	}, {
+		.compat = "fsl,vf610-edma",
+		.id = FSL_EDMA_STREAM_ID,
+		.reg = (((FSL_EDMA_STREAM_ID) << 24) | (1 << 23)),
+		.compat_addr = LSCH2_EDMA_BASE_ADDR,
+		.reg_addr = offsetof(struct ccsr_scfg, edma_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.id = FSL_ETR_STREAM_ID,
+		.reg = (((FSL_ETR_STREAM_ID) << 24) | (1 << 23)),
+		.reg_addr = offsetof(struct ccsr_scfg, etr_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.id = FSL_DEBUG_STREAM_ID,
+		.reg = (((FSL_DEBUG_STREAM_ID) << 24) | (1 << 23)),
+		.reg_addr = offsetof(struct ccsr_scfg, debug_icid) + LSCH2_SCFG_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0",
+		.id = DPAA1_SID_END,
+		.compat_addr = LSCH2_SEC_ADDR,
+		.reg_addr = SEC_QIIC_LS + LSCH2_SEC_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = DPAA1_SID_START + 3,
+		.reg = (((DPAA1_SID_START + 3) << 16) | (DPAA1_SID_START + 3)),
+		.compat_addr = SEC_IRBAR_JRn(0),
+		.reg_addr = SEC_JRnICID_LS(0) + LSCH2_SEC_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = DPAA1_SID_START + 4,
+		.reg = (((DPAA1_SID_START + 4) << 16) | (DPAA1_SID_START + 4)),
+		.compat_addr = SEC_IRBAR_JRn(1),
+		.reg_addr = SEC_JRnICID_LS(1) + LSCH2_SEC_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = DPAA1_SID_START + 5,
+		.reg = (((DPAA1_SID_START + 5) << 16) | (DPAA1_SID_START + 5)),
+		.compat_addr = SEC_IRBAR_JRn(2),
+		.reg_addr = SEC_JRnICID_LS(2) + LSCH2_SEC_ADDR,
+	}, {
+		.compat = "fsl,sec-v4.0-job-ring",
+		.id = DPAA1_SID_START + 6,
+		.reg = (((DPAA1_SID_START + 6) << 16) | (DPAA1_SID_START + 6)),
+		.compat_addr = SEC_IRBAR_JRn(3),
+		.reg_addr = SEC_JRnICID_LS(3) + LSCH2_SEC_ADDR,
+	}, {
+		.id = DPAA1_SID_START + 7,
+		.reg = (((DPAA1_SID_START + 7) << 16) | (DPAA1_SID_START + 7)),
+		.reg_addr = SEC_RTICnICID_LS(0) + LSCH2_SEC_ADDR,
+	}, {
+		.id = DPAA1_SID_START + 8,
+		.reg = (((DPAA1_SID_START + 8) << 16) | (DPAA1_SID_START + 8)),
+		.reg_addr = SEC_RTICnICID_LS(1) + LSCH2_SEC_ADDR,
+	},{
+		.id = DPAA1_SID_START + 9,
+		.reg = (((DPAA1_SID_START + 9) << 16) | (DPAA1_SID_START + 9)),
+		.reg_addr = SEC_RTICnICID_LS(2) + LSCH2_SEC_ADDR,
+	}, {
+		.id = DPAA1_SID_START + 10,
+		.reg = (((DPAA1_SID_START + 10) << 16) | (DPAA1_SID_START + 10)),
+		.reg_addr = SEC_RTICnICID_LS(3) + LSCH2_SEC_ADDR,
+	}, {
+		.id = DPAA1_SID_START + 11,
+		.reg = (((DPAA1_SID_START + 11) << 16) | (DPAA1_SID_START + 11)),
+		.reg_addr = SEC_DECOnICID_LS(0) + LSCH2_SEC_ADDR,
+	}, {
+		.id = DPAA1_SID_START + 12,
+		.reg = (((DPAA1_SID_START + 12) << 16) | (DPAA1_SID_START + 12)),
+		.reg_addr = SEC_DECOnICID_LS(1) + LSCH2_SEC_ADDR,
+	}, {
+		.id = DPAA1_SID_START + 13,
+		.reg = (((DPAA1_SID_START + 13) << 16) | (DPAA1_SID_START + 13)),
+		.reg_addr = SEC_DECOnICID_LS(2) + LSCH2_SEC_ADDR,
+	},
 };
 
-static struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
-	/* port id, icid */
-	SET_FMAN_ICID_ENTRY(0x02, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x03, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x04, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x05, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x06, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x07, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x08, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x09, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x0a, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x0b, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x0c, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x0d, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x28, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x29, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x2a, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x2b, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x2c, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x2d, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x10, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x11, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x30, FSL_DPAA1_STREAM_ID_END),
-	SET_FMAN_ICID_ENTRY(0x31, FSL_DPAA1_STREAM_ID_END),
+struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
+	{
+		.port_id = 0x02,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x03,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x04,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x05,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x06,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x07,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x08,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x09,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x0a,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x0b,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x0c,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x0d,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x28,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x29,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x2a,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x2b,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x2c,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x2d,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x10,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x11,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x30,
+		.icid = DPAA1_SID_END,
+	}, {
+		.port_id = 0x31,
+		.icid = DPAA1_SID_END,
+	},
 };
 
 static void set_icid(struct icid_id_table *tbl, int size)
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
