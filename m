Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Or-0001ZZ-Nf
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:58 +0100
Message-Id: <20190313094202.14901-12-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/15] ARM: Add basic Layerscape support
To: Barebox List <barebox@lists.infradead.org>

This adds basic Layerscape support:

- Makefile/Kconfig
- Register maps
- errata workarounds

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |   7 +
 arch/arm/Makefile                             |   1 +
 arch/arm/mach-layerscape/Kconfig              |   8 +
 arch/arm/mach-layerscape/Makefile             |   4 +
 arch/arm/mach-layerscape/errata.c             | 195 ++++++++++
 arch/arm/mach-layerscape/icid.c               | 243 ++++++++++++
 .../mach-layerscape/include/mach/debug_ll.h   |  34 ++
 .../arm/mach-layerscape/include/mach/errata.h |   7 +
 .../mach-layerscape/include/mach/layerscape.h |   7 +
 .../mach-layerscape/include/mach/lowlevel.h   |   7 +
 arch/arm/mach-layerscape/lowlevel-ls1046a.c   | 246 ++++++++++++
 arch/arm/mach-layerscape/lowlevel.S           |  18 +
 common/Kconfig                                |   8 +
 images/Makefile                               |   3 +-
 images/Makefile.layerscape                    |  18 +
 include/soc/fsl/fsl_qbman.h                   |  74 ++++
 include/soc/fsl/immap_lsch2.h                 | 355 ++++++++++++++++++
 17 files changed, 1234 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-layerscape/Kconfig
 create mode 100644 arch/arm/mach-layerscape/Makefile
 create mode 100644 arch/arm/mach-layerscape/errata.c
 create mode 100644 arch/arm/mach-layerscape/icid.c
 create mode 100644 arch/arm/mach-layerscape/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/errata.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/layerscape.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls1046a.c
 create mode 100644 arch/arm/mach-layerscape/lowlevel.S
 create mode 100644 images/Makefile.layerscape
 create mode 100644 include/soc/fsl/fsl_qbman.h
 create mode 100644 include/soc/fsl/immap_lsch2.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9d3f5b2ca7..4e5b4bcee1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -113,6 +113,12 @@ config ARCH_IMX
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
 
+config ARCH_LAYERSCAPE
+	bool "NXP Layerscape based"
+	select GPIOLIB
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	select COMMON_CLK
@@ -275,6 +281,7 @@ source arch/arm/mach-digic/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-highbank/Kconfig
 source arch/arm/mach-imx/Kconfig
+source arch/arm/mach-layerscape/Kconfig
 source arch/arm/mach-mxs/Kconfig
 source arch/arm/mach-mvebu/Kconfig
 source arch/arm/mach-netx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6b5f21a7a9..d4f028890b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -87,6 +87,7 @@ machine-$(CONFIG_ARCH_DIGIC)		:= digic
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
 machine-$(CONFIG_ARCH_IMX)		:= imx
+machine-$(CONFIG_ARCH_LAYERSCAPE)	:= layerscape
 machine-$(CONFIG_ARCH_MXS)		:= mxs
 machine-$(CONFIG_ARCH_MVEBU)		:= mvebu
 machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
new file mode 100644
index 0000000000..5117d4b914
--- /dev/null
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -0,0 +1,8 @@
+if ARCH_LAYERSCAPE
+
+config ARCH_LS1046
+	select CPU_V8
+	select SYS_SUPPORTS_64BIT_KERNEL
+	bool
+
+endif
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
new file mode 100644
index 0000000000..269839254b
--- /dev/null
+++ b/arch/arm/mach-layerscape/Makefile
@@ -0,0 +1,4 @@
+obj- := __dummy__.o
+lwl-y += lowlevel.o errata.o
+lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
+obj-y += icid.o
diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
new file mode 100644
index 0000000000..4f4b759ddb
--- /dev/null
+++ b/arch/arm/mach-layerscape/errata.c
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <io.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <asm/system.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+
+#define scfg_clrsetbits32(addr, clear, set) clrsetbits_be32(addr, clear, set)
+#define scfg_clrbits32(addr, clear) clrbits_be32(addr, clear)
+
+static inline void set_usb_pcstxswingfull(u32 __iomem *scfg, u32 offset)
+{
+	scfg_clrsetbits32(scfg + offset / 4,
+			0x7f << 9,
+			SCFG_USB_PCSTXSWINGFULL << 9);
+}
+
+static void erratum_a008997_ls1046a(void)
+{
+	u32 __iomem *scfg = (u32 __iomem *)LSCH2_SCFG_ADDR;
+
+	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB1);
+	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB2);
+	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB3);
+}
+
+#define PROGRAM_USB_PHY_RX_OVRD_IN_HI(phy)      \
+	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_1);      \
+	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_2);      \
+	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_3);      \
+	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_4)
+
+static void erratum_a009007_ls1046a(void)
+{
+	void __iomem *usb_phy = IOMEM(SCFG_USB_PHY1);
+
+	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+	usb_phy = (void __iomem *)SCFG_USB_PHY2;
+	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+
+	usb_phy = (void __iomem *)SCFG_USB_PHY3;
+	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+}
+
+static inline void set_usb_txvreftune(u32 __iomem *scfg, u32 offset)
+{
+	scfg_clrsetbits32(scfg + offset / 4, 0xf << 6, SCFG_USB_TXVREFTUNE << 6);
+}
+
+static void erratum_a009008_ls1046a(void)
+{
+	u32 __iomem *scfg = IOMEM(LSCH2_SCFG_ADDR);
+
+	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB1);
+	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB2);
+	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB3);
+}
+
+static inline void set_usb_sqrxtune(u32 __iomem *scfg, u32 offset)
+{
+	scfg_clrbits32(scfg + offset / 4, SCFG_USB_SQRXTUNE_MASK << 23);
+}
+
+static void erratum_a009798_ls1046a(void)
+{
+	u32 __iomem *scfg = IOMEM(LSCH2_SCFG_ADDR);
+
+	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB1);
+	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB2);
+	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB3);
+}
+
+static void erratum_a008850_early(void)
+{
+	/* part 1 of 2 */
+	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
+	struct ccsr_ddr __iomem *ddr = IOMEM(LSCH2_DDR_ADDR);
+
+	/* Skip if running at lower exception level */
+	if (current_el() < 3)
+		return;
+
+	/* disables propagation of barrier transactions to DDRC from CCI400 */
+	out_le32(&cci->ctrl_ord, CCI400_CTRLORD_TERM_BARRIER);
+
+	/* disable the re-ordering in DDRC */
+	ddr_out32(&ddr->eor, DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
+}
+
+/* erratum_a009942_check_cpo */
+
+void ls1046a_errata(void)
+{
+	erratum_a008850_early();
+	erratum_a009008_ls1046a();
+	erratum_a009798_ls1046a();
+	erratum_a008997_ls1046a();
+	erratum_a009007_ls1046a();
+}
+
+static void erratum_a008850_post(void)
+{
+	/* part 2 of 2 */
+	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
+	struct ccsr_ddr __iomem *ddr = IOMEM(LSCH2_DDR_ADDR);
+	u32 tmp;
+
+	/* Skip if running at lower exception level */
+	if (current_el() < 3)
+		return;
+
+	/* enable propagation of barrier transactions to DDRC from CCI400 */
+	out_le32(&cci->ctrl_ord, CCI400_CTRLORD_EN_BARRIER);
+
+	/* enable the re-ordering in DDRC */
+	tmp = ddr_in32(&ddr->eor);
+	tmp &= ~(DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
+	ddr_out32(&ddr->eor, tmp);
+}
+
+/*
+ * This additional workaround of A009942 checks the condition to determine if
+ * the CPO value set by the existing A009942 workaround needs to be updated.
+ * If need, print a warning to prompt user reconfigure DDR debug_29[24:31] with
+ * expected optimal value, the optimal value is highly board dependent.
+ */
+static void erratum_a009942_check_cpo(void)
+{
+	struct ccsr_ddr __iomem *ddr =
+		(struct ccsr_ddr __iomem *)(LSCH2_DDR_ADDR);
+	u32 cpo, cpo_e, cpo_o, cpo_target, cpo_optimal;
+	u32 cpo_min = ddr_in32(&ddr->debug[9]) >> 24;
+	u32 cpo_max = cpo_min;
+	u32 sdram_cfg, i, tmp, lanes, ddr_type;
+	bool update_cpo = false, has_ecc = false;
+
+	sdram_cfg = ddr_in32(&ddr->sdram_cfg);
+	if (sdram_cfg & SDRAM_CFG_32_BE)
+		lanes = 4;
+	else if (sdram_cfg & SDRAM_CFG_16_BE)
+		lanes = 2;
+	else
+		lanes = 8;
+
+	if (sdram_cfg & SDRAM_CFG_ECC_EN)
+		has_ecc = true;
+
+	/* determine the maximum and minimum CPO values */
+	for (i = 9; i < 9 + lanes / 2; i++) {
+		cpo = ddr_in32(&ddr->debug[i]);
+		cpo_e = cpo >> 24;
+		cpo_o = (cpo >> 8) & 0xff;
+		tmp = min(cpo_e, cpo_o);
+		if (tmp < cpo_min)
+			cpo_min = tmp;
+		tmp = max(cpo_e, cpo_o);
+		if (tmp > cpo_max)
+			cpo_max = tmp;
+	}
+
+	if (has_ecc) {
+		cpo = ddr_in32(&ddr->debug[13]);
+		cpo = cpo >> 24;
+		if (cpo < cpo_min)
+			cpo_min = cpo;
+		if (cpo > cpo_max)
+			cpo_max = cpo;
+	}
+
+	cpo_target = ddr_in32(&ddr->debug[28]) & 0xff;
+	cpo_optimal = ((cpo_max + cpo_min) >> 1) + 0x27;
+	debug("cpo_optimal = 0x%x, cpo_target = 0x%x\n", cpo_optimal,
+	      cpo_target);
+	debug("cpo_max = 0x%x, cpo_min = 0x%x\n", cpo_max, cpo_min);
+
+	ddr_type = (sdram_cfg & SDRAM_CFG_SDRAM_TYPE_MASK) >>
+		    SDRAM_CFG_SDRAM_TYPE_SHIFT;
+	if (ddr_type == SDRAM_TYPE_DDR4)
+		update_cpo = (cpo_min + 0x3b) < cpo_target ? true : false;
+	else if (ddr_type == SDRAM_TYPE_DDR3)
+		update_cpo = (cpo_min + 0x3f) < cpo_target ? true : false;
+
+	if (update_cpo) {
+		printf("WARN: pls set popts->cpo_sample = 0x%x ", cpo_optimal);
+		printf("in <board>/ddr.c to optimize cpo\n");
+	}
+}
+
+void ls1046a_errata_post_ddr(void)
+{
+	erratum_a008850_post();
+	erratum_a009942_check_cpo();
+}
diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
new file mode 100644
index 0000000000..2326d7e67a
--- /dev/null
+++ b/arch/arm/mach-layerscape/icid.c
@@ -0,0 +1,243 @@
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/fsl_qbman.h>
+#include <soc/fsl/fsl_fman.h>
+
+/*
+ * Stream IDs on Chassis-2 (for example ls1043a, ls1046a, ls1012) devices
+ * are not hardwired and are programmed by sw.  There are a limited number
+ * of stream IDs available, and the partitioning of them is scenario
+ * dependent. This header defines the partitioning between legacy, PCI,
+ * and DPAA1 devices.
+ *
+ * This partitioning can be customized in this file depending
+ * on the specific hardware config:
+ *
+ *  -non-PCI legacy, platform devices (USB, SDHC, SATA, DMA, QE etc)
+ *     -all legacy devices get a unique stream ID assigned and programmed in
+ *      their AMQR registers by u-boot
+ *
+ *  -PCIe
+ *     -there is a range of stream IDs set aside for PCI in this
+ *      file.  U-boot will scan the PCI bus and for each device discovered:
+ *         -allocate a streamID
+ *         -set a PEXn LUT table entry mapping 'requester ID' to 'stream ID'
+ *         -set a msi-map entry in the PEXn controller node in the
+ *          device tree (see Documentation/devicetree/bindings/pci/pci-msi.txt
+ *          for more info on the msi-map definition)
+ *         -set a iommu-map entry in the PEXn controller node in the
+ *          device tree (see Documentation/devicetree/bindings/pci/pci-iommu.txt
+ *          for more info on the iommu-map definition)
+ *
+ *  -DPAA1
+ *     - Stream ids for DPAA1 use are reserved for future usecase.
+ *
+ */
+
+
+#define FSL_INVALID_STREAM_ID		0
+
+/* legacy devices */
+#define FSL_USB1_STREAM_ID		1
+#define FSL_USB2_STREAM_ID		2
+#define FSL_USB3_STREAM_ID		3
+#define FSL_SDHC_STREAM_ID		4
+#define FSL_SATA_STREAM_ID		5
+#define FSL_QE_STREAM_ID		6
+#define FSL_QDMA_STREAM_ID		7
+#define FSL_EDMA_STREAM_ID		8
+#define FSL_ETR_STREAM_ID		9
+#define FSL_DEBUG_STREAM_ID		10
+
+/* PCI - programmed in PEXn_LUT */
+#define FSL_PEX_STREAM_ID_START		11
+#define FSL_PEX_STREAM_ID_END		26
+
+/* DPAA1 - Stream-ID that can be programmed in DPAA1 h/w */
+#define FSL_DPAA1_STREAM_ID_START	27
+#define FSL_DPAA1_STREAM_ID_END		63
+
+struct icid_id_table {
+	const char *compat;
+	u32 id;
+	u32 reg;
+	phys_addr_t compat_addr;
+	phys_addr_t reg_addr;
+};
+
+struct fman_icid_id_table {
+	u32 port_id;
+	u32 icid;
+};
+
+#define SET_ICID_ENTRY(name, idA, regA, addr, compataddr) \
+	{					\
+		.compat = name,			\
+		.id = idA,			\
+		.reg = regA,			\
+		.compat_addr = compataddr,	\
+		.reg_addr = addr,		\
+	}
+
+#define SET_SCFG_ICID(compat, streamid, name, compataddr) \
+	SET_ICID_ENTRY(compat, streamid, (((streamid) << 24) | (1 << 23)), \
+		offsetof(struct ccsr_scfg, name) + LSCH2_SCFG_ADDR, \
+		compataddr)
+
+#define SET_USB_ICID(usb_num, compat, streamid) \
+	SET_SCFG_ICID(compat, streamid, usb##usb_num##_icid,\
+		LSCH2_XHCI_USB##usb_num##_ADDR)
+
+#define SET_SATA_ICID(compat, streamid) \
+	SET_SCFG_ICID(compat, streamid, sata_icid,\
+		LSCH2_HCI_BASE_ADDR)
+
+#define SET_SDHC_ICID(streamid) \
+	SET_SCFG_ICID("fsl,esdhc", streamid, sdhc_icid,\
+		LSCH2_ESDHC_ADDR)
+
+#define QMAN_CQSIDR_REG	0x20a80
+
+#define SET_QDMA_ICID(compat, streamid) \
+	SET_ICID_ENTRY(compat, streamid, (1 << 31) | (streamid), \
+		LSCH2_QDMA_BASE_ADDR + QMAN_CQSIDR_REG, \
+		LSCH2_QDMA_BASE_ADDR), \
+	SET_ICID_ENTRY(NULL, streamid, (1 << 31) | (streamid), \
+		LSCH2_QDMA_BASE_ADDR + QMAN_CQSIDR_REG + 4, \
+		LSCH2_QDMA_BASE_ADDR)
+
+#define SET_EDMA_ICID(streamid) \
+	SET_SCFG_ICID("fsl,vf610-edma", streamid, edma_icid,\
+		LSCH2_EDMA_BASE_ADDR)
+
+#define SET_ETR_ICID(streamid) \
+	SET_SCFG_ICID(NULL, streamid, etr_icid, 0)
+
+#define SET_DEBUG_ICID(streamid) \
+	SET_SCFG_ICID(NULL, streamid, debug_icid, 0)
+
+#define SET_QE_ICID(streamid) \
+	SET_SCFG_ICID("fsl,qe", streamid, qe_icid,\
+		LSCH2_QE_BASE_ADDR)
+
+#define SET_QMAN_ICID(streamid) \
+	SET_ICID_ENTRY("fsl,qman", streamid, streamid, \
+		offsetof(struct ccsr_qman, liodnr) + \
+		LSCH2_QMAN_ADDR, \
+		LSCH2_QMAN_ADDR)
+
+#define SET_BMAN_ICID(streamid) \
+	SET_ICID_ENTRY("fsl,bman", streamid, streamid, \
+		offsetof(struct ccsr_bman, liodnr) + \
+		LSCH2_BMAN_ADDR, \
+		LSCH2_BMAN_ADDR)
+
+#define SET_FMAN_ICID_ENTRY(_port_id, streamid) \
+	{ .port_id = (_port_id), .icid = (streamid) }
+
+#define SET_SEC_QI_ICID(streamid) \
+	SET_ICID_ENTRY("fsl,sec-v4.0", streamid, \
+		0, offsetof(ccsr_sec_t, qilcr_ls) + \
+		LSCH2_SEC_ADDR, \
+		LSCH2_SEC_ADDR)
+
+#define SET_SEC_JR_ICID_ENTRY(jr_num, streamid) \
+	SET_ICID_ENTRY( \
+		(CONFIG_ARMV8_SEC_FIRMWARE_SUPPORT && \
+		(FSL_SEC_JR##jr_num##_OFFSET ==  \
+			SEC_JR3_OFFSET + CONFIG_SYS_FSL_SEC_OFFSET) \
+			? NULL \
+			: "fsl,sec-v4.0-job-ring"), \
+		streamid, \
+		(((streamid) << 16) | (streamid)), \
+		offsetof(ccsr_sec_t, jrliodnr[jr_num].ls) + \
+		LSCH2_SEC_ADDR, \
+		FSL_SEC_JR##jr_num##_BASE_ADDR)
+
+#define SET_SEC_DECO_ICID_ENTRY(deco_num, streamid) \
+	SET_ICID_ENTRY(NULL, streamid, (((streamid) << 16) | (streamid)), \
+		offsetof(ccsr_sec_t, decoliodnr[deco_num].ls) + \
+		LSCH2_SEC_ADDR, 0)
+
+#define SET_SEC_RTIC_ICID_ENTRY(rtic_num, streamid) \
+	SET_ICID_ENTRY(NULL, streamid, (((streamid) << 16) | (streamid)), \
+		offsetof(ccsr_sec_t, rticliodnr[rtic_num].ls) + \
+		LSCH2_SEC_ADDR, 0)
+
+static struct icid_id_table icid_tbl_ls1046a[] = {
+	SET_QMAN_ICID(FSL_DPAA1_STREAM_ID_START),
+	SET_BMAN_ICID(FSL_DPAA1_STREAM_ID_START + 1),
+
+	SET_SDHC_ICID(FSL_SDHC_STREAM_ID),
+
+	SET_USB_ICID(1, "snps,dwc3", FSL_USB1_STREAM_ID),
+	SET_USB_ICID(2, "snps,dwc3", FSL_USB2_STREAM_ID),
+	SET_USB_ICID(3, "snps,dwc3", FSL_USB3_STREAM_ID),
+
+	SET_SATA_ICID("fsl,ls1046a-ahci", FSL_SATA_STREAM_ID),
+	SET_QDMA_ICID("fsl,ls1046a-qdma", FSL_QDMA_STREAM_ID),
+	SET_EDMA_ICID(FSL_EDMA_STREAM_ID),
+	SET_ETR_ICID(FSL_ETR_STREAM_ID),
+	SET_DEBUG_ICID(FSL_DEBUG_STREAM_ID),
+};
+
+static struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
+	/* port id, icid */
+	SET_FMAN_ICID_ENTRY(0x02, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x03, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x04, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x05, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x06, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x07, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x08, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x09, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x0a, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x0b, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x0c, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x0d, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x28, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x29, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x2a, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x2b, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x2c, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x2d, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x10, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x11, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x30, FSL_DPAA1_STREAM_ID_END),
+	SET_FMAN_ICID_ENTRY(0x31, FSL_DPAA1_STREAM_ID_END),
+};
+
+static void set_icid(struct icid_id_table *tbl, int size)
+{
+	int i;
+
+	for (i = 0; i < size; i++)
+		out_be32((u32 *)(tbl[i].reg_addr), tbl[i].reg);
+}
+
+static void set_fman_icids(struct fman_icid_id_table *tbl, int size)
+{
+	int i;
+	struct ccsr_fman *fm = (void *)LSCH2_FM1_ADDR;
+
+	for (i = 0; i < size; i++) {
+		out_be32(&fm->fm_bmi_common.fmbm_ppid[tbl[i].port_id - 1],
+			 tbl[i].icid);
+	}
+}
+
+static int set_icids(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1046a"))
+		return 0;
+
+	/* setup general icid offsets */
+	set_icid(icid_tbl_ls1046a, ARRAY_SIZE(icid_tbl_ls1046a));
+
+	set_fman_icids(fman_icid_tbl_ls1046a, ARRAY_SIZE(fman_icid_tbl_ls1046a));
+
+	return 0;
+}
+postcore_initcall(set_icids);
\ No newline at end of file
diff --git a/arch/arm/mach-layerscape/include/mach/debug_ll.h b/arch/arm/mach-layerscape/include/mach/debug_ll.h
new file mode 100644
index 0000000000..2658a4a7c9
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/debug_ll.h
@@ -0,0 +1,34 @@
+#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
+#define __INCLUDE_ARCH_DEBUG_LL_H__
+
+#include <io.h>
+#include <soc/fsl/immap_lsch2.h>
+
+#define __LS_UART_BASE(num)	LSCH2_NS16550_COM##num
+#define LS_UART_BASE(num) __LS_UART_BASE(num)
+
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+
+	return readb(base + reg);
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+
+	writeb(val, base + reg);
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	uint16_t divisor;
+
+	divisor = debug_ll_ns16550_calc_divisor(300000000);
+	debug_ll_ns16550_init(divisor);
+}
+
+#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-layerscape/include/mach/errata.h b/arch/arm/mach-layerscape/include/mach/errata.h
new file mode 100644
index 0000000000..bdefa22172
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/errata.h
@@ -0,0 +1,7 @@
+#ifndef __MACH_ERRATA_H
+#define __MACH_ERRATA_H
+
+void ls1046a_errata(void);
+void ls1046a_errata_post_ddr(void);
+
+#endif /* __MACH_ERRATA_H */
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
new file mode 100644
index 0000000000..55e0b7bc96
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
@@ -0,0 +1,7 @@
+#ifndef __MACH_LAYERSCAPE_H
+#define __MACH_LAYERSCAPE_H
+
+#define LS1046A_DDR_SDRAM_BASE	0x80000000
+#define LS1046A_DDR_FREQ	2100000000
+
+#endif /* __MACH_LAYERSCAPE_H */
diff --git a/arch/arm/mach-layerscape/include/mach/lowlevel.h b/arch/arm/mach-layerscape/include/mach/lowlevel.h
new file mode 100644
index 0000000000..0f5f0f3aad
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/lowlevel.h
@@ -0,0 +1,7 @@
+#ifndef __MACH_LOWLEVEL_H
+#define __MACH_LOWLEVEL_H
+
+void ls1046a_init_lowlevel(void);
+void ls1046a_init_l2_latency(void);
+
+#endif /* __MACH_LOWLEVEL_H */
diff --git a/arch/arm/mach-layerscape/lowlevel-ls1046a.c b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
new file mode 100644
index 0000000000..32f825ec25
--- /dev/null
+++ b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
@@ -0,0 +1,246 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <io.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/fsl_immap.h>
+
+enum csu_cslx_access {
+	CSU_NS_SUP_R = 0x08,
+	CSU_NS_SUP_W = 0x80,
+	CSU_NS_SUP_RW = 0x88,
+	CSU_NS_USER_R = 0x04,
+	CSU_NS_USER_W = 0x40,
+	CSU_NS_USER_RW = 0x44,
+	CSU_S_SUP_R = 0x02,
+	CSU_S_SUP_W = 0x20,
+	CSU_S_SUP_RW = 0x22,
+	CSU_S_USER_R = 0x01,
+	CSU_S_USER_W = 0x10,
+	CSU_S_USER_RW = 0x11,
+	CSU_ALL_RW = 0xff,
+};
+
+struct csu_ns_dev {
+	unsigned long ind;
+	uint32_t val;
+};
+
+enum csu_cslx_ind {
+	CSU_CSLX_PCIE2_IO = 0,
+	CSU_CSLX_PCIE1_IO,
+	CSU_CSLX_MG2TPR_IP,
+	CSU_CSLX_IFC_MEM,
+	CSU_CSLX_OCRAM,
+	CSU_CSLX_GIC,
+	CSU_CSLX_PCIE1,
+	CSU_CSLX_OCRAM2,
+	CSU_CSLX_QSPI_MEM,
+	CSU_CSLX_PCIE2,
+	CSU_CSLX_SATA,
+	CSU_CSLX_USB1,
+	CSU_CSLX_QM_BM_SWPORTAL,
+	CSU_CSLX_PCIE3 = 16,
+	CSU_CSLX_PCIE3_IO,
+	CSU_CSLX_USB3 = 20,
+	CSU_CSLX_USB2,
+	CSU_CSLX_PFE = 23,
+	CSU_CSLX_SERDES = 32,
+	CSU_CSLX_QDMA,
+	CSU_CSLX_LPUART2,
+	CSU_CSLX_LPUART1,
+	CSU_CSLX_LPUART4,
+	CSU_CSLX_LPUART3,
+	CSU_CSLX_LPUART6,
+	CSU_CSLX_LPUART5,
+	CSU_CSLX_DSPI1 = 41,
+	CSU_CSLX_QSPI,
+	CSU_CSLX_ESDHC,
+	CSU_CSLX_IFC = 45,
+	CSU_CSLX_I2C1,
+	CSU_CSLX_USB_2,
+	CSU_CSLX_I2C3 = 48,
+	CSU_CSLX_I2C2,
+	CSU_CSLX_DUART2 = 50,
+	CSU_CSLX_DUART1,
+	CSU_CSLX_WDT2,
+	CSU_CSLX_WDT1,
+	CSU_CSLX_EDMA,
+	CSU_CSLX_SYS_CNT,
+	CSU_CSLX_DMA_MUX2,
+	CSU_CSLX_DMA_MUX1,
+	CSU_CSLX_DDR,
+	CSU_CSLX_QUICC,
+	CSU_CSLX_DCFG_CCU_RCPM = 60,
+	CSU_CSLX_SECURE_BOOTROM,
+	CSU_CSLX_SFP,
+	CSU_CSLX_TMU,
+	CSU_CSLX_SECURE_MONITOR,
+	CSU_CSLX_SCFG,
+	CSU_CSLX_FM = 66,
+	CSU_CSLX_SEC5_5,
+	CSU_CSLX_BM,
+	CSU_CSLX_QM,
+	CSU_CSLX_GPIO2 = 70,
+	CSU_CSLX_GPIO1,
+	CSU_CSLX_GPIO4,
+	CSU_CSLX_GPIO3,
+	CSU_CSLX_PLATFORM_CONT,
+	CSU_CSLX_CSU,
+	CSU_CSLX_IIC4 = 77,
+	CSU_CSLX_WDT4,
+	CSU_CSLX_WDT3,
+	CSU_CSLX_ESDHC2 = 80,
+	CSU_CSLX_WDT5 = 81,
+	CSU_CSLX_SAI2,
+	CSU_CSLX_SAI1,
+	CSU_CSLX_SAI4,
+	CSU_CSLX_SAI3,
+	CSU_CSLX_FTM2 = 86,
+	CSU_CSLX_FTM1,
+	CSU_CSLX_FTM4,
+	CSU_CSLX_FTM3,
+	CSU_CSLX_FTM6 = 90,
+	CSU_CSLX_FTM5,
+	CSU_CSLX_FTM8,
+	CSU_CSLX_FTM7,
+	CSU_CSLX_DSCR = 121,
+};
+
+static struct csu_ns_dev ns_dev[] = {
+	 {CSU_CSLX_PCIE2_IO, CSU_ALL_RW},
+	 {CSU_CSLX_PCIE1_IO, CSU_ALL_RW},
+	 {CSU_CSLX_MG2TPR_IP, CSU_ALL_RW},
+	 {CSU_CSLX_IFC_MEM, CSU_ALL_RW},
+	 {CSU_CSLX_OCRAM, CSU_ALL_RW},
+	 {CSU_CSLX_GIC, CSU_ALL_RW},
+	 {CSU_CSLX_PCIE1, CSU_ALL_RW},
+	 {CSU_CSLX_OCRAM2, CSU_ALL_RW},
+	 {CSU_CSLX_QSPI_MEM, CSU_ALL_RW},
+	 {CSU_CSLX_PCIE2, CSU_ALL_RW},
+	 {CSU_CSLX_SATA, CSU_ALL_RW},
+	 {CSU_CSLX_USB1, CSU_ALL_RW},
+	 {CSU_CSLX_QM_BM_SWPORTAL, CSU_ALL_RW},
+	 {CSU_CSLX_PCIE3, CSU_ALL_RW},
+	 {CSU_CSLX_PCIE3_IO, CSU_ALL_RW},
+	 {CSU_CSLX_USB3, CSU_ALL_RW},
+	 {CSU_CSLX_USB2, CSU_ALL_RW},
+	 {CSU_CSLX_PFE, CSU_ALL_RW},
+	 {CSU_CSLX_SERDES, CSU_ALL_RW},
+	 {CSU_CSLX_QDMA, CSU_ALL_RW},
+	 {CSU_CSLX_LPUART2, CSU_ALL_RW},
+	 {CSU_CSLX_LPUART1, CSU_ALL_RW},
+	 {CSU_CSLX_LPUART4, CSU_ALL_RW},
+	 {CSU_CSLX_LPUART3, CSU_ALL_RW},
+	 {CSU_CSLX_LPUART6, CSU_ALL_RW},
+	 {CSU_CSLX_LPUART5, CSU_ALL_RW},
+	 {CSU_CSLX_DSPI1, CSU_ALL_RW},
+	 {CSU_CSLX_QSPI, CSU_ALL_RW},
+	 {CSU_CSLX_ESDHC, CSU_ALL_RW},
+	 {CSU_CSLX_IFC, CSU_ALL_RW},
+	 {CSU_CSLX_I2C1, CSU_ALL_RW},
+	 {CSU_CSLX_I2C3, CSU_ALL_RW},
+	 {CSU_CSLX_I2C2, CSU_ALL_RW},
+	 {CSU_CSLX_DUART2, CSU_ALL_RW},
+	 {CSU_CSLX_DUART1, CSU_ALL_RW},
+	 {CSU_CSLX_WDT2, CSU_ALL_RW},
+	 {CSU_CSLX_WDT1, CSU_ALL_RW},
+	 {CSU_CSLX_EDMA, CSU_ALL_RW},
+	 {CSU_CSLX_SYS_CNT, CSU_ALL_RW},
+	 {CSU_CSLX_DMA_MUX2, CSU_ALL_RW},
+	 {CSU_CSLX_DMA_MUX1, CSU_ALL_RW},
+	 {CSU_CSLX_DDR, CSU_ALL_RW},
+	 {CSU_CSLX_QUICC, CSU_ALL_RW},
+	 {CSU_CSLX_DCFG_CCU_RCPM, CSU_ALL_RW},
+	 {CSU_CSLX_SECURE_BOOTROM, CSU_ALL_RW},
+	 {CSU_CSLX_SFP, CSU_ALL_RW},
+	 {CSU_CSLX_TMU, CSU_ALL_RW},
+	 {CSU_CSLX_SECURE_MONITOR, CSU_ALL_RW},
+	 {CSU_CSLX_SCFG, CSU_ALL_RW},
+	 {CSU_CSLX_FM, CSU_ALL_RW},
+	 {CSU_CSLX_SEC5_5, CSU_ALL_RW},
+	 {CSU_CSLX_BM, CSU_ALL_RW},
+	 {CSU_CSLX_QM, CSU_ALL_RW},
+	 {CSU_CSLX_GPIO2, CSU_ALL_RW},
+	 {CSU_CSLX_GPIO1, CSU_ALL_RW},
+	 {CSU_CSLX_GPIO4, CSU_ALL_RW},
+	 {CSU_CSLX_GPIO3, CSU_ALL_RW},
+	 {CSU_CSLX_PLATFORM_CONT, CSU_ALL_RW},
+	 {CSU_CSLX_CSU, CSU_ALL_RW},
+	 {CSU_CSLX_IIC4, CSU_ALL_RW},
+	 {CSU_CSLX_WDT4, CSU_ALL_RW},
+	 {CSU_CSLX_WDT3, CSU_ALL_RW},
+	 {CSU_CSLX_ESDHC2, CSU_ALL_RW},
+	 {CSU_CSLX_WDT5, CSU_ALL_RW},
+	 {CSU_CSLX_SAI2, CSU_ALL_RW},
+	 {CSU_CSLX_SAI1, CSU_ALL_RW},
+	 {CSU_CSLX_SAI4, CSU_ALL_RW},
+	 {CSU_CSLX_SAI3, CSU_ALL_RW},
+	 {CSU_CSLX_FTM2, CSU_ALL_RW},
+	 {CSU_CSLX_FTM1, CSU_ALL_RW},
+	 {CSU_CSLX_FTM4, CSU_ALL_RW},
+	 {CSU_CSLX_FTM3, CSU_ALL_RW},
+	 {CSU_CSLX_FTM6, CSU_ALL_RW},
+	 {CSU_CSLX_FTM5, CSU_ALL_RW},
+	 {CSU_CSLX_FTM8, CSU_ALL_RW},
+	 {CSU_CSLX_FTM7, CSU_ALL_RW},
+	 {CSU_CSLX_DSCR, CSU_ALL_RW},
+};
+
+static void set_devices_ns_access(unsigned long index, u16 val)
+{
+	u32 *base = IOMEM(LSCH2_CSU_ADDR);
+	u32 *reg;
+	uint32_t tmp;
+
+	reg = base + index / 2;
+	tmp = in_be32(reg);
+	if (index % 2 == 0) {
+		tmp &= 0x0000ffff;
+		tmp |= val << 16;
+	} else {
+		tmp &= 0xffff0000;
+		tmp |= val;
+	}
+
+	out_be32(reg, tmp);
+}
+
+static void init_csu(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ns_dev); i++)
+		set_devices_ns_access(ns_dev[i].ind, ns_dev[i].val);
+}
+
+void ls1046a_init_lowlevel(void)
+{
+	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
+	struct ccsr_scfg *scfg = IOMEM(LSCH2_SCFG_ADDR);
+
+	init_csu();
+	ls1046a_init_l2_latency();
+	set_cntfrq(25000000);
+	syscnt_enable(IOMEM(LSCH2_SYS_COUNTER_ADDR));
+
+	/* Make SEC reads and writes snoopable */
+	setbits_be32(&scfg->snpcnfgcr, SCFG_SNPCNFGCR_SECRDSNP |
+		SCFG_SNPCNFGCR_SECWRSNP |
+		SCFG_SNPCNFGCR_SATARDSNP |
+		SCFG_SNPCNFGCR_SATAWRSNP);
+
+	/*
+	 * Enable snoop requests and DVM message requests for
+	 * Slave insterface S4 (A53 core cluster)
+	 */
+	if (current_el() == 3) {
+		out_le32(&cci->slave[4].snoop_ctrl,
+			CCI400_DVM_MESSAGE_REQ_EN | CCI400_SNOOP_REQ_EN);
+	}
+
+	ls1046a_errata();
+}
diff --git a/arch/arm/mach-layerscape/lowlevel.S b/arch/arm/mach-layerscape/lowlevel.S
new file mode 100644
index 0000000000..adb3e54367
--- /dev/null
+++ b/arch/arm/mach-layerscape/lowlevel.S
@@ -0,0 +1,18 @@
+#include <linux/linkage.h>
+
+.section .text.ls1046a_init_l2_latency
+ENTRY(ls1046a_init_l2_latency)
+	/* Initialize the L2 RAM latency */
+	mrs   x1, S3_1_c11_c0_2
+	mov   x0, #0x1C7
+	/* Clear L2 Tag RAM latency and L2 Data RAM latency */
+	bic   x1, x1, x0
+	/* Set L2 data ram latency bits [2:0] */
+	orr   x1, x1, #0x2
+	/* set L2 tag ram latency bits [8:6] */
+	orr   x1,  x1, #0x80
+	msr   S3_1_c11_c0_2, x1
+	isb
+
+	ret
+ENDPROC(ls1046a_init_l2_latency);
diff --git a/common/Kconfig b/common/Kconfig
index 43b657019f..c31774340c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1236,6 +1236,14 @@ config DEBUG_SOCFPGA_UART_CLOCK
 	help
 	  Choose UART root clock.
 
+config DEBUG_LAYERSCAPE_UART_PORT
+	int "Layerscape UART port selection"
+	depends on ARCH_LAYERSCAPE
+	default 1
+	help
+	  Select the UART port number used for early debugging here. Port
+	  numbers start counting from 1.
+
 config DEBUG_INITCALLS
 	bool "Trace initcalls"
 	help
diff --git a/images/Makefile b/images/Makefile
index c0ad500303..542cfdb22c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -145,6 +145,7 @@ include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
 include $(srctree)/images/Makefile.at91
 include $(srctree)/images/Makefile.zynqmp
+include $(srctree)/images/Makefile.layerscape
 
 ifneq ($(pblx-y)$(pblx-),)
   $(error pblx- has been removed. Please use pblb- instead.)
@@ -179,5 +180,5 @@ $(flash-list): $(image-y-path)
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
-	start_*.simximg start_*.usimximg *.imx-sram-img
+	start_*.simximg start_*.usimximg *.imx-sram-img *.image
 clean-files += pbl.lds
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
new file mode 100644
index 0000000000..81838b404a
--- /dev/null
+++ b/images/Makefile.layerscape
@@ -0,0 +1,18 @@
+#
+# barebox image generation Makefile for NXP Layerscape images
+#
+
+lspbl_cfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
+      -I $(srctree)/include -include include/generated/autoconf.h
+
+lspbl-rcw-tmp = $(subst $(comma),_,$(dot-target).lspbl_rcw.tmp)
+lspbl-pbi-tmp = $(subst $(comma),_,$(dot-target).lspbl_pbi.tmp)
+
+quiet_cmd_lspbl_image = LSPBL-IMG $@
+      cmd_lspbl_image = $(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-rcw-tmp) $(word 2,$^) ; \
+			$(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-pbi-tmp) $(word 3,$^) ; \
+			$(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) \
+			-m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
+
+$(obj)/%.lspblimg: $(obj)/% FORCE
+	$(call if_changed,lspbl_image,$(RCW_$(@F)),$(PBI_$(@F)),)
diff --git a/include/soc/fsl/fsl_qbman.h b/include/soc/fsl/fsl_qbman.h
new file mode 100644
index 0000000000..4687eb9bb1
--- /dev/null
+++ b/include/soc/fsl/fsl_qbman.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2017 NXP
+ */
+
+#ifndef __FSL_QBMAN_H__
+#define __FSL_QBMAN_H__
+void fdt_fixup_qportals(void *blob);
+void fdt_fixup_bportals(void *blob);
+void inhibit_portals(void __iomem *addr, int max_portals,
+		     int arch_max_portals, int portal_cinh_size);
+void setup_qbman_portals(void);
+
+struct ccsr_qman {
+#ifdef CONFIG_SYS_FSL_QMAN_V3
+	u8	res0[0x200];
+#else
+	struct {
+		u32	qcsp_lio_cfg;	/* 0x0 - SW Portal n LIO cfg */
+		u32	qcsp_io_cfg;	/* 0x4 - SW Portal n IO cfg */
+		u32	res;
+		u32	qcsp_dd_cfg;	/* 0xc - SW Portal Dynamic Debug cfg */
+	} qcsp[32];
+#endif
+	/* Not actually reserved, but irrelevant to u-boot */
+	u8	res[0xbf8 - 0x200];
+	u32	ip_rev_1;
+	u32	ip_rev_2;
+	u32	fqd_bare;	/* FQD Extended Base Addr Register */
+	u32	fqd_bar;	/* FQD Base Addr Register */
+	u8	res1[0x8];
+	u32	fqd_ar;		/* FQD Attributes Register */
+	u8	res2[0xc];
+	u32	pfdr_bare;	/* PFDR Extended Base Addr Register */
+	u32	pfdr_bar;	/* PFDR Base Addr Register */
+	u8	res3[0x8];
+	u32	pfdr_ar;	/* PFDR Attributes Register */
+	u8	res4[0x4c];
+	u32	qcsp_bare;	/* QCSP Extended Base Addr Register */
+	u32	qcsp_bar;	/* QCSP Base Addr Register */
+	u8	res5[0x78];
+	u32	ci_sched_cfg;	/* Initiator Scheduling Configuration */
+	u32	srcidr;		/* Source ID Register */
+	u32	liodnr;		/* LIODN Register */
+	u8	res6[4];
+	u32	ci_rlm_cfg;	/* Initiator Read Latency Monitor Cfg */
+	u32	ci_rlm_avg;	/* Initiator Read Latency Monitor Avg */
+	u8	res7[0x2e8];
+#ifdef CONFIG_SYS_FSL_QMAN_V3
+	struct {
+		u32	qcsp_lio_cfg;	/* 0x0 - SW Portal n LIO cfg */
+		u32	qcsp_io_cfg;	/* 0x4 - SW Portal n IO cfg */
+		u32	res;
+		u32	qcsp_dd_cfg;	/* 0xc - SW Portal n Dynamic Debug cfg*/
+	} qcsp[50];
+#endif
+};
+
+struct ccsr_bman {
+	/* Not actually reserved, but irrelevant to u-boot */
+	u8	res[0xbf8];
+	u32	ip_rev_1;
+	u32	ip_rev_2;
+	u32	fbpr_bare;	/* FBPR Extended Base Addr Register */
+	u32	fbpr_bar;	/* FBPR Base Addr Register */
+	u8	res1[0x8];
+	u32	fbpr_ar;	/* FBPR Attributes Register */
+	u8	res2[0xf0];
+	u32	srcidr;		/* Source ID Register */
+	u32	liodnr;		/* LIODN Register */
+	u8	res7[0x2f4];
+};
+
+#endif /* __FSL_QBMAN_H__ */
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
new file mode 100644
index 0000000000..4eb6658788
--- /dev/null
+++ b/include/soc/fsl/immap_lsch2.h
@@ -0,0 +1,355 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2013-2015 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __ARCH_FSL_LSCH2_IMMAP_H__
+#define __ARCH_FSL_LSCH2_IMMAP_H__
+
+#define gur_in32(a)       in_be32(a)
+#define gur_out32(a, v)   out_be32(a, v)
+
+#define LSCH2_IMMR				0x01000000
+
+#define LSCH2_DDR_ADDR			(LSCH2_IMMR + 0x00080000)
+#define LSCH2_CCI400_ADDR		(LSCH2_IMMR + 0x00180000)
+#define LSCH2_GIC400_ADDR		(LSCH2_IMMR + 0x00400000)
+#define LSCH2_IFC_ADDR			(LSCH2_IMMR + 0x00530000)
+#define LSCH2_QSPI0_BASE_ADDR		(LSCH2_IMMR + 0x00550000)
+#define LSCH2_ESDHC_ADDR		(LSCH2_IMMR + 0x00560000)
+#define LSCH2_CSU_ADDR			(LSCH2_IMMR + 0x00510000)
+#define LSCH2_SCFG_ADDR			(LSCH2_IMMR + 0x00570000)
+#define LSCH2_BMAN_ADDR			(LSCH2_IMMR + 0x00890000)
+#define LSCH2_QMAN_ADDR			(LSCH2_IMMR + 0x00880000)
+#define LSCH2_FM1_ADDR			(LSCH2_IMMR + 0x00a00000)
+#define LSCH2_FM1_DTSEC1_ADDR		(LSCH2_IMMR + 0x00ae0000)
+#define LSCH2_SEC_MON_ADDR		(LSCH2_IMMR + 0x00e90000)
+#define LSCH2_SFP_ADDR			(LSCH2_IMMR + 0x00e80200)
+#define LSCH2_GUTS_ADDR			(LSCH2_IMMR + 0x00ee0000)
+#define LSCH2_RST_ADDR			(LSCH2_IMMR + 0x00ee00b0)
+#define LSCH2_FMAN_ADDR			(LSCH2_IMMR + 0x00a00000)
+#define LSCH2_SERDES_ADDR		(LSCH2_IMMR + 0x00ea0000)
+#define LSCH2_DCFG_ADDR			(LSCH2_IMMR + 0x00ee0000)
+#define LSCH2_CLK_ADDR			(LSCH2_IMMR + 0x00ee1000)
+#define LSCH2_DSPI1_BASE_ADDR		(LSCH2_IMMR + 0x01100000)
+#define LSCH2_I2C1_BASE_ADDR		(LSCH2_IMMR + 0x01180000)
+#define LSCH2_I2C2_BASE_ADDR		(LSCH2_IMMR + 0x01190000)
+#define LSCH2_I2C3_BASE_ADDR		(LSCH2_IMMR + 0x011a0000)
+#define LSCH2_I2C4_BASE_ADDR		(LSCH2_IMMR + 0x011b0000)
+#define LSCH2_NS16550_COM1		(LSCH2_IMMR + 0x011c0500)
+#define LSCH2_NS16550_COM2		(LSCH2_IMMR + 0x011c0600)
+#define LSCH2_NS16550_COM3		(LSCH2_IMMR + 0x011d0500)
+#define LSCH2_NS16550_COM4		(LSCH2_IMMR + 0x011d0600)
+#define LSCH2_GPIO1_BASE_ADDR		(LSCH2_IMMR + 0x01300000)
+#define LSCH2_GPIO2_BASE_ADDR		(LSCH2_IMMR + 0x01310000)
+#define LSCH2_GPIO3_BASE_ADDR		(LSCH2_IMMR + 0x01320000)
+#define LSCH2_GPIO4_BASE_ADDR		(LSCH2_IMMR + 0x01330000)
+#define LSCH2_QE_BASE_ADDR		(LSCH2_IMMR + 0x01400000)
+#define LSCH2_LPUART_BASE		(LSCH2_IMMR + 0x01950000)
+#define LSCH2_WDOG1_BASE_ADDR		(LSCH2_IMMR + 0x01ad0000)
+#define LSCH2_SYS_COUNTER_ADDR		(LSCH2_IMMR + 0x01b00000)
+#define LSCH2_EDMA_BASE_ADDR		(LSCH2_IMMR + 0x01c00000)
+#define LSCH2_XHCI_USB1_ADDR		(LSCH2_IMMR + 0x01f00000)
+#define LSCH2_XHCI_USB2_ADDR		(LSCH2_IMMR + 0x02000000)
+#define LSCH2_XHCI_USB3_ADDR		(LSCH2_IMMR + 0x02100000)
+#define LSCH2_HCI_BASE_ADDR		(LSCH2_IMMR + 0x02200000)
+#define LSCH2_PCIE1_ADDR		(LSCH2_IMMR + 0x02400000)
+#define LSCH2_PCIE2_ADDR		(LSCH2_IMMR + 0x02500000)
+#define LSCH2_PCIE3_ADDR		(LSCH2_IMMR + 0x02600000)
+#define LSCH2_QDMA_BASE_ADDR		(LSCH2_IMMR + 0x07380000)
+#define LSCH2_EHCI_USB1_ADDR		(LSCH2_IMMR + 0x07600000)
+
+struct ccsr_gur {
+	u32     porsr1;         /* POR status 1 */
+#define FSL_CHASSIS2_CCSR_PORSR1_RCW_MASK	0xFF800000
+	u32     porsr2;         /* POR status 2 */
+	u8      res_008[0x20-0x8];
+	u32     gpporcr1;       /* General-purpose POR configuration */
+	u32	gpporcr2;
+#define FSL_CHASSIS2_DCFG_FUSESR_VID_SHIFT	25
+#define FSL_CHASSIS2_DCFG_FUSESR_VID_MASK	0x1F
+#define FSL_CHASSIS2_DCFG_FUSESR_ALTVID_SHIFT	20
+#define FSL_CHASSIS2_DCFG_FUSESR_ALTVID_MASK	0x1F
+	u32     dcfg_fusesr;    /* Fuse status register */
+	u8      res_02c[0x70-0x2c];
+	u32     devdisr;        /* Device disable control */
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_1	0x80000000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_2	0x40000000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_3	0x20000000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_4	0x10000000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_5	0x08000000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_6	0x04000000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_9	0x00800000
+#define FSL_CHASSIS2_DEVDISR2_DTSEC1_10	0x00400000
+#define FSL_CHASSIS2_DEVDISR2_10GEC1_1	0x00800000
+#define FSL_CHASSIS2_DEVDISR2_10GEC1_2	0x00400000
+#define FSL_CHASSIS2_DEVDISR2_10GEC1_3	0x80000000
+#define FSL_CHASSIS2_DEVDISR2_10GEC1_4	0x40000000
+	u32     devdisr2;       /* Device disable control 2 */
+	u32     devdisr3;       /* Device disable control 3 */
+	u32     devdisr4;       /* Device disable control 4 */
+	u32     devdisr5;       /* Device disable control 5 */
+	u32     devdisr6;       /* Device disable control 6 */
+	u32     devdisr7;       /* Device disable control 7 */
+	u8      res_08c[0x94-0x8c];
+	u32     coredisru;      /* uppper portion for support of 64 cores */
+	u32     coredisrl;      /* lower portion for support of 64 cores */
+	u8      res_09c[0xa0-0x9c];
+	u32     pvr;            /* Processor version */
+	u32     svr;            /* System version */
+	u32     mvr;            /* Manufacturing version */
+	u8	res_0ac[0xb0-0xac];
+	u32	rstcr;		/* Reset control */
+	u32	rstrqpblsr;	/* Reset request preboot loader status */
+	u8	res_0b8[0xc0-0xb8];
+	u32	rstrqmr1;	/* Reset request mask */
+	u8	res_0c4[0xc8-0xc4];
+	u32	rstrqsr1;	/* Reset request status */
+	u8	res_0cc[0xd4-0xcc];
+	u32	rstrqwdtmrl;	/* Reset request WDT mask */
+	u8	res_0d8[0xdc-0xd8];
+	u32	rstrqwdtsrl;	/* Reset request WDT status */
+	u8	res_0e0[0xe4-0xe0];
+	u32	brrl;		/* Boot release */
+	u8      res_0e8[0x100-0xe8];
+	u32     rcwsr[16];      /* Reset control word status */
+#define FSL_CHASSIS2_RCWSR0_SYS_PLL_RAT_SHIFT	25
+#define FSL_CHASSIS2_RCWSR0_SYS_PLL_RAT_MASK	0x1f
+#define FSL_CHASSIS2_RCWSR0_MEM_PLL_RAT_SHIFT	16
+#define FSL_CHASSIS2_RCWSR0_MEM_PLL_RAT_MASK	0x3f
+#define FSL_CHASSIS2_RCWSR4_SRDS1_PRTCL_MASK	0xffff0000
+#define FSL_CHASSIS2_RCWSR4_SRDS1_PRTCL_SHIFT	16
+#define FSL_CHASSIS2_RCWSR4_SRDS2_PRTCL_MASK	0x0000ffff
+#define FSL_CHASSIS2_RCWSR4_SRDS2_PRTCL_SHIFT	0
+#define RCW_SB_EN_REG_INDEX	7
+#define RCW_SB_EN_MASK		0x00200000
+
+	u8      res_140[0x200-0x140];
+	u32     scratchrw[4];  /* Scratch Read/Write */
+	u8      res_210[0x300-0x210];
+	u32     scratchw1r[4];  /* Scratch Read (Write once) */
+	u8      res_310[0x400-0x310];
+	u32	crstsr[12];
+	u8	res_430[0x500-0x430];
+
+	/* PCI Express n Logical I/O Device Number register */
+	u32 dcfg_ccsr_pex1liodnr;
+	u32 dcfg_ccsr_pex2liodnr;
+	u32 dcfg_ccsr_pex3liodnr;
+	u32 dcfg_ccsr_pex4liodnr;
+	/* RIO n Logical I/O Device Number register */
+	u32 dcfg_ccsr_rio1liodnr;
+	u32 dcfg_ccsr_rio2liodnr;
+	u32 dcfg_ccsr_rio3liodnr;
+	u32 dcfg_ccsr_rio4liodnr;
+	/* USB Logical I/O Device Number register */
+	u32 dcfg_ccsr_usb1liodnr;
+	u32 dcfg_ccsr_usb2liodnr;
+	u32 dcfg_ccsr_usb3liodnr;
+	u32 dcfg_ccsr_usb4liodnr;
+	/* SD/MMC Logical I/O Device Number register */
+	u32 dcfg_ccsr_sdmmc1liodnr;
+	u32 dcfg_ccsr_sdmmc2liodnr;
+	u32 dcfg_ccsr_sdmmc3liodnr;
+	u32 dcfg_ccsr_sdmmc4liodnr;
+	/* RIO Message Unit Logical I/O Device Number register */
+	u32 dcfg_ccsr_riomaintliodnr;
+
+	u8      res_544[0x550-0x544];
+	u32	sataliodnr[4];
+	u8	res_560[0x570-0x560];
+
+	u32 dcfg_ccsr_misc1liodnr;
+	u32 dcfg_ccsr_misc2liodnr;
+	u32 dcfg_ccsr_misc3liodnr;
+	u32 dcfg_ccsr_misc4liodnr;
+	u32 dcfg_ccsr_dma1liodnr;
+	u32 dcfg_ccsr_dma2liodnr;
+	u32 dcfg_ccsr_dma3liodnr;
+	u32 dcfg_ccsr_dma4liodnr;
+	u32 dcfg_ccsr_spare1liodnr;
+	u32 dcfg_ccsr_spare2liodnr;
+	u32 dcfg_ccsr_spare3liodnr;
+	u32 dcfg_ccsr_spare4liodnr;
+	u8	res_5a0[0x600-0x5a0];
+	u32 dcfg_ccsr_pblsr;
+
+	u32	pamubypenr;
+	u32	dmacr1;
+
+	u8	res_60c[0x610-0x60c];
+	u32 dcfg_ccsr_gensr1;
+	u32 dcfg_ccsr_gensr2;
+	u32 dcfg_ccsr_gensr3;
+	u32 dcfg_ccsr_gensr4;
+	u32 dcfg_ccsr_gencr1;
+	u32 dcfg_ccsr_gencr2;
+	u32 dcfg_ccsr_gencr3;
+	u32 dcfg_ccsr_gencr4;
+	u32 dcfg_ccsr_gencr5;
+	u32 dcfg_ccsr_gencr6;
+	u32 dcfg_ccsr_gencr7;
+	u8	res_63c[0x658-0x63c];
+	u32 dcfg_ccsr_cgensr1;
+	u32 dcfg_ccsr_cgensr0;
+	u8	res_660[0x678-0x660];
+	u32 dcfg_ccsr_cgencr1;
+
+	u32 dcfg_ccsr_cgencr0;
+	u8	res_680[0x700-0x680];
+	u32 dcfg_ccsr_sriopstecr;
+	u32 dcfg_ccsr_dcsrcr;
+
+	u8      res_708[0x740-0x708];   /* add more registers when needed */
+	u32     tp_ityp[64];    /* Topology Initiator Type Register */
+	struct {
+		u32     upper;
+		u32     lower;
+	} tp_cluster[16];
+	u8      res_8c0[0xa00-0x8c0];   /* add more registers when needed */
+	u32 dcfg_ccsr_qmbm_warmrst;
+	u8      res_a04[0xa20-0xa04];   /* add more registers when needed */
+	u32 dcfg_ccsr_reserved0;
+	u32 dcfg_ccsr_reserved1;
+};
+
+#define SCFG_QSPI_CLKSEL		0x40100000
+#define SCFG_USBDRVVBUS_SELCR_USB1	0x00000000
+#define SCFG_USBDRVVBUS_SELCR_USB2	0x00000001
+#define SCFG_USBDRVVBUS_SELCR_USB3	0x00000002
+#define SCFG_USBPWRFAULT_INACTIVE	0x00000000
+#define SCFG_USBPWRFAULT_SHARED		0x00000001
+#define SCFG_USBPWRFAULT_DEDICATED	0x00000002
+#define SCFG_USBPWRFAULT_USB3_SHIFT	4
+#define SCFG_USBPWRFAULT_USB2_SHIFT	2
+#define SCFG_USBPWRFAULT_USB1_SHIFT	0
+
+#define SCFG_USB3PRM1CR_USB1		0x070
+#define SCFG_USB3PRM2CR_USB1		0x074
+#define SCFG_USB3PRM1CR_USB2		0x07C
+#define SCFG_USB3PRM2CR_USB2		0x080
+#define SCFG_USB3PRM1CR_USB3		0x088
+#define SCFG_USB3PRM2CR_USB3		0x08c
+#define SCFG_USB_TXVREFTUNE			0x9
+#define SCFG_USB_SQRXTUNE_MASK		0x7
+#define SCFG_USB_PCSTXSWINGFULL		0x47
+#define SCFG_USB_PHY1			0x084F0000
+#define SCFG_USB_PHY2			0x08500000
+#define SCFG_USB_PHY3			0x08510000
+#define SCFG_USB_PHY_RX_OVRD_IN_HI		0x200c
+#define USB_PHY_RX_EQ_VAL_1		0x0000
+#define USB_PHY_RX_EQ_VAL_2		0x0080
+#define USB_PHY_RX_EQ_VAL_3		0x0380
+#define USB_PHY_RX_EQ_VAL_4		0x0b80
+
+#define SCFG_SNPCNFGCR_SECRDSNP		0x80000000
+#define SCFG_SNPCNFGCR_SECWRSNP		0x40000000
+#define SCFG_SNPCNFGCR_SATARDSNP	0x00800000
+#define SCFG_SNPCNFGCR_SATAWRSNP	0x00400000
+
+/* RGMIIPCR bit definitions*/
+#define SCFG_RGMIIPCR_EN_AUTO		BIT(3)
+#define SCFG_RGMIIPCR_SETSP_1000M	BIT(2)
+#define SCFG_RGMIIPCR_SETSP_100M	0
+#define SCFG_RGMIIPCR_SETSP_10M		BIT(1)
+#define SCFG_RGMIIPCR_SETFD		BIT(0)
+
+/* PFEASBCR bit definitions */
+#define SCFG_PFEASBCR_ARCACHE0		BIT(31)
+#define SCFG_PFEASBCR_AWCACHE0		BIT(30)
+#define SCFG_PFEASBCR_ARCACHE1		BIT(29)
+#define SCFG_PFEASBCR_AWCACHE1		BIT(28)
+#define SCFG_PFEASBCR_ARSNP		BIT(27)
+#define SCFG_PFEASBCR_AWSNP		BIT(26)
+
+/* WR_QoS1 PFE bit definitions */
+#define SCFG_WR_QOS1_PFE1_QOS		GENMASK(27, 24)
+#define SCFG_WR_QOS1_PFE2_QOS		GENMASK(23, 20)
+
+/* RD_QoS1 PFE bit definitions */
+#define SCFG_RD_QOS1_PFE1_QOS		GENMASK(27, 24)
+#define SCFG_RD_QOS1_PFE2_QOS		GENMASK(23, 20)
+
+/* Supplemental Configuration Unit */
+struct ccsr_scfg {
+	u8 res_000[0x100-0x000];
+	u32 usb2_icid;
+	u32 usb3_icid;
+	u8 res_108[0x114-0x108];
+	u32 dma_icid;
+	u32 sata_icid;
+	u32 usb1_icid;
+	u32 qe_icid;
+	u32 sdhc_icid;
+	u32 edma_icid;
+	u32 etr_icid;
+	u32 core_sft_rst[4];
+	u8 res_140[0x158-0x140];
+	u32 altcbar;
+	u32 qspi_cfg;
+	u8 res_160[0x164 - 0x160];
+	u32 wr_qos1;
+	u32 wr_qos2;
+	u32 rd_qos1;
+	u32 rd_qos2;
+	u8 res_174[0x180 - 0x174];
+	u32 dmamcr;
+	u8 res_184[0x188-0x184];
+	u32 gic_align;
+	u32 debug_icid;
+	u8 res_190[0x1a4-0x190];
+	u32 snpcnfgcr;
+	u8 res_1a8[0x1ac-0x1a8];
+	u32 intpcr;
+	u8 res_1b0[0x204-0x1b0];
+	u32 coresrencr;
+	u8 res_208[0x220-0x208];
+	u32 rvbar0_0;
+	u32 rvbar0_1;
+	u32 rvbar1_0;
+	u32 rvbar1_1;
+	u32 rvbar2_0;
+	u32 rvbar2_1;
+	u32 rvbar3_0;
+	u32 rvbar3_1;
+	u32 lpmcsr;
+	u8 res_244[0x400-0x244];
+	u32 qspidqscr;
+	u32 ecgtxcmcr;
+	u32 sdhciovselcr;
+	u32 rcwpmuxcr0;
+	u32 usbdrvvbus_selcr;
+	u32 usbpwrfault_selcr;
+	u32 usb_refclk_selcr1;
+	u32 usb_refclk_selcr2;
+	u32 usb_refclk_selcr3;
+	u8 res_424[0x434 - 0x424];
+	u32 rgmiipcr;
+	u32 res_438;
+	u32 rgmiipsr;
+	u32 pfepfcssr1;
+	u32 pfeintencr1;
+	u32 pfepfcssr2;
+	u32 pfeintencr2;
+	u32 pfeerrcr;
+	u32 pfeeerrintencr;
+	u32 pfeasbcr;
+	u32 pfebsbcr;
+	u8 res_460[0x484 - 0x460];
+	u32 mdioselcr;
+	u8 res_468[0x600 - 0x488];
+	u32 scratchrw[4];
+	u8 res_610[0x680-0x610];
+	u32 corebcr;
+	u8 res_684[0x1000-0x684];
+	u32 pex1msiir;
+	u32 pex1msir;
+	u8 res_1008[0x2000-0x1008];
+	u32 pex2;
+	u32 pex2msir;
+	u8 res_2008[0x3000-0x2008];
+	u32 pex3msiir;
+	u32 pex3msir;
+};
+
+#endif	/* __ARCH_FSL_LSCH2_IMMAP_H__*/
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
