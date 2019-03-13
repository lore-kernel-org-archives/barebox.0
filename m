Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Ok-0007xO-2o
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:50 +0100
Message-Id: <20190313094202.14901-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/15] net: Add Freescale FMan ethernet support
To: Barebox List <barebox@lists.infradead.org>

This adds ethernet support for the Freecale Layerscape SoCs. The
architecture in these SoCs is called "Data Path Acceleration
Architecture" (DPAA). It is comprised of:

- The Queue Manager (QMan)
- Buffer Manager (BMan)
- Frame Manager (FMan)
- Multirate Ethernet Media Access Controller (mEMAC)

The code is based on the corresponding U-Boot driver enriched with
device tree parsing and proper device driver support.

Tested on LS1046a, should work on other SoCs aswell with some minor
quirks. SerDes support has been removed for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig         |    8 +
 drivers/net/Makefile        |    1 +
 drivers/net/fsl-fman.c      | 1333 +++++++++++++++++++++++++++++++++++
 firmware/Makefile           |    2 +
 include/soc/fsl/fsl_fman.h  |  439 ++++++++++++
 include/soc/fsl/fsl_memac.h |  256 +++++++
 6 files changed, 2039 insertions(+)
 create mode 100644 drivers/net/fsl-fman.c
 create mode 100644 include/soc/fsl/fsl_fman.h
 create mode 100644 include/soc/fsl/fsl_memac.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 1aa096f005..3e3de5a975 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -137,6 +137,14 @@ config DRIVER_NET_FEC_IMX
 	depends on ARCH_HAS_FEC_IMX
 	select PHYLIB
 
+config DRIVER_NET_FSL_FMAN
+	bool "Freescale fman ethernet driver"
+	select PHYLIB
+	select FSL_QE_FIRMWARE
+	help
+	  This option enabled support for the Freescale fman core found
+	  on Layerscape SoCs.
+
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
 	depends on ARCH_MPC85XX
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 304bbba02d..6ccd22cc10 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
 obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
+obj-$(CONFIG_DRIVER_NET_FSL_FMAN)	+= fsl-fman.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
new file mode 100644
index 0000000000..1a11ca4926
--- /dev/null
+++ b/drivers/net/fsl-fman.c
@@ -0,0 +1,1333 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2009-2012 Freescale Semiconductor, Inc.
+ *	Dave Liu <daveliu@freescale.com>
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <net.h>
+#include <init.h>
+#include <of_net.h>
+#include <dma.h>
+#include <firmware.h>
+#include <soc/fsl/qe.h>
+#include <soc/fsl/fsl_fman.h>
+#include <soc/fsl/fsl_memac.h>
+
+/* Port ID */
+#define OH_PORT_ID_BASE		0x01
+#define MAX_NUM_OH_PORT		7
+#define RX_PORT_1G_BASE		0x08
+#define MAX_NUM_RX_PORT_1G	8
+#define RX_PORT_10G_BASE	0x10
+#define RX_PORT_10G_BASE2	0x08
+#define TX_PORT_1G_BASE		0x28
+#define MAX_NUM_TX_PORT_1G	8
+#define TX_PORT_10G_BASE	0x30
+#define TX_PORT_10G_BASE2	0x28
+#define MIIM_TIMEOUT    0xFFFF
+
+struct fm_muram {
+	void *base;
+	void *top;
+	size_t size;
+	void *alloc;
+};
+#define FM_MURAM_RES_SIZE	0x01000
+
+/* Rx/Tx buffer descriptor */
+struct fm_port_bd {
+	u16 status;
+	u16 len;
+	u32 res0;
+	u16 res1;
+	u16 buf_ptr_hi;
+	u32 buf_ptr_lo;
+};
+
+/* Common BD flags */
+#define BD_LAST			0x0800
+
+/* Rx BD status flags */
+#define RxBD_EMPTY		0x8000
+#define RxBD_LAST		BD_LAST
+#define RxBD_FIRST		0x0400
+#define RxBD_PHYS_ERR		0x0008
+#define RxBD_SIZE_ERR		0x0004
+#define RxBD_ERROR		(RxBD_PHYS_ERR | RxBD_SIZE_ERR)
+
+/* Tx BD status flags */
+#define TxBD_READY		0x8000
+#define TxBD_LAST		BD_LAST
+
+/* Rx/Tx queue descriptor */
+struct fm_port_qd {
+	u16 gen;
+	u16 bd_ring_base_hi;
+	u32 bd_ring_base_lo;
+	u16 bd_ring_size;
+	u16 offset_in;
+	u16 offset_out;
+	u16 res0;
+	u32 res1[0x4];
+};
+
+/* IM global parameter RAM */
+struct fm_port_global_pram {
+	u32 mode;	/* independent mode register */
+	u32 rxqd_ptr;	/* Rx queue descriptor pointer */
+	u32 txqd_ptr;	/* Tx queue descriptor pointer */
+	u16 mrblr;	/* max Rx buffer length */
+	u16 rxqd_bsy_cnt;	/* RxQD busy counter, should be cleared */
+	u32 res0[0x4];
+	struct fm_port_qd rxqd;	/* Rx queue descriptor */
+	struct fm_port_qd txqd;	/* Tx queue descriptor */
+	u32 res1[0x28];
+};
+
+#define FM_PRAM_SIZE		sizeof(struct fm_port_global_pram)
+#define FM_PRAM_ALIGN		256
+#define PRAM_MODE_GLOBAL	0x20000000
+#define PRAM_MODE_GRACEFUL_STOP	0x00800000
+
+#define FM_FREE_POOL_SIZE	0x20000 /* 128K bytes */
+#define FM_FREE_POOL_ALIGN	256
+
+/* Fman ethernet private struct */
+struct fm_eth {
+	struct fm_bmi_tx_port *tx_port;
+	struct fm_bmi_rx_port *rx_port;
+	phy_interface_t enet_if;
+	struct eth_device edev;
+	struct device_d *dev;
+	struct fm_port_global_pram *rx_pram; /* Rx parameter table */
+	struct fm_port_global_pram *tx_pram; /* Tx parameter table */
+	void *rx_bd_ring;		/* Rx BD ring base */
+	void *cur_rxbd;			/* current Rx BD */
+	void *rx_buf;			/* Rx buffer base */
+	void *tx_bd_ring;		/* Tx BD ring base */
+	void *cur_txbd;			/* current Tx BD */
+	struct memac *regs;
+};
+
+#define RX_BD_RING_SIZE		8
+#define TX_BD_RING_SIZE		8
+#define MAX_RXBUF_LOG2		11
+#define MAX_RXBUF_LEN		(1 << MAX_RXBUF_LOG2)
+
+struct fsl_fman_mdio {
+	struct mii_bus bus;
+	struct memac_mdio_controller *regs;
+};
+
+enum fman_port_type {
+	FMAN_PORT_TYPE_RX = 0,	/* RX Port */
+	FMAN_PORT_TYPE_TX,	/* TX Port */
+};
+
+struct fsl_fman_port {
+	void *regs;
+	enum fman_port_type type;
+	struct fm_bmi_rx_port *rxport;
+	struct fm_bmi_tx_port *txport;
+};
+
+static struct fm_eth *to_fm_eth(struct eth_device *edev)
+{
+	return container_of(edev, struct fm_eth, edev);
+}
+
+static struct fm_muram muram;
+
+static void *fm_muram_base(void)
+{
+	return muram.base;
+}
+
+static void *fm_muram_alloc(size_t size, unsigned long align)
+{
+	void *ret;
+	unsigned long align_mask;
+	size_t off;
+	void *save;
+
+	align_mask = align - 1;
+	save = muram.alloc;
+
+	off = (unsigned long)save & align_mask;
+	if (off != 0)
+		muram.alloc += (align - off);
+	off = size & align_mask;
+	if (off != 0)
+		size += (align - off);
+	if ((muram.alloc + size) >= muram.top) {
+		muram.alloc = save;
+		printf("%s: run out of ram.\n", __func__);
+		return NULL;
+	}
+
+	ret = muram.alloc;
+	muram.alloc += size;
+
+	return ret;
+}
+
+/*
+ * fm_upload_ucode - Fman microcode upload worker function
+ *
+ * This function does the actual uploading of an Fman microcode
+ * to an Fman.
+ */
+static int fm_upload_ucode(struct fm_imem *imem,
+			    u32 *ucode, unsigned int size)
+{
+	unsigned int i;
+	unsigned int timeout = 1000000;
+
+	/* enable address auto increase */
+	out_be32(&imem->iadd, IRAM_IADD_AIE);
+	/* write microcode to IRAM */
+	for (i = 0; i < size / 4; i++)
+		out_be32(&imem->idata, (be32_to_cpu(ucode[i])));
+
+	/* verify if the writing is over */
+	out_be32(&imem->iadd, 0);
+	while ((in_be32(&imem->idata) != be32_to_cpu(ucode[0])) && --timeout)
+		;
+	if (!timeout) {
+		printf("microcode upload timeout\n");
+		return -ETIMEDOUT;
+	}
+
+	/* enable microcode from IRAM */
+	out_be32(&imem->iready, IRAM_READY);
+
+	return 0;
+}
+
+static int fman_upload_firmware(struct device_d *dev, struct fm_imem *fm_imem)
+{
+	int i, size, ret;
+	const struct qe_firmware *firmware;
+
+	get_builtin_firmware(fsl_fman_ucode_ls1046_r1_0_106_4_18_bin, &firmware, &size);
+
+	ret = qe_validate_firmware(firmware, size);
+	if (ret)
+		return ret;
+
+	if (firmware->count != 1) {
+		dev_err(dev, "Invalid data in firmware header\n");
+		return -EINVAL;
+	}
+
+	/* Loop through each microcode. */
+	for (i = 0; i < firmware->count; i++) {
+		const struct qe_microcode *ucode = &firmware->microcode[i];
+
+		/* Upload a microcode if it's present */
+		if (be32_to_cpu(ucode->code_offset)) {
+			u32 ucode_size;
+			u32 *code;
+			dev_info(dev, "Uploading microcode version %u.%u.%u\n",
+			       ucode->major, ucode->minor,
+			       ucode->revision);
+			code = (void *)firmware +
+			       be32_to_cpu(ucode->code_offset);
+			ucode_size = sizeof(u32) * be32_to_cpu(ucode->count);
+			ret = fm_upload_ucode(fm_imem, code, ucode_size);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+static u32 fm_assign_risc(int port_id)
+{
+	u32 risc_sel, val;
+	risc_sel = (port_id & 0x1) ? FMFPPRC_RISC2 : FMFPPRC_RISC1;
+	val = (port_id << FMFPPRC_PORTID_SHIFT) & FMFPPRC_PORTID_MASK;
+	val |= ((risc_sel << FMFPPRC_ORA_SHIFT) | risc_sel);
+
+	return val;
+}
+
+static void fm_init_fpm(struct fm_fpm *fpm)
+{
+	int i, port_id;
+	u32 val;
+
+	setbits_be32(&fpm->fmfpee, FMFPEE_EHM | FMFPEE_UEC |
+				   FMFPEE_CER | FMFPEE_DER);
+
+	/* IM mode, each even port ID to RISC#1, each odd port ID to RISC#2 */
+
+	/* offline/parser port */
+	for (i = 0; i < MAX_NUM_OH_PORT; i++) {
+		port_id = OH_PORT_ID_BASE + i;
+		val = fm_assign_risc(port_id);
+		out_be32(&fpm->fpmprc, val);
+	}
+	/* Rx 1G port */
+	for (i = 0; i < MAX_NUM_RX_PORT_1G; i++) {
+		port_id = RX_PORT_1G_BASE + i;
+		val = fm_assign_risc(port_id);
+		out_be32(&fpm->fpmprc, val);
+	}
+	/* Tx 1G port */
+	for (i = 0; i < MAX_NUM_TX_PORT_1G; i++) {
+		port_id = TX_PORT_1G_BASE + i;
+		val = fm_assign_risc(port_id);
+		out_be32(&fpm->fpmprc, val);
+	}
+	/* Rx 10G port */
+	port_id = RX_PORT_10G_BASE;
+	val = fm_assign_risc(port_id);
+	out_be32(&fpm->fpmprc, val);
+	/* Tx 10G port */
+	port_id = TX_PORT_10G_BASE;
+	val = fm_assign_risc(port_id);
+	out_be32(&fpm->fpmprc, val);
+
+	/* disable the dispatch limit in IM case */
+	out_be32(&fpm->fpmflc, FMFP_FLC_DISP_LIM_NONE);
+	/* clear events */
+	out_be32(&fpm->fmfpee, FMFPEE_CLEAR_EVENT);
+
+	/* clear risc events */
+	for (i = 0; i < 4; i++)
+		out_be32(&fpm->fpmcev[i], 0xffffffff);
+
+	/* clear error */
+	out_be32(&fpm->fpmrcr, FMFP_RCR_MDEC | FMFP_RCR_IDEC);
+}
+
+static int fm_init_bmi(struct fm_bmi_common *bmi)
+{
+	int blk, i, port_id;
+	u32 val;
+	size_t offset;
+	void *base;
+
+	/* alloc free buffer pool in MURAM */
+	base = fm_muram_alloc(FM_FREE_POOL_SIZE, FM_FREE_POOL_ALIGN);
+	if (!base) {
+		printf("%s: no muram for free buffer pool\n", __func__);
+		return -ENOMEM;
+	}
+	offset = base - fm_muram_base();
+
+	/* Need 128KB total free buffer pool size */
+	val = offset / 256;
+	blk = FM_FREE_POOL_SIZE / 256;
+	/* in IM, we must not begin from offset 0 in MURAM */
+	val |= ((blk - 1) << FMBM_CFG1_FBPS_SHIFT);
+	out_be32(&bmi->fmbm_cfg1, val);
+
+	/* disable all BMI interrupt */
+	out_be32(&bmi->fmbm_ier, FMBM_IER_DISABLE_ALL);
+
+	/* clear all events */
+	out_be32(&bmi->fmbm_ievr, FMBM_IEVR_CLEAR_ALL);
+
+	/*
+	 * set port parameters - FMBM_PP_x
+	 * max tasks 10G Rx/Tx=12, 1G Rx/Tx 4, others is 1
+	 * max dma 10G Rx/Tx=3, others is 1
+	 * set port FIFO size - FMBM_PFS_x
+	 * 4KB for all Rx and Tx ports
+	 */
+	/* offline/parser port */
+	for (i = 0; i < MAX_NUM_OH_PORT; i++) {
+		port_id = OH_PORT_ID_BASE + i - 1;
+		/* max tasks=1, max dma=1, no extra */
+		out_be32(&bmi->fmbm_pp[port_id], 0);
+		/* port FIFO size - 256 bytes, no extra */
+		out_be32(&bmi->fmbm_pfs[port_id], 0);
+	}
+	/* Rx 1G port */
+	for (i = 0; i < MAX_NUM_RX_PORT_1G; i++) {
+		port_id = RX_PORT_1G_BASE + i - 1;
+		/* max tasks=4, max dma=1, no extra */
+		out_be32(&bmi->fmbm_pp[port_id], FMBM_PP_MXT(4));
+		/* FIFO size - 4KB, no extra */
+		out_be32(&bmi->fmbm_pfs[port_id], FMBM_PFS_IFSZ(0xf));
+	}
+	/* Tx 1G port FIFO size - 4KB, no extra */
+	for (i = 0; i < MAX_NUM_TX_PORT_1G; i++) {
+		port_id = TX_PORT_1G_BASE + i - 1;
+		/* max tasks=4, max dma=1, no extra */
+		out_be32(&bmi->fmbm_pp[port_id], FMBM_PP_MXT(4));
+		/* FIFO size - 4KB, no extra */
+		out_be32(&bmi->fmbm_pfs[port_id], FMBM_PFS_IFSZ(0xf));
+	}
+	/* Rx 10G port */
+	port_id = RX_PORT_10G_BASE - 1;
+	/* max tasks=12, max dma=3, no extra */
+	out_be32(&bmi->fmbm_pp[port_id], FMBM_PP_MXT(12) | FMBM_PP_MXD(3));
+	/* FIFO size - 4KB, no extra */
+	out_be32(&bmi->fmbm_pfs[port_id], FMBM_PFS_IFSZ(0xf));
+
+	/* Tx 10G port */
+	port_id = TX_PORT_10G_BASE - 1;
+	/* max tasks=12, max dma=3, no extra */
+	out_be32(&bmi->fmbm_pp[port_id], FMBM_PP_MXT(12) | FMBM_PP_MXD(3));
+	/* FIFO size - 4KB, no extra */
+	out_be32(&bmi->fmbm_pfs[port_id], FMBM_PFS_IFSZ(0xf));
+
+	/* initialize internal buffers data base (linked list) */
+	out_be32(&bmi->fmbm_init, FMBM_INIT_START);
+
+	return 0;
+}
+
+static void fm_init_qmi(struct fm_qmi_common *qmi)
+{
+	/* disable all error interrupts */
+	out_be32(&qmi->fmqm_eien, FMQM_EIEN_DISABLE_ALL);
+	/* clear all error events */
+	out_be32(&qmi->fmqm_eie, FMQM_EIE_CLEAR_ALL);
+
+	/* disable all interrupts */
+	out_be32(&qmi->fmqm_ien, FMQM_IEN_DISABLE_ALL);
+	/* clear all interrupts */
+	out_be32(&qmi->fmqm_ie, FMQM_IE_CLEAR_ALL);
+}
+
+static int fm_init_common(struct device_d *dev, struct ccsr_fman *reg)
+{
+	int ret;
+
+	/* Upload the Fman microcode if it's present */
+	ret = fman_upload_firmware(dev, &reg->fm_imem);
+	if (ret)
+		return ret;
+
+	fm_init_qmi(&reg->fm_qmi_common);
+	fm_init_fpm(&reg->fm_fpm);
+
+	/* clear DMA status */
+	setbits_be32(&reg->fm_dma.fmdmsr, FMDMSR_CLEAR_ALL);
+
+	/* set DMA mode */
+	setbits_be32(&reg->fm_dma.fmdmmr, FMDMMR_SBER);
+
+	return fm_init_bmi(&reg->fm_bmi_common);
+}
+
+#define memac_out_32(a, v)	out_be32(a, v)
+#define memac_in_32(a)		in_be32(a)
+#define memac_clrbits_32(a, v)	clrbits_be32(a, v)
+#define memac_setbits_32(a, v)	setbits_be32(a, v)
+
+static int memac_mdio_write(struct mii_bus *bus, int port_addr, int regnum, u16 value)
+{
+	struct fsl_fman_mdio *priv = container_of(bus, struct fsl_fman_mdio, bus);
+	struct memac_mdio_controller *regs = priv->regs;
+	u32 mdio_ctl;
+
+	memac_clrbits_32(&regs->mdio_stat, MDIO_STAT_ENC);
+
+	/* Wait till the bus is free */
+	while ((memac_in_32(&regs->mdio_stat)) & MDIO_STAT_BSY)
+		;
+
+	/* Set the port and dev addr */
+	mdio_ctl = MDIO_CTL_PORT_ADDR(port_addr) | MDIO_CTL_DEV_ADDR(regnum);
+	memac_out_32(&regs->mdio_ctl, mdio_ctl);
+
+	/* Wait till the bus is free */
+	while ((memac_in_32(&regs->mdio_stat)) & MDIO_STAT_BSY)
+		;
+
+	/* Write the value to the register */
+	memac_out_32(&regs->mdio_data, MDIO_DATA(value));
+
+	/* Wait till the MDIO write is complete */
+	while ((memac_in_32(&regs->mdio_data)) & MDIO_DATA_BSY)
+		;
+
+	return 0;
+}
+
+static int memac_mdio_read(struct mii_bus *bus, int port_addr, int regnum)
+{
+	struct fsl_fman_mdio *priv = container_of(bus, struct fsl_fman_mdio, bus);
+	struct memac_mdio_controller *regs = priv->regs;
+	u32 mdio_ctl;
+
+	memac_clrbits_32(&regs->mdio_stat, MDIO_STAT_ENC);
+
+	/* Wait till the bus is free */
+	while ((memac_in_32(&regs->mdio_stat)) & MDIO_STAT_BSY)
+		;
+
+	/* Set the Port and Device Addrs */
+	mdio_ctl = MDIO_CTL_PORT_ADDR(port_addr) | MDIO_CTL_DEV_ADDR(regnum);
+	memac_out_32(&regs->mdio_ctl, mdio_ctl);
+
+	/* Wait till the bus is free */
+	while ((memac_in_32(&regs->mdio_stat)) & MDIO_STAT_BSY)
+		;
+
+	/* Initiate the read */
+	mdio_ctl |= MDIO_CTL_READ;
+	memac_out_32(&regs->mdio_ctl, mdio_ctl);
+
+	/* Wait till the MDIO write is complete */
+	while ((memac_in_32(&regs->mdio_data)) & MDIO_DATA_BSY)
+		;
+
+	/* Return all Fs if nothing was there */
+	if (memac_in_32(&regs->mdio_stat) & MDIO_STAT_RD_ER)
+		return 0xffff;
+
+	return memac_in_32(&regs->mdio_data) & 0xffff;
+}
+
+static u16 muram_readw(u16 *addr)
+{
+	unsigned long base = (unsigned long)addr & ~0x3UL;
+	u32 val32 = in_be32((void *)base);
+	int byte_pos;
+	u16 ret;
+
+	byte_pos = (unsigned long)addr & 0x3UL;
+	if (byte_pos)
+		ret = (u16)(val32 & 0x0000ffff);
+	else
+		ret = (u16)((val32 & 0xffff0000) >> 16);
+
+	return ret;
+}
+
+static void muram_writew(u16 *addr, u16 val)
+{
+	unsigned long base = (unsigned long)addr & ~0x3UL;
+	u32 org32 = in_be32((void *)base);
+	u32 val32;
+	int byte_pos;
+
+	byte_pos = (unsigned long)addr & 0x3UL;
+	if (byte_pos)
+		val32 = (org32 & 0xffff0000) | val;
+	else
+		val32 = (org32 & 0x0000ffff) | ((u32)val << 16);
+
+	out_be32((void *)base, val32);
+}
+
+static void bmi_rx_port_disable(struct fm_bmi_rx_port *rx_port)
+{
+	int timeout = 1000000;
+
+	clrbits_be32(&rx_port->fmbm_rcfg, FMBM_RCFG_EN);
+
+	/* wait until the rx port is not busy */
+	while ((in_be32(&rx_port->fmbm_rst) & FMBM_RST_BSY) && timeout--)
+		;
+}
+
+static void bmi_rx_port_init(struct fm_bmi_rx_port *rx_port)
+{
+	/* set BMI to independent mode, Rx port disable */
+	out_be32(&rx_port->fmbm_rcfg, FMBM_RCFG_IM);
+	/* clear FOF in IM case */
+	out_be32(&rx_port->fmbm_rim, 0);
+	/* Rx frame next engine -RISC */
+	out_be32(&rx_port->fmbm_rfne, NIA_ENG_RISC | NIA_RISC_AC_IM_RX);
+	/* Rx command attribute - no order, MR[3] = 1 */
+	clrbits_be32(&rx_port->fmbm_rfca, FMBM_RFCA_ORDER | FMBM_RFCA_MR_MASK);
+	setbits_be32(&rx_port->fmbm_rfca, FMBM_RFCA_MR(4));
+	/* enable Rx statistic counters */
+	out_be32(&rx_port->fmbm_rstc, FMBM_RSTC_EN);
+	/* disable Rx performance counters */
+	out_be32(&rx_port->fmbm_rpc, 0);
+}
+
+static void bmi_tx_port_disable(struct fm_bmi_tx_port *tx_port)
+{
+	int timeout = 1000000;
+
+	clrbits_be32(&tx_port->fmbm_tcfg, FMBM_TCFG_EN);
+
+	/* wait until the tx port is not busy */
+	while ((in_be32(&tx_port->fmbm_tst) & FMBM_TST_BSY) && timeout--)
+		;
+}
+
+static void bmi_tx_port_init(struct fm_bmi_tx_port *tx_port)
+{
+	/* set BMI to independent mode, Tx port disable */
+	out_be32(&tx_port->fmbm_tcfg, FMBM_TCFG_IM);
+	/* Tx frame next engine -RISC */
+	out_be32(&tx_port->fmbm_tfne, NIA_ENG_RISC | NIA_RISC_AC_IM_TX);
+	out_be32(&tx_port->fmbm_tfene, NIA_ENG_RISC | NIA_RISC_AC_IM_TX);
+	/* Tx command attribute - no order, MR[3] = 1 */
+	clrbits_be32(&tx_port->fmbm_tfca, FMBM_TFCA_ORDER | FMBM_TFCA_MR_MASK);
+	setbits_be32(&tx_port->fmbm_tfca, FMBM_TFCA_MR(4));
+	/* enable Tx statistic counters */
+	out_be32(&tx_port->fmbm_tstc, FMBM_TSTC_EN);
+	/* disable Tx performance counters */
+	out_be32(&tx_port->fmbm_tpc, 0);
+}
+
+static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
+{
+	struct fm_port_global_pram *pram;
+	u32 pram_page_offset;
+	void *rx_bd_ring_base;
+	void *rx_buf_pool;
+	u32 bd_ring_base_lo, bd_ring_base_hi;
+	u32 buf_lo, buf_hi;
+	struct fm_port_bd *rxbd;
+	struct fm_port_qd *rxqd;
+	struct fm_bmi_rx_port *bmi_rx_port = fm_eth->rx_port;
+	int i;
+
+	/* alloc global parameter ram at MURAM */
+	pram = fm_muram_alloc(FM_PRAM_SIZE, FM_PRAM_ALIGN);
+	if (!pram) {
+		printf("%s: No muram for Rx global parameter\n", __func__);
+		return -ENOMEM;
+	}
+
+	fm_eth->rx_pram = pram;
+
+	/* parameter page offset to MURAM */
+	pram_page_offset = (void *)pram - fm_muram_base();
+
+	/* enable global mode- snooping data buffers and BDs */
+	out_be32(&pram->mode, PRAM_MODE_GLOBAL);
+
+	/* init the Rx queue descriptor pointer */
+	out_be32(&pram->rxqd_ptr, pram_page_offset + 0x20);
+
+	/* set the max receive buffer length, power of 2 */
+	muram_writew(&pram->mrblr, MAX_RXBUF_LOG2);
+
+	/* alloc Rx buffer descriptors from main memory */
+	rx_bd_ring_base = dma_alloc_coherent(sizeof(struct fm_port_bd)
+			* RX_BD_RING_SIZE, DMA_ADDRESS_BROKEN);
+	if (!rx_bd_ring_base)
+		return -ENOMEM;
+
+	memset(rx_bd_ring_base, 0, sizeof(struct fm_port_bd)
+			* RX_BD_RING_SIZE);
+
+	/* alloc Rx buffer from main memory */
+	rx_buf_pool = malloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
+	if (!rx_buf_pool)
+		return -ENOMEM;
+
+	memset(rx_buf_pool, 0, MAX_RXBUF_LEN * RX_BD_RING_SIZE);
+
+	/* save them to fm_eth */
+	fm_eth->rx_bd_ring = rx_bd_ring_base;
+	fm_eth->cur_rxbd = rx_bd_ring_base;
+	fm_eth->rx_buf = rx_buf_pool;
+
+	/* init Rx BDs ring */
+	rxbd = rx_bd_ring_base;
+	for (i = 0; i < RX_BD_RING_SIZE; i++) {
+		muram_writew(&rxbd->status, RxBD_EMPTY);
+		muram_writew(&rxbd->len, 0);
+		buf_hi = upper_32_bits(virt_to_phys(rx_buf_pool +
+					i * MAX_RXBUF_LEN));
+		buf_lo = lower_32_bits(virt_to_phys(rx_buf_pool +
+					i * MAX_RXBUF_LEN));
+		muram_writew(&rxbd->buf_ptr_hi, (u16)buf_hi);
+		out_be32(&rxbd->buf_ptr_lo, buf_lo);
+		rxbd++;
+	}
+
+	/* set the Rx queue descriptor */
+	rxqd = &pram->rxqd;
+	muram_writew(&rxqd->gen, 0);
+	bd_ring_base_hi = upper_32_bits(virt_to_phys(rx_bd_ring_base));
+	bd_ring_base_lo = lower_32_bits(virt_to_phys(rx_bd_ring_base));
+	muram_writew(&rxqd->bd_ring_base_hi, (u16)bd_ring_base_hi);
+	out_be32(&rxqd->bd_ring_base_lo, bd_ring_base_lo);
+	muram_writew(&rxqd->bd_ring_size, sizeof(struct fm_port_bd)
+			* RX_BD_RING_SIZE);
+	muram_writew(&rxqd->offset_in, 0);
+	muram_writew(&rxqd->offset_out, 0);
+
+	/* set IM parameter ram pointer to Rx Frame Queue ID */
+	out_be32(&bmi_rx_port->fmbm_rfqid, pram_page_offset);
+
+	return 0;
+}
+
+static int fm_eth_tx_port_parameter_init(struct fm_eth *fm_eth)
+{
+	struct fm_port_global_pram *pram;
+	u32 pram_page_offset;
+	void *tx_bd_ring_base;
+	u32 bd_ring_base_lo, bd_ring_base_hi;
+	struct fm_port_bd *txbd;
+	struct fm_port_qd *txqd;
+	struct fm_bmi_tx_port *bmi_tx_port = fm_eth->tx_port;
+	int i;
+
+	/* alloc global parameter ram at MURAM */
+	pram = fm_muram_alloc(FM_PRAM_SIZE, FM_PRAM_ALIGN);
+	if (!pram)
+		return -ENOMEM;
+
+	fm_eth->tx_pram = pram;
+
+	/* parameter page offset to MURAM */
+	pram_page_offset = (void *)pram - fm_muram_base();
+
+	/* enable global mode- snooping data buffers and BDs */
+	out_be32(&pram->mode, PRAM_MODE_GLOBAL);
+
+	/* init the Tx queue descriptor pionter */
+	out_be32(&pram->txqd_ptr, pram_page_offset + 0x40);
+
+	/* alloc Tx buffer descriptors from main memory */
+	tx_bd_ring_base = dma_alloc_coherent(sizeof(struct fm_port_bd)
+			* TX_BD_RING_SIZE, DMA_ADDRESS_BROKEN);
+	if (!tx_bd_ring_base)
+		return -ENOMEM;
+
+	memset(tx_bd_ring_base, 0, sizeof(struct fm_port_bd)
+			* TX_BD_RING_SIZE);
+	/* save it to fm_eth */
+	fm_eth->tx_bd_ring = tx_bd_ring_base;
+	fm_eth->cur_txbd = tx_bd_ring_base;
+
+	/* init Tx BDs ring */
+	txbd = tx_bd_ring_base;
+	for (i = 0; i < TX_BD_RING_SIZE; i++) {
+		muram_writew(&txbd->status, TxBD_LAST);
+		muram_writew(&txbd->len, 0);
+		muram_writew(&txbd->buf_ptr_hi, 0);
+		out_be32(&txbd->buf_ptr_lo, 0);
+		txbd++;
+	}
+
+	/* set the Tx queue decriptor */
+	txqd = &pram->txqd;
+	bd_ring_base_hi = upper_32_bits(virt_to_phys(tx_bd_ring_base));
+	bd_ring_base_lo = lower_32_bits(virt_to_phys(tx_bd_ring_base));
+	muram_writew(&txqd->bd_ring_base_hi, (u16)bd_ring_base_hi);
+	out_be32(&txqd->bd_ring_base_lo, bd_ring_base_lo);
+	muram_writew(&txqd->bd_ring_size, sizeof(struct fm_port_bd)
+			* TX_BD_RING_SIZE);
+	muram_writew(&txqd->offset_in, 0);
+	muram_writew(&txqd->offset_out, 0);
+
+	/* set IM parameter ram pointer to Tx Confirmation Frame Queue ID */
+	out_be32(&bmi_tx_port->fmbm_tcfqid, pram_page_offset);
+
+	return 0;
+}
+
+static void fmc_tx_port_graceful_stop_enable(struct fm_eth *fm_eth)
+{
+	struct fm_port_global_pram *pram;
+
+	pram = fm_eth->tx_pram;
+	/* graceful stop transmission of frames */
+	setbits_be32(&pram->mode, PRAM_MODE_GRACEFUL_STOP);
+}
+
+static void fmc_tx_port_graceful_stop_disable(struct fm_eth *fm_eth)
+{
+	struct fm_port_global_pram *pram;
+
+	pram = fm_eth->tx_pram;
+	/* re-enable transmission of frames */
+	clrbits_be32(&pram->mode, PRAM_MODE_GRACEFUL_STOP);
+}
+
+static void memac_adjust_link_speed(struct eth_device *edev)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+	struct memac *regs = fm_eth->regs;
+	int speed = edev->phydev->speed;
+	u32 if_mode;
+	phy_interface_t type = fm_eth->enet_if;
+
+	if_mode = in_be32(&regs->if_mode);
+
+	if (type == PHY_INTERFACE_MODE_RGMII ||
+	    type == PHY_INTERFACE_MODE_RGMII_ID ||
+	    type == PHY_INTERFACE_MODE_RGMII_TXID) {
+		if_mode &= ~IF_MODE_EN_AUTO;
+		if_mode &= ~IF_MODE_SETSP_MASK;
+
+		switch (speed) {
+		case SPEED_1000:
+			if_mode |= IF_MODE_SETSP_1000M;
+			break;
+		case SPEED_100:
+			if_mode |= IF_MODE_SETSP_100M;
+			break;
+		case SPEED_10:
+			if_mode |= IF_MODE_SETSP_10M;
+		default:
+			break;
+		}
+	}
+
+	out_be32(&regs->if_mode, if_mode);
+
+	return;
+}
+
+static int fm_eth_open(struct eth_device *edev)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+	struct memac *regs = fm_eth->regs;
+	int ret;
+
+	ret = phy_device_connect(edev, NULL, -1, memac_adjust_link_speed, 0,
+				 fm_eth->enet_if);
+	if (ret)
+		return ret;
+
+	/* enable bmi Rx port */
+	setbits_be32(&fm_eth->rx_port->fmbm_rcfg, FMBM_RCFG_EN);
+	/* enable MAC rx/tx port */
+	setbits_be32(&regs->command_config,
+		     MEMAC_CMD_CFG_RXTX_EN | MEMAC_CMD_CFG_NO_LEN_CHK);
+
+	/* enable bmi Tx port */
+	setbits_be32(&fm_eth->tx_port->fmbm_tcfg, FMBM_TCFG_EN);
+	/* re-enable transmission of frame */
+	fmc_tx_port_graceful_stop_disable(fm_eth);
+
+	return 0;
+}
+
+static void memac_disable_mac(struct fm_eth *fm_eth)
+{
+	struct memac *regs = fm_eth->regs;
+
+	clrbits_be32(&regs->command_config, MEMAC_CMD_CFG_RXTX_EN);
+}
+
+static void fm_eth_halt(struct eth_device *edev)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+
+	/* graceful stop the transmission of frames */
+	fmc_tx_port_graceful_stop_enable(fm_eth);
+	/* disable bmi Tx port */
+	bmi_tx_port_disable(fm_eth->tx_port);
+	/* disable MAC rx/tx port */
+	memac_disable_mac(fm_eth);
+	/* disable bmi Rx port */
+	bmi_rx_port_disable(fm_eth->rx_port);
+}
+
+static int fm_eth_send(struct eth_device *edev, void *buf, int len)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+	struct fm_port_global_pram *pram;
+	struct fm_port_bd *txbd, *txbd_base;
+	u16 offset_in;
+	int i;
+	dma_addr_t dma;
+
+	pram = fm_eth->tx_pram;
+	txbd = fm_eth->cur_txbd;
+
+	/* find one empty TxBD */
+	for (i = 0; muram_readw(&txbd->status) & TxBD_READY; i++) {
+		udelay(100);
+		if (i > 0x1000) {
+			dev_err(&edev->dev, "Tx buffer not ready, txbd->status = 0x%x\n",
+			       muram_readw(&txbd->status));
+			return -EIO;
+		}
+	}
+
+	dma = dma_map_single(fm_eth->dev, buf, len, DMA_TO_DEVICE);
+	if (dma_mapping_error(fm_eth->dev, dma))
+		return -EFAULT;
+
+	/* setup TxBD */
+	muram_writew(&txbd->buf_ptr_hi, (u16)upper_32_bits(dma));
+	out_be32(&txbd->buf_ptr_lo, lower_32_bits(dma));
+	muram_writew(&txbd->len, len);
+	muram_writew(&txbd->status, TxBD_READY | TxBD_LAST);
+
+	/* update TxQD, let RISC to send the packet */
+	offset_in = muram_readw(&pram->txqd.offset_in);
+	offset_in += sizeof(struct fm_port_bd);
+	if (offset_in >= muram_readw(&pram->txqd.bd_ring_size))
+		offset_in = 0;
+	muram_writew(&pram->txqd.offset_in, offset_in);
+
+	/* wait for buffer to be transmitted */
+	for (i = 0; muram_readw(&txbd->status) & TxBD_READY; i++) {
+		udelay(10);
+		if (i > 0x10000) {
+			dev_err(&edev->dev, "Tx error, txbd->status = 0x%x\n",
+			       muram_readw(&txbd->status));
+			return -EIO;
+		}
+	}
+
+	dma_unmap_single(fm_eth->dev, dma, len, DMA_TO_DEVICE);
+
+	/* advance the TxBD */
+	txbd++;
+	txbd_base = fm_eth->tx_bd_ring;
+	if (txbd >= (txbd_base + TX_BD_RING_SIZE))
+		txbd = txbd_base;
+	/* update current txbd */
+	fm_eth->cur_txbd = (void *)txbd;
+
+	return 0;
+}
+
+static int fm_eth_recv(struct eth_device *edev)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+	struct fm_port_global_pram *pram;
+	struct fm_port_bd *rxbd, *rxbd_base;
+	u16 status, len;
+	u32 buf_lo, buf_hi;
+	u8 *data;
+	u16 offset_out;
+	int ret = 1;
+
+	pram = fm_eth->rx_pram;
+	rxbd = fm_eth->cur_rxbd;
+	status = muram_readw(&rxbd->status);
+
+	while (!(status & RxBD_EMPTY)) {
+		if (!(status & RxBD_ERROR)) {
+			buf_hi = muram_readw(&rxbd->buf_ptr_hi);
+			buf_lo = in_be32(&rxbd->buf_ptr_lo);
+			data = (u8 *)((unsigned long)(buf_hi << 16) << 16 | buf_lo);
+			len = muram_readw(&rxbd->len);
+
+			dma_sync_single_for_cpu((unsigned long)data,
+						len,
+						DMA_FROM_DEVICE);
+
+			net_receive(edev, data, len);
+
+			dma_sync_single_for_device((unsigned long)data,
+						len,
+						DMA_FROM_DEVICE);
+		} else {
+			dev_err(&edev->dev, "Rx error\n");
+			ret = 0;
+		}
+
+		/* clear the RxBDs */
+		muram_writew(&rxbd->status, RxBD_EMPTY);
+		muram_writew(&rxbd->len, 0);
+
+		/* advance RxBD */
+		rxbd++;
+		rxbd_base = fm_eth->rx_bd_ring;
+		if (rxbd >= (rxbd_base + RX_BD_RING_SIZE))
+			rxbd = rxbd_base;
+		/* read next status */
+		status = muram_readw(&rxbd->status);
+
+		/* update RxQD */
+		offset_out = muram_readw(&pram->rxqd.offset_out);
+		offset_out += sizeof(struct fm_port_bd);
+		if (offset_out >= muram_readw(&pram->rxqd.bd_ring_size))
+			offset_out = 0;
+		muram_writew(&pram->rxqd.offset_out, offset_out);
+	}
+	fm_eth->cur_rxbd = rxbd;
+
+	return ret;
+}
+
+static void memac_init_mac(struct fm_eth *fm_eth)
+{
+	struct memac *regs = fm_eth->regs;
+
+	/* mask all interrupt */
+	out_be32(&regs->imask, IMASK_MASK_ALL);
+
+	/* clear all events */
+	out_be32(&regs->ievent, IEVENT_CLEAR_ALL);
+
+	/* set the max receive length */
+	out_be32(&regs->maxfrm, MAX_RXBUF_LEN);
+
+	/* multicast frame reception for the hash entry disable */
+	out_be32(&regs->hashtable_ctrl, 0);
+}
+
+static int memac_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+	struct memac *regs = fm_eth->regs;
+	u32 mac_addr0, mac_addr1;
+
+	/*
+	 * if a station address of 0x12345678ABCD, perform a write to
+	 * MAC_ADDR0 of 0x78563412, MAC_ADDR1 of 0x0000CDAB
+	 */
+	mac_addr0 = (adr[3] << 24) | (adr[2] << 16) | \
+			(adr[1] << 8)  | (adr[0]);
+	out_be32(&regs->mac_addr_0, mac_addr0);
+
+	mac_addr1 = ((adr[5] << 8) | adr[4]) & 0x0000ffff;
+	out_be32(&regs->mac_addr_1, mac_addr1);
+
+	return 0;
+}
+
+static int memac_get_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct fm_eth *fm_eth = to_fm_eth(edev);
+	struct memac *regs = fm_eth->regs;
+	u32 mac_addr0, mac_addr1;
+
+	mac_addr0 = in_be32(&regs->mac_addr_0);
+	mac_addr1 = in_be32(&regs->mac_addr_1);
+
+	adr[0] = mac_addr0 & 0xff;
+	adr[1] = (mac_addr0 >> 8) & 0xff;
+	adr[2] = (mac_addr0 >> 16) & 0xff;
+	adr[3] = (mac_addr0 >> 24) & 0xff;
+	adr[4] = mac_addr1 & 0xff;
+	adr[5] = (mac_addr1 >> 8) & 0xff;
+
+	return 0;
+}
+
+static void memac_set_interface_mode(struct fm_eth *fm_eth,
+					phy_interface_t type)
+{
+	struct memac *regs = fm_eth->regs;
+	u32 if_mode;
+
+	/* clear all bits relative with interface mode */
+	if_mode = in_be32(&regs->if_mode) & ~IF_MODE_MASK;
+
+	/* set interface mode */
+	switch (type) {
+	case PHY_INTERFACE_MODE_GMII:
+		if_mode |= IF_MODE_GMII | IF_MODE_EN_AUTO;
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		if_mode |= IF_MODE_GMII | IF_MODE_RG | IF_MODE_EN_AUTO;
+		break;
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_QSGMII:
+		if_mode |= IF_MODE_GMII | IF_MODE_EN_AUTO;
+		break;
+	case PHY_INTERFACE_MODE_XGMII:
+		if_mode |= IF_MODE_XGMII;
+		break;
+	default:
+		break;
+	}
+
+	out_be32(&regs->if_mode, if_mode);
+}
+
+static int fm_eth_startup(struct fm_eth *fm_eth)
+{
+	int ret;
+
+	ret = fm_eth_rx_port_parameter_init(fm_eth);
+	if (ret)
+		return ret;
+
+	ret = fm_eth_tx_port_parameter_init(fm_eth);
+	if (ret)
+		return ret;
+
+	/* setup the MAC controller */
+	memac_init_mac(fm_eth);
+
+	/* init bmi rx port, IM mode and disable */
+	bmi_rx_port_init(fm_eth->rx_port);
+
+	/* init bmi tx port, IM mode and disable */
+	bmi_tx_port_init(fm_eth->tx_port);
+
+	memac_set_interface_mode(fm_eth, fm_eth->enet_if);
+
+	return 0;
+}
+
+static int fsl_fman_mdio_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	int ret;
+	struct fsl_fman_mdio *priv;
+
+	dev_dbg(dev, "probe\n");
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->bus.read = memac_mdio_read;
+	priv->bus.write = memac_mdio_write;
+	priv->bus.parent = dev;
+	priv->regs = IOMEM(iores->start);
+
+	memac_setbits_32(&priv->regs->mdio_stat,
+			 MDIO_STAT_CLKDIV(258) | MDIO_STAT_NEG);
+
+	ret = mdiobus_register(&priv->bus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int fsl_fman_port_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	int ret;
+	struct fsl_fman_port *port;
+	unsigned long type;
+
+	dev_dbg(dev, "probe\n");
+
+	ret = dev_get_drvdata(dev, (const void **)&type);
+	if (ret)
+		return ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	port = xzalloc(sizeof(*port));
+
+	port->regs = IOMEM(iores->start);
+	port->type = type;
+
+	if (type == FMAN_PORT_TYPE_RX)
+		port->rxport = port->regs;
+	else
+		port->txport = port->regs;
+
+	dev->priv = port;
+
+	return 0;
+}
+
+static int fsl_fman_memac_port_bind(struct fm_eth *fm_eth, enum fman_port_type type)
+{
+	struct device_node *macnp = fm_eth->dev->device_node;
+	struct device_node *portnp;
+	struct device_d *portdev;
+	struct fsl_fman_port *port;
+
+	portnp = of_parse_phandle(macnp, "fsl,fman-ports", type);
+	if (!portnp) {
+		dev_err(fm_eth->dev, "of_parse_phandle(%s, fsl,fman-ports) failed\n",
+			macnp->full_name);
+		return -EINVAL;
+	}
+
+	portdev = of_find_device_by_node(portnp);
+	if (!portdev)
+		return -ENOENT;
+
+	port = portdev->priv;
+	if (!port)
+		return -EINVAL;
+
+	if (type == FMAN_PORT_TYPE_TX)
+		fm_eth->tx_port = port->txport;
+	else
+		fm_eth->rx_port = port->rxport;
+
+	return 0;
+}
+
+static int fsl_fman_memac_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct fm_eth *fm_eth;
+	struct eth_device *edev;
+	int ret;
+	int phy_mode;
+
+	dev_dbg(dev, "probe\n");
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	/* alloc the FMan ethernet private struct */
+	fm_eth = xzalloc(sizeof(*fm_eth));
+
+	fm_eth->dev = dev;
+
+	ret = fsl_fman_memac_port_bind(fm_eth, FMAN_PORT_TYPE_TX);
+	if (ret)
+		return ret;
+
+	ret = fsl_fman_memac_port_bind(fm_eth, FMAN_PORT_TYPE_RX);
+	if (ret)
+		return ret;
+
+	phy_mode = of_get_phy_mode(dev->device_node);
+	if (phy_mode < 0)
+		return phy_mode;
+
+	fm_eth->enet_if = phy_mode;
+
+	fm_eth->regs = IOMEM(iores->start);
+
+	dev->priv = fm_eth;
+
+	edev = &fm_eth->edev;
+	edev->open = fm_eth_open;
+	edev->halt = fm_eth_halt;
+	edev->send = fm_eth_send;
+	edev->recv = fm_eth_recv;
+	edev->get_ethaddr = memac_get_ethaddr;
+	edev->set_ethaddr = memac_set_ethaddr;
+	edev->parent = dev;
+
+	/* startup the FM im */
+	ret = fm_eth_startup(fm_eth);
+	if (ret)
+		return ret;
+
+	ret = eth_register(edev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int fsl_fman_muram_probe(struct device_d *dev)
+{
+	struct resource *iores;
+
+	dev_dbg(dev, "probe\n");
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	muram.base = IOMEM(iores->start);
+	muram.size = resource_size(iores);
+	muram.alloc = muram.base + FM_MURAM_RES_SIZE;
+	muram.top = muram.base + muram.size;
+
+	return 0;
+}
+
+static struct of_device_id fsl_fman_mdio_dt_ids[] = {
+	{
+		.compatible = "fsl,fman-memac-mdio",
+	}, {
+	}
+};
+
+static struct driver_d fman_mdio_driver = {
+	.name   = "fsl-fman-mdio",
+	.probe  = fsl_fman_mdio_probe,
+	.of_compatible = DRV_OF_COMPAT(fsl_fman_mdio_dt_ids),
+};
+
+static struct of_device_id fsl_fman_port_dt_ids[] = {
+	{
+		.compatible = "fsl,fman-v3-port-rx",
+		.data = (void *)FMAN_PORT_TYPE_RX,
+	}, {
+		.compatible = "fsl,fman-v3-port-tx",
+		.data = (void *)FMAN_PORT_TYPE_TX,
+	}, {
+	}
+};
+
+static struct driver_d fman_port_driver = {
+	.name   = "fsl-fman-port",
+	.probe  = fsl_fman_port_probe,
+	.of_compatible = DRV_OF_COMPAT(fsl_fman_port_dt_ids),
+};
+
+static struct of_device_id fsl_fman_memac_dt_ids[] = {
+	{
+		.compatible = "fsl,fman-memac",
+	}, {
+	}
+};
+
+static struct driver_d fman_memac_driver = {
+	.name   = "fsl-fman-memac",
+	.probe  = fsl_fman_memac_probe,
+	.of_compatible = DRV_OF_COMPAT(fsl_fman_memac_dt_ids),
+};
+
+static struct of_device_id fsl_fman_muram_dt_ids[] = {
+	{
+		.compatible = "fsl,fman-muram",
+	}, {
+	}
+};
+
+static struct driver_d fman_muram_driver = {
+	.name   = "fsl-fman-muram",
+	.probe  = fsl_fman_muram_probe,
+	.of_compatible = DRV_OF_COMPAT(fsl_fman_muram_dt_ids),
+};
+
+static int fsl_fman_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct ccsr_fman *reg;
+	int ret;
+
+	dev_dbg(dev, "----------------> probe\n");
+
+	iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	reg = IOMEM(iores->start);
+
+	ret = of_platform_populate(dev->device_node, NULL, dev);
+	if (ret)
+		return ret;
+
+	platform_driver_register(&fman_muram_driver);
+	platform_driver_register(&fman_mdio_driver);
+	platform_driver_register(&fman_port_driver);
+	platform_driver_register(&fman_memac_driver);
+
+	ret = fm_init_common(dev, reg);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct of_device_id fsl_fman_dt_ids[] = {
+	{
+		.compatible = "fsl,fman",
+	}, {
+	}
+};
+
+static struct driver_d fman_driver = {
+	.name   = "fsl-fman",
+	.probe  = fsl_fman_probe,
+	.of_compatible = DRV_OF_COMPAT(fsl_fman_dt_ids),
+};
+device_platform_driver(fman_driver);
diff --git a/firmware/Makefile b/firmware/Makefile
index f238ce2538..306c006e23 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -11,6 +11,8 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 
 firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 
+firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
+
 # Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
 fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
diff --git a/include/soc/fsl/fsl_fman.h b/include/soc/fsl/fsl_fman.h
new file mode 100644
index 0000000000..96d61298ef
--- /dev/null
+++ b/include/soc/fsl/fsl_fman.h
@@ -0,0 +1,439 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * MPC85xx Internal Memory Map
+ *
+ * Copyright 2010-2011 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __FSL_FMAN_H__
+#define __FSL_FMAN_H__
+
+#include <linux/types.h>
+
+struct fm_bmi_common {
+	u32	fmbm_init;	/* BMI initialization */
+	u32	fmbm_cfg1;	/* BMI configuration1 */
+	u32	fmbm_cfg2;	/* BMI configuration2 */
+	u32	res0[0x5];
+	u32	fmbm_ievr;	/* interrupt event register */
+	u32	fmbm_ier;	/* interrupt enable register */
+	u32	fmbm_ifr;	/* interrupt force register */
+	u32	res1[0x5];
+	u32	fmbm_arb[0x8];	/* BMI arbitration */
+	u32	res2[0x28];
+	u32	fmbm_gde;	/* global debug enable */
+	u32	fmbm_pp[0x3f];	/* BMI port parameters */
+	u32	res3;
+	u32	fmbm_pfs[0x3f];	/* BMI port FIFO size */
+	u32	res4;
+	u32	fmbm_ppid[0x3f];/* port partition ID */
+};
+
+struct fm_qmi_common {
+	u32	fmqm_gc;	/* general configuration register */
+	u32	res0;
+	u32	fmqm_eie;	/* error interrupt event register */
+	u32	fmqm_eien;	/* error interrupt enable register */
+	u32	fmqm_eif;	/* error interrupt force register */
+	u32	fmqm_ie;	/* interrupt event register */
+	u32	fmqm_ien;	/* interrupt enable register */
+	u32	fmqm_if;	/* interrupt force register */
+	u32	fmqm_gs;	/* global status register */
+	u32	fmqm_ts;	/* task status register */
+	u32	fmqm_etfc;	/* enqueue total frame counter */
+	u32	fmqm_dtfc;	/* dequeue total frame counter */
+	u32	fmqm_dc0;	/* dequeue counter 0 */
+	u32	fmqm_dc1;	/* dequeue counter 1 */
+	u32	fmqm_dc2;	/* dequeue counter 2 */
+	u32	fmqm_dc3;	/* dequeue counter 3 */
+	u32	fmqm_dfnoc;	/* dequeue FQID not override counter */
+	u32	fmqm_dfcc;	/* dequeue FQID from context counter */
+	u32	fmqm_dffc;	/* dequeue FQID from FD counter */
+	u32	fmqm_dcc;	/* dequeue confirm counter */
+	u32	res1[0xc];
+	u32	fmqm_dtrc;	/* debug trap configuration register */
+	u32	fmqm_efddd;	/* enqueue frame descriptor dynamic debug */
+	u32	res3[0x2];
+	u32	res4[0xdc];	/* missing debug regs */
+};
+
+struct fm_bmi {
+	u8	res[1024];
+};
+
+struct fm_qmi {
+	u8	res[1024];
+};
+
+struct fm_bmi_rx_port {
+	u32 fmbm_rcfg;	/* Rx configuration */
+	u32 fmbm_rst;	/* Rx status */
+	u32 fmbm_rda;	/* Rx DMA attributes */
+	u32 fmbm_rfp;	/* Rx FIFO parameters */
+	u32 fmbm_rfed;	/* Rx frame end data */
+	u32 fmbm_ricp;	/* Rx internal context parameters */
+	u32 fmbm_rim;	/* Rx internal margins */
+	u32 fmbm_rebm;	/* Rx external buffer margins */
+	u32 fmbm_rfne;	/* Rx frame next engine */
+	u32 fmbm_rfca;	/* Rx frame command attributes */
+	u32 fmbm_rfpne;	/* Rx frame parser next engine */
+	u32 fmbm_rpso;	/* Rx parse start offset */
+	u32 fmbm_rpp;	/* Rx policer profile */
+	u32 fmbm_rccb;	/* Rx coarse classification base */
+	u32 res1[0x2];
+	u32 fmbm_rprai[0x8];	/* Rx parse results array Initialization */
+	u32 fmbm_rfqid;		/* Rx frame queue ID */
+	u32 fmbm_refqid;	/* Rx error frame queue ID */
+	u32 fmbm_rfsdm;		/* Rx frame status discard mask */
+	u32 fmbm_rfsem;		/* Rx frame status error mask */
+	u32 fmbm_rfene;		/* Rx frame enqueue next engine */
+	u32 res2[0x23];
+	u32 fmbm_ebmpi[0x8];	/* buffer manager pool information */
+	u32 fmbm_acnt[0x8];	/* allocate counter */
+	u32 res3[0x8];
+	u32 fmbm_cgm[0x8];	/* congestion group map */
+	u32 fmbm_mpd;		/* BMan pool depletion */
+	u32 res4[0x1F];
+	u32 fmbm_rstc;		/* Rx statistics counters */
+	u32 fmbm_rfrc;		/* Rx frame counters */
+	u32 fmbm_rfbc;		/* Rx bad frames counter */
+	u32 fmbm_rlfc;		/* Rx large frames counter */
+	u32 fmbm_rffc;		/* Rx filter frames counter */
+	u32 fmbm_rfdc;		/* Rx frame discard counter */
+	u32 fmbm_rfldec;	/* Rx frames list DMA error counter */
+	u32 fmbm_rodc;		/* Rx out of buffers discard counter */
+	u32 fmbm_rbdc;		/* Rx buffers deallocate counter */
+	u32 res5[0x17];
+	u32 fmbm_rpc;		/* Rx performance counters */
+	u32 fmbm_rpcp;		/* Rx performance count parameters */
+	u32 fmbm_rccn;		/* Rx cycle counter */
+	u32 fmbm_rtuc;		/* Rx tasks utilization counter */
+	u32 fmbm_rrquc;		/* Rx receive queue utilization counter */
+	u32 fmbm_rduc;		/* Rx DMA utilization counter */
+	u32 fmbm_rfuc;		/* Rx FIFO utilization counter */
+	u32 fmbm_rpac;		/* Rx pause activation counter */
+	u32 res6[0x18];
+	u32 fmbm_rdbg;		/* Rx debug configuration */
+};
+
+/* FMBM_RCFG - Rx configuration */
+#define FMBM_RCFG_EN		0x80000000 /* port is enabled to receive data */
+#define FMBM_RCFG_FDOVR		0x02000000 /* frame discard override */
+#define FMBM_RCFG_IM		0x01000000 /* independent mode */
+
+/* FMBM_RST - Rx status */
+#define FMBM_RST_BSY		0x80000000 /* Rx port is busy */
+
+/* FMBM_RFCA - Rx frame command attributes */
+#define FMBM_RFCA_ORDER		0x80000000
+#define FMBM_RFCA_MR_MASK	0x003f0000
+#define FMBM_RFCA_MR(x)		((x << 16) & FMBM_RFCA_MR_MASK)
+
+/* FMBM_RSTC - Rx statistics */
+#define FMBM_RSTC_EN		0x80000000 /* statistics counters enable */
+
+struct fm_bmi_tx_port {
+	u32 fmbm_tcfg;	/* Tx configuration */
+	u32 fmbm_tst;	/* Tx status */
+	u32 fmbm_tda;	/* Tx DMA attributes */
+	u32 fmbm_tfp;	/* Tx FIFO parameters */
+	u32 fmbm_tfed;	/* Tx frame end data */
+	u32 fmbm_ticp;	/* Tx internal context parameters */
+	u32 fmbm_tfne;	/* Tx frame next engine */
+	u32 fmbm_tfca;	/* Tx frame command attributes */
+	u32 fmbm_tcfqid;/* Tx confirmation frame queue ID */
+	u32 fmbm_tfeqid;/* Tx error frame queue ID */
+	u32 fmbm_tfene;	/* Tx frame enqueue next engine */
+	u32 fmbm_trlmts;/* Tx rate limiter scale */
+	u32 fmbm_trlmt;	/* Tx rate limiter */
+	u32 res0[0x73];
+	u32 fmbm_tstc;	/* Tx statistics counters */
+	u32 fmbm_tfrc;	/* Tx frame counter */
+	u32 fmbm_tfdc;	/* Tx frames discard counter */
+	u32 fmbm_tfledc;/* Tx frame length error discard counter */
+	u32 fmbm_tfufdc;/* Tx frame unsupported format discard counter */
+	u32 fmbm_tbdc;	/* Tx buffers deallocate counter */
+	u32 res1[0x1a];
+	u32 fmbm_tpc;	/* Tx performance counters */
+	u32 fmbm_tpcp;	/* Tx performance count parameters */
+	u32 fmbm_tccn;	/* Tx cycle counter */
+	u32 fmbm_ttuc;	/* Tx tasks utilization counter */
+	u32 fmbm_ttcquc;/* Tx transmit confirm queue utilization counter */
+	u32 fmbm_tduc;	/* Tx DMA utilization counter */
+	u32 fmbm_tfuc;	/* Tx FIFO utilization counter */
+	u32 res2[0x19];
+	u32 fmbm_tdcfg;	/* Tx debug configuration */
+};
+
+/* FMBM_TCFG - Tx configuration */
+#define FMBM_TCFG_EN	0x80000000 /* port is enabled to transmit data */
+#define FMBM_TCFG_IM	0x01000000 /* independent mode enable */
+
+/* FMBM_TST - Tx status */
+#define FMBM_TST_BSY		0x80000000 /* Tx port is busy */
+
+/* FMBM_TFCA - Tx frame command attributes */
+#define FMBM_TFCA_ORDER		0x80000000
+#define FMBM_TFCA_MR_MASK	0x003f0000
+#define FMBM_TFCA_MR(x)		((x << 16) & FMBM_TFCA_MR_MASK)
+
+/* FMBM_TSTC - Tx statistics counters */
+#define FMBM_TSTC_EN		0x80000000
+
+/* FMBM_INIT - BMI initialization register */
+#define FMBM_INIT_START		0x80000000 /* init internal buffers */
+
+/* FMBM_CFG1 - BMI configuration 1 */
+#define FMBM_CFG1_FBPS_MASK	0x03ff0000 /* Free buffer pool size */
+#define FMBM_CFG1_FBPS_SHIFT	16
+#define FMBM_CFG1_FBPO_MASK	0x000003ff /* Free buffer pool offset */
+
+/* FMBM_IEVR - interrupt event */
+#define FMBM_IEVR_PEC		0x80000000 /* pipeline table ECC err detected */
+#define FMBM_IEVR_LEC		0x40000000 /* linked list RAM ECC error */
+#define FMBM_IEVR_SEC		0x20000000 /* statistics count RAM ECC error */
+#define FMBM_IEVR_CLEAR_ALL	(FMBM_IEVR_PEC | FMBM_IEVR_LEC | FMBM_IEVR_SEC)
+
+/* FMBM_IER - interrupt enable */
+#define FMBM_IER_PECE		0x80000000 /* PEC interrupt enable */
+#define FMBM_IER_LECE		0x40000000 /* LEC interrupt enable */
+#define FMBM_IER_SECE		0x20000000 /* SEC interrupt enable */
+
+#define FMBM_IER_DISABLE_ALL	0x00000000
+
+/* FMBM_PP - BMI Port Parameters */
+#define FMBM_PP_MXT_MASK	0x3f000000 /* Max # tasks */
+#define FMBM_PP_MXT(x)		(((x-1) << 24) & FMBM_PP_MXT_MASK)
+#define FMBM_PP_MXD_MASK	0x00000f00 /* Max DMA */
+#define FMBM_PP_MXD(x)		(((x-1) << 8) & FMBM_PP_MXD_MASK)
+
+/* FMBM_PFS - BMI Port FIFO Size */
+#define FMBM_PFS_IFSZ_MASK	0x000003ff /* Internal Fifo Size */
+#define FMBM_PFS_IFSZ(x)	(x & FMBM_PFS_IFSZ_MASK)
+
+/* FMQM_GC - global configuration */
+#define FMQM_GC_ENQ_EN		0x80000000 /* enqueue enable */
+#define FMQM_GC_DEQ_EN		0x40000000 /* dequeue enable */
+#define FMQM_GC_STEN		0x10000000 /* enable global stat counters */
+#define FMQM_GC_ENQ_THR_MASK	0x00003f00 /* max number of enqueue Tnum */
+#define FMQM_GC_ENQ(x)		((x << 8) &  FMQM_GC_ENQ_THR_MAS)
+#define FMQM_GC_DEQ_THR_MASK	0x0000003f /* max number of dequeue Tnum */
+#define FMQM_GC_DEQ(x)		(x & FMQM_GC_DEQ_THR_MASK)
+
+/* FMQM_EIE - error interrupt event register */
+#define FMQM_EIE_DEE		0x80000000 /* double-bit ECC error */
+#define FMQM_EIE_DFUPE		0x40000000 /* dequeue from unknown PortID */
+#define FMQM_EIE_CLEAR_ALL	(FMQM_EIE_DEE | FMQM_EIE_DFUPE)
+
+/* FMQM_EIEN - error interrupt enable register */
+#define FMQM_EIEN_DEEN		0x80000000 /* double-bit ECC error */
+#define FMQM_EIEN_DFUPEN	0x40000000 /* dequeue from unknown PortID */
+#define FMQM_EIEN_DISABLE_ALL	0x00000000
+
+/* FMQM_IE - interrupt event register */
+#define FMQM_IE_SEE		0x80000000 /* single-bit ECC error detected */
+#define FMQM_IE_CLEAR_ALL	FMQM_IE_SEE
+
+/* FMQM_IEN - interrupt enable register */
+#define FMQM_IEN_SEE		0x80000000 /* single-bit ECC err IRQ enable */
+#define FMQM_IEN_DISABLE_ALL	0x00000000
+
+/* NIA - next invoked action */
+#define NIA_ENG_RISC		0x00000000
+#define NIA_ENG_MASK		0x007c0000
+
+/* action code */
+#define NIA_RISC_AC_CC		0x00000006
+#define NIA_RISC_AC_IM_TX	0x00000008 /* independent mode Tx */
+#define NIA_RISC_AC_IM_RX	0x0000000a /* independent mode Rx */
+#define NIA_RISC_AC_HC		0x0000000c
+
+struct fm_parser {
+	u8	res[1024];
+};
+
+struct fm_policer {
+	u8	res[4*1024];
+};
+
+struct fm_keygen {
+	u8	res[4*1024];
+};
+
+struct fm_dma {
+	u32	fmdmsr;		/* status register */
+	u32	fmdmmr;		/* mode register */
+	u32	fmdmtr;		/* bus threshold register */
+	u32	fmdmhy;		/* bus hysteresis register */
+	u32	fmdmsetr;	/* SOS emergency threshold register */
+	u32	fmdmtah;	/* transfer bus address high register */
+	u32	fmdmtal;	/* transfer bus address low register */
+	u32	fmdmtcid;	/* transfer bus communication ID register */
+	u32	fmdmra;		/* DMA bus internal ram address register */
+	u32	fmdmrd;		/* DMA bus internal ram data register */
+	u32	res0[0xb];
+	u32	fmdmdcr;	/* debug counter */
+	u32	fmdmemsr;	/* emrgency smoother register */
+	u32	res1;
+	u32	fmdmplr[32];	/* FM DMA PID-LIODN # register */
+	u32	res[0x3c8];
+};
+
+/* FMDMSR - Fman DMA status register */
+#define FMDMSR_CMDQNE		0x10000000 /* command queue not empty */
+#define FMDMSR_BER		0x08000000 /* bus err event occurred on bus */
+#define FMDMSR_RDB_ECC		0x04000000 /* read buffer ECC error */
+#define FMDMSR_WRB_SECC		0x02000000 /* write buf ECC err sys side */
+#define FMDMSR_WRB_FECC		0x01000000 /* write buf ECC err Fman side */
+#define FMDMSR_DPEXT_SECC	0x00800000 /* DP external ECC err sys side */
+#define FMDMSR_DPEXT_FECC	0x00400000 /* DP external ECC err Fman side */
+#define FMDMSR_DPDAT_SECC	0x00200000 /* DP data ECC err on sys side */
+#define FMDMSR_DPDAT_FECC	0x00100000 /* DP data ECC err on Fman side */
+#define FMDMSR_SPDAT_FECC	0x00080000 /* SP data ECC error Fman side */
+
+#define FMDMSR_CLEAR_ALL	(FMDMSR_BER | FMDMSR_RDB_ECC \
+				| FMDMSR_WRB_SECC | FMDMSR_WRB_FECC \
+				| FMDMSR_DPEXT_SECC | FMDMSR_DPEXT_FECC \
+				| FMDMSR_DPDAT_SECC | FMDMSR_DPDAT_FECC \
+				| FMDMSR_SPDAT_FECC)
+
+/* FMDMMR - FMan DMA mode register */
+#define FMDMMR_SBER		0x10000000 /* stop the DMA if a bus error */
+
+struct fm_fpm {
+	u32	fpmtnc;		/* TNUM control */
+	u32	fpmprc;		/* Port_ID control */
+	u32	res0;
+	u32	fpmflc;		/* flush control */
+	u32	fpmdis1;	/* dispatch thresholds1 */
+	u32	fpmdis2;	/* dispatch thresholds2 */
+	u32	fmepi;		/* error pending interrupts */
+	u32	fmrie;		/* rams interrupt enable */
+	u32	fpmfcevent[0x4];/* FMan controller event 0-3 */
+	u32	res1[0x4];
+	u32	fpmfcmask[0x4];	/* FMan controller mask 0-3 */
+	u32	res2[0x4];
+	u32	fpmtsc1;	/* timestamp control1 */
+	u32	fpmtsc2;	/* timestamp control2 */
+	u32	fpmtsp;		/* time stamp */
+	u32	fpmtsf;		/* time stamp fraction */
+	u32	fpmrcr;		/* rams control and event */
+	u32	res3[0x3];
+	u32	fpmdrd[0x4];	/* data_ram data 0-3 */
+	u32	res4[0xc];
+	u32	fpmdra;		/* data ram access */
+	u32	fm_ip_rev_1;	/* IP block revision 1 */
+	u32	fm_ip_rev_2;	/* IP block revision 2 */
+	u32	fmrstc;		/* reset command */
+	u32	fmcld;		/* classifier debug control */
+	u32	fmnpi;		/* normal pending interrupts */
+	u32	res5;
+	u32	fmfpee;		/* event and enable */
+	u32	fpmcev[0x4];	/* CPU event 0-3 */
+	u32	res6[0x4];
+	u32	fmfp_ps[0x40];	/* port status */
+	u32	res7[0x260];
+	u32	fpmts[0x80];	/* task status */
+	u32	res8[0xa0];
+};
+
+/* FMFP_PRC - FPM Port_ID Control Register */
+#define FMFPPRC_PORTID_MASK	0x3f000000
+#define FMFPPRC_PORTID_SHIFT	24
+#define FMFPPRC_ORA_SHIFT	16
+#define FMFPPRC_RISC1		0x00000001
+#define FMFPPRC_RISC2		0x00000002
+#define FMFPPRC_RISC_ALL	(FMFPPRC_RISC1 | FMFPPRC_RSIC2)
+
+/* FPM Flush Control Register */
+#define FMFP_FLC_DISP_LIM_NONE	0x00000000 /* no dispatch limitation */
+
+/* FMFP_EE - FPM event and enable register */
+#define FMFPEE_DECC		0x80000000 /* double ECC err on FPM ram */
+#define FMFPEE_STL		0x40000000 /* stall of task ... */
+#define FMFPEE_SECC		0x20000000 /* single ECC error */
+#define FMFPEE_RFM		0x00010000 /* release FMan */
+#define FMFPEE_DECC_EN		0x00008000 /* double ECC interrupt enable */
+#define FMFPEE_STL_EN		0x00004000 /* stall of task interrupt enable */
+#define FMFPEE_SECC_EN		0x00002000 /* single ECC err interrupt enable */
+#define FMFPEE_EHM		0x00000008 /* external halt enable */
+#define FMFPEE_UEC		0x00000004 /* FMan is not halted */
+#define FMFPEE_CER		0x00000002 /* only errornous task stalled */
+#define FMFPEE_DER		0x00000001 /* DMA error is just reported */
+
+#define FMFPEE_CLEAR_EVENT	(FMFPEE_DECC | FMFPEE_STL | FMFPEE_SECC | \
+				 FMFPEE_EHM | FMFPEE_UEC | FMFPEE_CER | \
+				 FMFPEE_DER | FMFPEE_RFM)
+
+/* FMFP_RCR - FMan Rams Control and Event */
+#define FMFP_RCR_MDEC		0x00008000 /* double ECC error in muram */
+#define FMFP_RCR_IDEC		0x00004000 /* double ECC error in iram */
+
+struct fm_imem {
+	u32	iadd;		/* instruction address register */
+	u32	idata;		/* instruction data register */
+	u32	itcfg;		/* timing config register */
+	u32	iready;		/* ready register */
+	u8	res[0xff0];
+};
+#define IRAM_IADD_AIE		0x80000000 /* address auto increase enable */
+#define IRAM_READY		0x80000000 /* ready to use */
+
+struct fm_soft_parser {
+	u8	res[4*1024];
+};
+
+struct fm_dtesc {
+	u8	res[4*1024];
+};
+
+struct fm_mdio {
+	u8	res0[0x120];
+	u32	miimcfg;	/* MII management configuration reg */
+	u32	miimcom;	/* MII management command reg */
+	u32	miimadd;	/* MII management address reg */
+	u32	miimcon;	/* MII management control reg */
+	u32	miimstat;	/* MII management status reg  */
+	u32	miimind;	/* MII management indication reg */
+	u8	res1[0x1000 - 0x138];
+};
+
+struct fm_10gec {
+	u8	res[4*1024];
+};
+
+struct fm_10gec_mdio {
+	u8	res[4*1024];
+};
+
+struct fm_memac {
+	u8	res[4*1024];
+};
+
+struct fm_memac_mdio {
+	u8	res[4*1024];
+};
+
+struct fm_1588 {
+	u8	res[4*1024];
+};
+
+struct ccsr_fman {
+	u8			muram[0x80000];
+	struct fm_bmi_common	fm_bmi_common;
+	struct fm_qmi_common	fm_qmi_common;
+	u8			res0[2048];
+	struct {
+		struct fm_bmi	fm_bmi;
+		struct fm_qmi	fm_qmi;
+		struct fm_parser	fm_parser;
+		u8		res[1024];
+	} port[63];
+	struct fm_policer		fm_policer;
+	struct fm_keygen		fm_keygen;
+	struct fm_dma		fm_dma;
+	struct fm_fpm		fm_fpm;
+	struct fm_imem		fm_imem;
+};
+
+#endif /*__FSL_FMAN_H__*/
diff --git a/include/soc/fsl/fsl_memac.h b/include/soc/fsl/fsl_memac.h
new file mode 100644
index 0000000000..a0b8314f92
--- /dev/null
+++ b/include/soc/fsl/fsl_memac.h
@@ -0,0 +1,256 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ *	Roy Zang <tie-fei.zang@freescale.com>
+ */
+
+#ifndef __MEMAC_H__
+#define __MEMAC_H__
+
+struct memac {
+	/* memac general control and status registers */
+	u32	res_0[2];
+	u32	command_config;	/* Control and configuration register */
+	u32	mac_addr_0;	/* Lower 32 bits of 48-bit MAC address */
+	u32	mac_addr_1;	/* Upper 16 bits of 48-bit MAC address */
+	u32	maxfrm;		/* Maximum frame length register */
+	u32	res_18[5];
+	u32	hashtable_ctrl;	/* Hash table control register */
+	u32	res_30[4];
+	u32	ievent;		/* Interrupt event register */
+	u32	tx_ipg_length;	/* Transmitter inter-packet-gap register */
+	u32	res_48;
+	u32	imask;		/* interrupt mask register */
+	u32	res_50;
+	u32	cl_pause_quanta[4]; /* CL01-CL67 pause quanta register */
+	u32	cl_pause_thresh[4]; /* CL01-CL67 pause thresh register */
+	u32	rx_pause_status;	/* Receive pause status register */
+	u32	res_78[2];
+	u32	mac_addr[14];	/* MAC address */
+	u32	lpwake_timer;	/* EEE low power wakeup timer register */
+	u32	sleep_timer;	/* Transmit EEE Low Power Timer register */
+	u32	res_c0[8];
+	u32	statn_config;	/* Statistics configuration register */
+	u32	res_e4[7];
+
+	/* memac statistics counter registers */
+	u32	rx_eoct_l;	/* Rx ethernet octests lower */
+	u32	rx_eoct_u;	/* Rx ethernet octests upper */
+	u32	rx_oct_l;	/* Rx octests lower */
+	u32	rx_oct_u;	/* Rx octests upper */
+	u32	rx_align_err_l;	/* Rx alignment error lower */
+	u32	rx_align_err_u;	/* Rx alignment error upper */
+	u32	rx_pause_frame_l; /* Rx valid pause frame upper */
+	u32	rx_pause_frame_u; /* Rx valid pause frame upper */
+	u32	rx_frame_l;	/* Rx frame counter lower */
+	u32	rx_frame_u;	/* Rx frame counter upper */
+	u32	rx_frame_crc_err_l; /* Rx frame check sequence error lower */
+	u32	rx_frame_crc_err_u; /* Rx frame check sequence error upper */
+	u32	rx_vlan_l;	/* Rx VLAN frame lower */
+	u32	rx_vlan_u;	/* Rx VLAN frame upper */
+	u32	rx_err_l;	/* Rx frame error lower */
+	u32	rx_err_u;	/* Rx frame error upper */
+	u32	rx_uni_l;	/* Rx unicast frame lower */
+	u32	rx_uni_u;	/* Rx unicast frame upper */
+	u32	rx_multi_l;	/* Rx multicast frame lower */
+	u32	rx_multi_u;	/* Rx multicast frame upper */
+	u32	rx_brd_l;	/* Rx broadcast frame lower */
+	u32	rx_brd_u;	/* Rx broadcast frame upper */
+	u32	rx_drop_l;	/* Rx dropped packets lower */
+	u32	rx_drop_u;	/* Rx dropped packets upper */
+	u32	rx_pkt_l;	/* Rx packets lower */
+	u32	rx_pkt_u;	/* Rx packets upper */
+	u32	rx_undsz_l;	/* Rx undersized packet lower */
+	u32	rx_undsz_u;	/* Rx undersized packet upper */
+	u32	rx_64_l;	/* Rx 64 oct packet lower */
+	u32	rx_64_u;	/* Rx 64 oct packet upper */
+	u32	rx_127_l;	/* Rx 65 to 127 oct packet lower */
+	u32	rx_127_u;	/* Rx 65 to 127 oct packet upper */
+	u32	rx_255_l;	/* Rx 128 to 255 oct packet lower */
+	u32	rx_255_u;	/* Rx 128 to 255 oct packet upper */
+	u32	rx_511_l;	/* Rx 256 to 511 oct packet lower */
+	u32	rx_511_u;	/* Rx 256 to 511 oct packet upper */
+	u32	rx_1023_l;	/* Rx 512 to 1023 oct packet lower */
+	u32	rx_1023_u;	/* Rx 512 to 1023 oct packet upper */
+	u32	rx_1518_l;	/* Rx 1024 to 1518 oct packet lower */
+	u32	rx_1518_u;	/* Rx 1024 to 1518 oct packet upper */
+	u32	rx_1519_l;	/* Rx 1519 to max oct packet lower */
+	u32	rx_1519_u;	/* Rx 1519 to max oct packet upper */
+	u32	rx_oversz_l;	/* Rx oversized packet lower */
+	u32	rx_oversz_u;	/* Rx oversized packet upper */
+	u32	rx_jabber_l;	/* Rx Jabber packet lower */
+	u32	rx_jabber_u;	/* Rx Jabber packet upper */
+	u32	rx_frag_l;	/* Rx Fragment packet lower */
+	u32	rx_frag_u;	/* Rx Fragment packet upper */
+	u32	rx_cnp_l;	/* Rx control packet lower */
+	u32	rx_cnp_u;	/* Rx control packet upper */
+	u32	rx_drntp_l;	/* Rx dripped not truncated packet lower */
+	u32	rx_drntp_u;	/* Rx dripped not truncated packet upper */
+	u32	res_1d0[0xc];
+
+	u32	tx_eoct_l;	/* Tx ethernet octests lower */
+	u32	tx_eoct_u;	/* Tx ethernet octests upper */
+	u32	tx_oct_l;	/* Tx octests lower */
+	u32	tx_oct_u;	/* Tx octests upper */
+	u32	res_210[0x2];
+	u32	tx_pause_frame_l; /* Tx valid pause frame lower */
+	u32	tx_pause_frame_u; /* Tx valid pause frame upper */
+	u32	tx_frame_l;	/* Tx frame counter lower */
+	u32	tx_frame_u;	/* Tx frame counter upper */
+	u32	tx_frame_crc_err_l; /* Tx frame check sequence error lower */
+	u32	tx_frame_crc_err_u; /* Tx frame check sequence error upper */
+	u32	tx_vlan_l;	/* Tx VLAN frame lower */
+	u32	tx_vlan_u;	/* Tx VLAN frame upper */
+	u32	tx_frame_err_l;	/* Tx frame error lower */
+	u32	tx_frame_err_u;	/* Tx frame error upper */
+	u32	tx_uni_l;	/* Tx unicast frame lower */
+	u32	tx_uni_u;	/* Tx unicast frame upper */
+	u32	tx_multi_l;	/* Tx multicast frame lower */
+	u32	tx_multi_u;	/* Tx multicast frame upper */
+	u32	tx_brd_l;	/* Tx broadcast frame lower */
+	u32	tx_brd_u;	/* Tx broadcast frame upper */
+	u32	res_258[0x2];
+	u32	tx_pkt_l;	/* Tx packets lower */
+	u32	tx_pkt_u;	/* Tx packets upper */
+	u32	tx_undsz_l;	/* Tx undersized packet lower */
+	u32	tx_undsz_u;	/* Tx undersized packet upper */
+	u32	tx_64_l;	/* Tx 64 oct packet lower */
+	u32	tx_64_u;	/* Tx 64 oct packet upper */
+	u32	tx_127_l;	/* Tx 65 to 127 oct packet lower */
+	u32	tx_127_u;	/* Tx 65 to 127 oct packet upper */
+	u32	tx_255_l;	/* Tx 128 to 255 oct packet lower */
+	u32	tx_255_u;	/* Tx 128 to 255 oct packet upper */
+	u32	tx_511_l;	/* Tx 256 to 511 oct packet lower */
+	u32	tx_511_u;	/* Tx 256 to 511 oct packet upper */
+	u32	tx_1023_l;	/* Tx 512 to 1023 oct packet lower */
+	u32	tx_1023_u;	/* Tx 512 to 1023 oct packet upper */
+	u32	tx_1518_l;	/* Tx 1024 to 1518 oct packet lower */
+	u32	tx_1518_u;	/* Tx 1024 to 1518 oct packet upper */
+	u32	tx_1519_l;	/* Tx 1519 to max oct packet lower */
+	u32	tx_1519_u;	/* Tx 1519 to max oct packet upper */
+	u32	res_2a8[0x6];
+	u32	tx_cnp_l;	/* Tx control packet lower */
+	u32	tx_cnp_u;	/* Tx control packet upper */
+	u32	res_2c8[0xe];
+
+	/* Line interface control register */
+	u32 if_mode;		/* interface mode control */
+	u32 if_status;		/* interface status */
+	u32 res_308[0xe];
+
+	/* HiGig/2 Register */
+	u32 hg_config;	/* HiGig2 control and configuration */
+	u32 res_344[0x3];
+	u32 hg_pause_quanta;	/* HiGig2 pause quanta */
+	u32 res_354[0x3];
+	u32 hg_pause_thresh;	/* HiGig2 pause quanta threshold */
+	u32 res_364[0x3];
+	u32 hgrx_pause_status;	/* HiGig2 rx pause quanta status */
+	u32 hg_fifos_status;	/* HiGig2 fifos status */
+	u32 rhm;	/* Rx HiGig2 message counter register */
+	u32 thm;/* Tx HiGig2 message counter register */
+	u32 res_380[0x320];
+};
+
+/* COMMAND_CONFIG - command and configuration register */
+#define MEMAC_CMD_CFG_RX_EN		0x00000002 /* MAC Rx path enable */
+#define MEMAC_CMD_CFG_TX_EN		0x00000001 /* MAC Tx path enable */
+#define MEMAC_CMD_CFG_RXTX_EN	(MEMAC_CMD_CFG_RX_EN | MEMAC_CMD_CFG_TX_EN)
+#define MEMAC_CMD_CFG_NO_LEN_CHK 0x20000 /* Payload length check disable */
+
+/* HASHTABLE_CTRL - Hashtable control register */
+#define HASHTABLE_CTRL_MCAST_EN	0x00000200 /* enable mulitcast Rx hash */
+#define HASHTABLE_CTRL_ADDR_MASK	0x000001ff
+
+/* TX_IPG_LENGTH - Transmit inter-packet gap length register */
+#define TX_IPG_LENGTH_IPG_LEN_MASK	0x000003ff
+
+/* IMASK - interrupt mask register */
+#define IMASK_MDIO_SCAN_EVENT	0x00010000 /* MDIO scan event mask */
+#define IMASK_MDIO_CMD_CMPL	0x00008000 /* MDIO cmd completion mask */
+#define IMASK_REM_FAULT		0x00004000 /* remote fault mask */
+#define IMASK_LOC_FAULT		0x00002000 /* local fault mask */
+#define IMASK_TX_ECC_ER		0x00001000 /* Tx frame ECC error mask */
+#define IMASK_TX_FIFO_UNFL	0x00000800 /* Tx FIFO underflow mask */
+#define IMASK_TX_ER		0x00000200 /* Tx frame error mask */
+#define IMASK_RX_FIFO_OVFL	0x00000100 /* Rx FIFO overflow mask */
+#define IMASK_RX_ECC_ER		0x00000080 /* Rx frame ECC error mask */
+#define IMASK_RX_JAB_FRM	0x00000040 /* Rx jabber frame mask */
+#define IMASK_RX_OVRSZ_FRM	0x00000020 /* Rx oversized frame mask */
+#define IMASK_RX_RUNT_FRM	0x00000010 /* Rx runt frame mask */
+#define IMASK_RX_FRAG_FRM	0x00000008 /* Rx fragment frame mask */
+#define IMASK_RX_LEN_ER		0x00000004 /* Rx payload length error mask */
+#define IMASK_RX_CRC_ER		0x00000002 /* Rx CRC error mask */
+#define IMASK_RX_ALIGN_ER	0x00000001 /* Rx alignment error mask */
+
+#define IMASK_MASK_ALL		0x00000000
+
+/* IEVENT - interrupt event register */
+#define IEVENT_MDIO_SCAN_EVENT	0x00010000 /* MDIO scan event */
+#define IEVENT_MDIO_CMD_CMPL	0x00008000 /* MDIO cmd completion */
+#define IEVENT_REM_FAULT	0x00004000 /* remote fault */
+#define IEVENT_LOC_FAULT	0x00002000 /* local fault */
+#define IEVENT_TX_ECC_ER	0x00001000 /* Tx frame ECC error */
+#define IEVENT_TX_FIFO_UNFL	0x00000800 /* Tx FIFO underflow */
+#define IEVENT_TX_ER		0x00000200 /* Tx frame error */
+#define IEVENT_RX_FIFO_OVFL	0x00000100 /* Rx FIFO overflow */
+#define IEVENT_RX_ECC_ER	0x00000080 /* Rx frame ECC error */
+#define IEVENT_RX_JAB_FRM	0x00000040 /* Rx jabber frame */
+#define IEVENT_RX_OVRSZ_FRM	0x00000020 /* Rx oversized frame */
+#define IEVENT_RX_RUNT_FRM	0x00000010 /* Rx runt frame */
+#define IEVENT_RX_FRAG_FRM	0x00000008 /* Rx fragment frame */
+#define IEVENT_RX_LEN_ER	0x00000004 /* Rx payload length error */
+#define IEVENT_RX_CRC_ER	0x00000002 /* Rx CRC error */
+#define IEVENT_RX_ALIGN_ER	0x00000001 /* Rx alignment error */
+
+#define IEVENT_CLEAR_ALL	0xffffffff
+
+/* IF_MODE - Interface Mode Register */
+#define IF_MODE_EN_AUTO	0x00008000 /* 1 - Enable automatic speed selection */
+#define IF_MODE_SETSP_100M	0x00000000 /* 00 - 100Mbps RGMII */
+#define IF_MODE_SETSP_10M	0x00002000 /* 01 - 10Mbps RGMII */
+#define IF_MODE_SETSP_1000M	0x00004000 /* 10 - 1000Mbps RGMII */
+#define IF_MODE_SETSP_MASK	0x00006000 /* setsp mask bits */
+#define IF_MODE_XGMII	0x00000000 /* 00- XGMII(10) interface mode */
+#define IF_MODE_GMII		0x00000002 /* 10- GMII interface mode */
+#define IF_MODE_MASK	0x00000003 /* mask for mode interface mode */
+#define IF_MODE_RG		0x00000004 /* 1- RGMII */
+
+#define IF_DEFAULT	(IF_GMII)
+
+/* Internal PHY Registers - SGMII */
+#define PHY_SGMII_CR_PHY_RESET      0x8000
+#define PHY_SGMII_CR_RESET_AN       0x0200
+#define PHY_SGMII_CR_DEF_VAL        0x1140
+#define PHY_SGMII_IF_SPEED_GIGABIT  0x0008
+#define PHY_SGMII_DEV_ABILITY_SGMII 0x4001
+#define PHY_SGMII_IF_MODE_AN        0x0002
+#define PHY_SGMII_IF_MODE_SGMII     0x0001
+
+struct memac_mdio_controller {
+	u32	res0[0xc];
+	u32	mdio_stat;	/* MDIO configuration and status */
+	u32	mdio_ctl;	/* MDIO control */
+	u32	mdio_data;	/* MDIO data */
+	u32	mdio_addr;	/* MDIO address */
+};
+
+#define MDIO_STAT_CLKDIV(x)	(((x>>1) & 0xff) << 8)
+#define MDIO_STAT_BSY		(1 << 0)
+#define MDIO_STAT_RD_ER		(1 << 1)
+#define MDIO_STAT_PRE		(1 << 5)
+#define MDIO_STAT_ENC		(1 << 6)
+#define MDIO_STAT_HOLD_15_CLK	(7 << 2)
+#define MDIO_STAT_NEG		(1 << 23)
+
+#define MDIO_CTL_DEV_ADDR(x)	(x & 0x1f)
+#define MDIO_CTL_PORT_ADDR(x)	((x & 0x1f) << 5)
+#define MDIO_CTL_PRE_DIS	(1 << 10)
+#define MDIO_CTL_SCAN_EN	(1 << 11)
+#define MDIO_CTL_POST_INC	(1 << 14)
+#define MDIO_CTL_READ		(1 << 15)
+
+#define MDIO_DATA(x)		(x & 0xffff)
+#define MDIO_DATA_BSY		(1 << 31)
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
