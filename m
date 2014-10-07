Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbVf6-0000J5-RM
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003P7-6w
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004Dy-58
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:16 +0200
Message-Id: <1412691738-11145-18-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/19] MPC5125/FEC: add another FEC driver for the MPC5125 SoC
To: barebox@lists.infradead.org

This FEC differs slightly from the one used in the MPC5200. Maybe both can
share the most of the code, but I'm not sure if its worth the effort.
Note: this is tested on a MPC2125 only. It might work on an MPC5121/MPC5123 as
well, but it's untested.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/net/Kconfig       |   5 +
 drivers/net/Makefile      |   1 +
 drivers/net/fec_mpc5125.c | 690 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/fec_mpc5125.h |   0
 include/fec.h             |   2 +-
 5 files changed, 697 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/fec_mpc5125.c
 create mode 100644 drivers/net/fec_mpc5125.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index c99fcc8..f4714f7 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -137,6 +137,11 @@ config DRIVER_NET_MPC5200
 	depends on ARCH_MPC5200
 	select PHYLIB
 
+config DRIVER_NET_MPC5125
+	bool "MPC5125 Ethernet driver"
+	depends on SOC_MPC5125
+	select PHYLIB
+
 config DRIVER_NET_NETX
 	bool "Hilscher Netx ethernet driver"
 	depends on HAS_NETX_ETHER
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 1b85778..8912887 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
 obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
+obj-$(CONFIG_DRIVER_NET_MPC5125)	+= fec_mpc5125.o
 obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
 obj-$(CONFIG_DRIVER_NET_ORION)		+= orion-gbe.o
 obj-$(CONFIG_DRIVER_NET_RTL8139)	+= rtl8139.o
diff --git a/drivers/net/fec_mpc5125.c b/drivers/net/fec_mpc5125.c
new file mode 100644
index 0000000..3d78db6
--- /dev/null
+++ b/drivers/net/fec_mpc5125.c
@@ -0,0 +1,690 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
+ *
+ * Based partially on code of:
+ * (C) Copyright 2003-2010
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <net.h>
+#include <fec.h>
+#include <linux/phy.h>
+#include <asm/io.h>
+#include <mach/mpc5xxx.h>
+#include <mach/clocks.h>
+
+/*
+ * Please be aware:
+ * External phys needs a preamble to synchronize itself into the bit stream.
+ * This means a '1' bit at the MDIO line for 32 consecutive MDC clocks.
+ * It might be neccessary to enable the pull up at the MDIO line to force it
+ * to the '1' state for this purpose
+ */
+
+/* FEC's register description */
+struct fec5125 {
+	u32	fec_id;
+	u32	ievent;
+	u32	imask;
+	u32	reserved_01;
+	u32	r_des_active;
+	u32	x_des_active;
+	u32	reserved_02[3];
+	u32	ecntrl;
+	u32	reserved_03[6];
+	u32	mii_data;
+	u32	mii_speed;
+	u32	reserved_04[7];
+	u32	mib_control;
+	u32	reserved_05[7];
+	u32	r_cntrl;
+	u32	r_hash;
+	u32	reserved_06[14];
+	u32	x_cntrl;
+	u32	reserved_07[7];
+	u32	paddr1;
+	u32	paddr2;
+	u32	op_pause;
+	u32	reserved_08[10];
+	u32	iaddr1;
+	u32	iaddr2;
+	u32	gaddr1;
+	u32	gaddr2;
+	u32	reserved_09[7];
+	u32	x_wmrk;
+	u32	reserved_10;
+	u32	r_bound;
+	u32	r_fstart;
+	u32	reserved_11[11];
+	u32	r_des_start;
+	u32	x_des_start;
+	u32	r_buff_size;
+	u32	reserved_12[26];
+	u32	dma_control;
+	u32	reserved_13[2];
+	u32	mib1[30];
+	u32	reserved_14[2];
+	u32	mib2[25];
+};
+
+/* RBD bits definitions */
+#define FEC_RBD_EMPTY		0x8000	/* Buffer is empty */
+#define FEC_RBD_WRAP		0x2000	/* Last BD in ring */
+#define FEC_RBD_LAST		0x0800	/* Buffer is last in frame(useless) */
+#define FEC_RBD_MISS		0x0100	/* Miss bit for prom mode */
+#define FEC_RBD_BC		0x0080	/* The received frame is broadcast frame */
+#define FEC_RBD_MC		0x0040	/* The received frame is multicast frame */
+#define FEC_RBD_LG		0x0020	/* Frame length violation */
+#define FEC_RBD_NO		0x0010	/* Nonoctet align frame */
+#define FEC_RBD_SH		0x0008	/* Short frame */
+#define FEC_RBD_CR		0x0004	/* CRC error */
+#define FEC_RBD_OV		0x0002	/* Receive FIFO overrun */
+#define FEC_RBD_TR		0x0001	/* Frame is truncated */
+#define FEC_RBD_ERR		(FEC_RBD_LG | FEC_RBD_NO | FEC_RBD_CR | \
+					FEC_RBD_OV | FEC_RBD_TR)
+
+/* TBD bits definitions */
+#define FEC_TBD_READY		0x8000	/* Buffer is ready */
+#define FEC_TBD_WRAP		0x2000	/* Last BD in ring */
+#define FEC_TBD_LAST		0x0800	/* Buffer is last in frame */
+#define FEC_TBD_TC		0x0400	/* Transmit the CRC */
+#define FEC_TBD_ABC		0x0200	/* Append bad CRC */
+
+/* MII-related definitios */
+#define FEC_MII_DATA_ST		0x40000000	/* Start of frame delimiter */
+#define FEC_MII_DATA_OP_RD	0x20000000	/* Perform a read operation */
+#define FEC_MII_DATA_OP_WR	0x10000000	/* Perform a write operation */
+#define FEC_MII_DATA_PA_MSK	0x0f800000	/* PHY Address field mask */
+#define FEC_MII_DATA_PA(x)	(((x) << FEC_MII_DATA_PA_SHIFT) & FEC_MII_DATA_PA_MSK)
+#define FEC_MII_DATA_RA_MSK	0x007c0000	/* PHY Register field mask */
+#define FEC_MII_DATA_RA(x)	(((x) << FEC_MII_DATA_RA_SHIFT) & FEC_MII_DATA_RA_MSK)
+#define FEC_MII_DATA_TA		0x00020000	/* Turnaround */
+#define FEC_MII_DATA_DATAMSK	0x0000ffff	/* PHY data field */
+
+#define FEC_MII_DATA_RA_SHIFT	18	/* MII Register address bits */
+#define FEC_MII_DATA_PA_SHIFT	23	/* MII PHY address bits */
+
+#define FEC_IEVENT_HBERR 	0x80000000
+#define FEC_IEVENT_GRA		0x10000000
+#define FEC_IEVENT_BABT		0x20000000
+#define FEC_IEVENT_MII		0x00800000
+#define FEC_IEVENT_XFIFO_ERROR	0x00040000
+#define FEC_IEVENT_RFIFO_ERROR	0x00020000
+
+/* Receive & Transmit Buffer Descriptor definitions */
+struct mpc5125_descriptor {
+	u16 status;
+	u16 dlength;
+	u32 dpointer;
+};
+
+/* BD Numer definitions */
+#define FEC_TBD_NUM		48	/* The user can adjust this value */
+#define FEC_RBD_NUM		32	/* The user can adjust this value */
+
+/* packet size limit */
+#define FEC_MAX_FRAME_LEN	1522	/* recommended default value */
+
+/* Buffer size must be evenly divisible by 16 */
+#define FEC_MAX_PKT_SIZE	((FEC_MAX_FRAME_LEN + 0x10) & (~0xf))
+
+struct mpc5125_frame {
+	unsigned char frame[FEC_MAX_PKT_SIZE];
+};
+
+struct mpc5125_buff_descs {
+	struct mpc5125_descriptor rbd[FEC_RBD_NUM]; /* RBD ring */
+	struct mpc5125_descriptor tbd[FEC_TBD_NUM]; /* TBD ring */
+	struct mpc5125_frame recv_frames[FEC_RBD_NUM]; /* receive buff */
+} ;
+
+struct mpc5125_fec_priv {
+	struct fec5125 *eth;
+	struct mpc5125_buff_descs *bdBase; /* BD rings and recv buffer */
+	size_t rdb_idx; /* next receive BD to read */
+	size_t tdb_idx; /* next transmit BD to send */
+	size_t usedtdb_idx; /* next transmit BD to clean */
+	unsigned clean_tbd_cnt; /* the number of available transmit BDs */
+	unsigned char frame[FEC_MAX_PKT_SIZE];
+	size_t frame_idx;
+
+	phy_interface_t interface; /* transceiver type */
+	u32 phy_flags; /* nowhere used ?? */
+	unsigned phy_addr;
+	struct mii_bus miibus;
+};
+
+static void mpc5125_fec_collect_frame(struct mpc5125_fec_priv *fec,
+					const void *buf, size_t length)
+{
+	memcpy(&fec->frame[fec->frame_idx], buf, length - fec->frame_idx);
+	fec->frame_idx = length; /* FIXME not "+=" here???? */
+}
+
+static void mpc5125_fec_init_buffer_ring(struct mpc5125_fec_priv *fec)
+{
+	void *base;
+
+	base = xzalloc(sizeof(struct mpc5125_buff_descs) + 0x1f);
+	/* this buffer must be quad word aligned */
+	base = (void *)((unsigned)base & ~0xf);
+
+	fec->bdBase = base;
+}
+
+static void mpc5125_fec_activate_transmission(struct mpc5125_fec_priv *fec)
+{
+	/* Activate transmit Buffer Descriptor polling */
+	out_be32(&fec->eth->x_des_active, 0x01000000);
+}
+
+static void mpc5125_fec_disable_transmission(struct mpc5125_fec_priv *fec)
+{
+	/* nothing to be done here */
+}
+
+static void mpc5125_fec_activate_reception(struct mpc5125_fec_priv *fec)
+{
+	out_be32(&fec->eth->r_des_active, 0x01000000);
+}
+
+static void mpc5125_fec_disable_reception(struct mpc5125_fec_priv *fec)
+{
+	/* nothing to be done here */
+}
+
+static void mpc5125_fec_clear_reception_event(struct mpc5125_fec_priv *fec)
+{
+	/* nothing to be done here */
+}
+
+/* keep MII frequency below 2.5 MHz */
+static unsigned mpc5125_fec_limit_mii_clock(void)
+{
+	u32 reg;
+
+	/* MII clock is 1 / (MII_SPEED x 2) */
+	reg = get_ips_clock() + 2500000;
+	reg /= 5000000;
+	return reg + 1;
+}
+
+/* MII-interface related functions */
+static int fec5125_miibus_read(struct mii_bus *bus, int phy_addr, int reg_addr)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)bus->priv;
+	int rc;
+
+	/* clear mii transfer status first */
+	out_be32(&fec->eth->ievent, FEC_IEVENT_MII);
+	/*
+	 * reading from any PHY's register is done by properly
+	 * programming the FEC's MII data register.
+	 */
+	out_be32(&fec->eth->mii_data, FEC_MII_DATA_ST | FEC_MII_DATA_OP_RD |
+				FEC_MII_DATA_TA | FEC_MII_DATA_PA(phy_addr) |
+				FEC_MII_DATA_RA(reg_addr));
+
+	rc = wait_on_timeout(500 * MSECOND,
+				in_be32(&fec->eth->ievent) & FEC_IEVENT_MII);
+	if (rc < 0) {
+		dev_err(bus->parent, "MDIO read timed out\n");
+		return rc;
+	}
+
+	/* it's now safe to read the PHY's register */
+	return in_be32(&fec->eth->mii_data) & FEC_MII_DATA_DATAMSK;
+}
+
+static int fec5125_miibus_write(struct mii_bus *bus, int phy_addr,
+						int reg_addr, u16 data)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)bus->priv;
+	int rc;
+
+	/* clear mii transfer status first */
+	out_be32(&fec->eth->ievent, FEC_IEVENT_MII);
+
+	out_be32(&fec->eth->mii_data, FEC_MII_DATA_ST | FEC_MII_DATA_OP_WR |
+				FEC_MII_DATA_TA | FEC_MII_DATA_PA(phy_addr) |
+				FEC_MII_DATA_RA(reg_addr) | data);
+
+	rc = wait_on_timeout(500 * MSECOND,
+				in_be32(&fec->eth->ievent) & FEC_IEVENT_MII);
+	if (rc < 0)
+		dev_err(bus->parent, "MDIO write timed out\n");
+
+	return rc;
+}
+
+/* initialize the receive buffer descriptors */
+static int mpc5125_fec_rbd_init(struct mpc5125_fec_priv *fec)
+{
+	size_t ix;
+
+	for (ix = 0; ix < FEC_RBD_NUM; ix++) {
+		fec->bdBase->rbd[ix].dpointer = (u32)&fec->bdBase->recv_frames[ix];
+		fec->bdBase->rbd[ix].status = FEC_RBD_EMPTY;
+		fec->bdBase->rbd[ix].dlength = 0;
+	}
+
+	/* let the last buffer descriptor close the ring */
+	fec->bdBase->rbd[ix - 1].status |= FEC_RBD_WRAP;
+	fec->rdb_idx = 0;
+
+	return 0;
+}
+
+/* initialize the transmitt buffer descriptors */
+static void mpc5125_fec_tbd_init(struct mpc5125_fec_priv *fec)
+{
+	int ix;
+
+	for (ix = 0; ix < FEC_TBD_NUM; ix++)
+		fec->bdBase->tbd[ix].status = 0;
+
+	/* let the last buffer descriptor close the ring */
+	fec->bdBase->tbd[ix - 1].status |= FEC_TBD_WRAP;
+
+	fec->tdb_idx = 0;
+	fec->usedtdb_idx = 0;
+	fec->clean_tbd_cnt = FEC_TBD_NUM;
+}
+
+static void mpc5125_fec_rbd_clean(struct mpc5125_fec_priv *fec,
+						struct mpc5125_descriptor *rbd)
+{
+	/* Reset buffer descriptor as empty */
+	if ((fec->rdb_idx) == (FEC_RBD_NUM - 1))
+		rbd->status = (FEC_RBD_WRAP | FEC_RBD_EMPTY);
+	else
+		rbd->status = FEC_RBD_EMPTY;
+
+	rbd->dlength = 0;
+
+	/* ensure all written data has hit the memory */
+	barrier();
+
+	/* Now, we have an empty RxBD, restart the engine */
+	mpc5125_fec_activate_reception(fec);
+
+	/* Increment BD count */
+	fec->rdb_idx = (fec->rdb_idx + 1) % FEC_RBD_NUM;
+}
+
+static void mpc5125_fec_tbd_scrub(struct mpc5125_fec_priv *fec)
+{
+	struct mpc5125_descriptor *used_tbd;
+
+	/* process all the consumed TBDs */
+	while (fec->clean_tbd_cnt < FEC_TBD_NUM) {
+		used_tbd = &fec->bdBase->tbd[fec->usedtdb_idx];
+		if (used_tbd->status & FEC_TBD_READY) {
+			return;
+		}
+
+		/* clean this buffer descriptor */
+		if (fec->usedtdb_idx == (FEC_TBD_NUM - 1))
+			used_tbd->status = FEC_TBD_WRAP;
+		else
+			used_tbd->status = 0;
+
+		/* update some indeces for a correct handling of the TBD ring */
+		fec->clean_tbd_cnt++;
+		fec->usedtdb_idx = (fec->usedtdb_idx + 1) % FEC_TBD_NUM;
+	}
+
+	barrier();
+}
+
+static int mpc5125_fec_get_ethaddr(struct eth_device *dev, unsigned char *mac)
+{
+	/* no eeprom */
+	return -ENODEV;
+}
+
+static int mpc5125_fec_set_ethaddr(struct eth_device *dev, unsigned char *mac)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)dev->priv;
+	u8 currByte;
+	int byte, bit;
+	u32 crc = 0xffffffff;
+
+	/*
+	 * The algorithm used is the following:
+	 * we loop on each of the six bytes of the provided address,
+	 * and we compute the CRC by left-shifting the previous
+	 * value by one position, so that each bit in the current
+	 * byte of the address may contribute the calculation. If
+	 * the latter and the MSB in the CRC are different, then
+	 * the CRC value so computed is also ex-ored with the
+	 * "polynomium generator". The current byte of the address
+	 * is also shifted right by one bit at each iteration.
+	 * This is because the CRC generatore in hardware is implemented
+	 * as a shift-register with as many ex-ores as the radixes
+	 * in the polynomium. This suggests that we represent the
+	 * polynomiumm itself as a 32-bit constant.
+	 */
+	for (byte = 0; byte < 6; byte++) {
+		currByte = mac[byte];
+		for (bit = 0; bit < 8; bit++) {
+			if ((currByte & 0x01) ^ (crc & 0x01)) {
+				crc >>= 1;
+				crc = crc ^ 0xedb88320;
+			} else {
+				crc >>= 1;
+			}
+			currByte >>= 1;
+		}
+	}
+
+	crc = crc >> 26;
+
+	/* Set individual hash table register */
+	if (crc >= 32) {
+		out_be32(&fec->eth->iaddr1, (1 << (crc - 32)));
+		out_be32(&fec->eth->iaddr2, 0);
+	} else {
+		out_be32(&fec->eth->iaddr1, 0);
+		out_be32(&fec->eth->iaddr2, (1 << crc));
+	}
+
+	/* Set physical address */
+	out_be32(&fec->eth->paddr1, (mac[0] << 24) + (mac[1] << 16) +
+					(mac[2] <<  8) + mac[3]);
+	out_be32(&fec->eth->paddr2, (mac[4] << 24) + (mac[5] << 16) + 0x8808);
+
+	return 0;
+}
+
+static int mpc5125_fec_init(struct eth_device *dev)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)dev->priv;
+
+	/* Initilize both BD rings */
+	mpc5125_fec_rbd_init(fec);
+	mpc5125_fec_tbd_init(fec);
+
+	/* Clear FEC-Lite interrupt event register(IEVENT) */
+	out_be32(&fec->eth->ievent, 0xffffffff);
+
+	/* Set interrupt mask register */
+	out_be32(&fec->eth->imask, 0x00000000);
+
+	/* Set transmit fifo watermark register(X_WMRK), default = 64 */
+	out_be32(&fec->eth->x_wmrk, 0x0);
+
+	/* Setup phy interface mode and max frame length */
+	switch (fec->interface) {
+	case PHY_INTERFACE_MODE_MII:
+		out_be32(&fec->eth->r_cntrl, (FEC_MAX_FRAME_LEN << 16) | 0x024);
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		out_be32(&fec->eth->r_cntrl, (FEC_MAX_FRAME_LEN << 16) | 0x124);
+		break;
+	default:
+		dev_err(&dev->dev, "Unsupported phy interface mode\n");
+		return -EINVAL;
+	}
+
+	/* Setup MII_SPEED and do not drop the Preamble. */
+	out_be32(&fec->eth->mii_speed, (mpc5125_fec_limit_mii_clock()) << 1);
+
+	/* Set Opcode/Pause Duration Register */
+	out_be32(&fec->eth->op_pause, 0x00010020);
+
+	/* Set multicast address filter */
+	out_be32(&fec->eth->gaddr1, 0x00000000);
+	out_be32(&fec->eth->gaddr2, 0x00000000);
+
+	/* Half-duplex, heartbeat disabled */
+	out_be32(&fec->eth->x_cntrl, 0x00000000);
+
+	/* Enable MIB counters */
+	out_be32(&fec->eth->mib_control, 0x0);
+
+	/* Setup recv fifo start and buff size */
+	out_be32(&fec->eth->r_fstart, 0x500);
+	out_be32(&fec->eth->r_buff_size, FEC_MAX_PKT_SIZE);
+
+	/* Setup BD base addresses */
+	out_be32(&fec->eth->r_des_start, (u32)fec->bdBase->rbd);
+	out_be32(&fec->eth->x_des_start, (u32)fec->bdBase->tbd);
+
+	/* DMA Control */
+	out_be32(&fec->eth->dma_control, 0xc0000000);
+
+	/* Enable FEC */
+	setbits_be32(&fec->eth->ecntrl, 0x00000002);
+
+	return 1;
+}
+
+static int mpc5125_fec_open(struct eth_device *edev)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)edev->priv;
+
+	mpc5125_fec_activate_reception(fec);
+
+	return phy_device_connect(edev, &fec->miibus, fec->phy_addr, NULL,
+					fec->phy_flags, fec->interface);
+}
+
+static void mpc5125_fec_halt(struct eth_device *dev)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)dev->priv;
+	int counter = 0xffff;
+
+	/* mask FEC chip interrupts */
+	out_be32(&fec->eth->imask, 0);
+
+	/* issue graceful stop command to the FEC transmitter if necessary */
+	setbits_be32(&fec->eth->x_cntrl, 0x00000001);
+
+	/* wait for graceful stop to register */
+	while ((counter--) && (!(in_be32(&fec->eth->ievent) & 0x10000000)))
+		;
+
+	/* Disable the Ethernet Controller */
+	clrbits_be32(&fec->eth->ecntrl, 0x00000002);
+
+	/* Issue a reset command to the FEC chip */
+	setbits_be32(&fec->eth->ecntrl, 0x1);
+
+	/* wait at least 16 clock cycles */
+	udelay(10);
+}
+
+static int mpc5125_fec_send(struct eth_device *dev, void *eth_data, int data_length)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)dev->priv;
+	struct mpc5125_descriptor *tbd;
+	int rc;
+
+	/* Clear Tx BD ring at first */
+	mpc5125_fec_tbd_scrub(fec);
+
+	/* Check for valid length of data. */
+	if ((data_length > 1500) || (data_length <= 0))
+		return -EINVAL;
+
+	/* Check the number of vacant TxBDs. */
+	if (fec->clean_tbd_cnt < 1) {
+		dev_err(&dev->dev, "No available TxBDs ...\n");
+		return -ENOMEM;
+	}
+
+	/* Get the first free TxBD to send the mac header */
+	tbd = &fec->bdBase->tbd[fec->tdb_idx];
+	fec->clean_tbd_cnt -= 1;
+	tbd->dlength = data_length;
+	tbd->dpointer = (u32)eth_data;
+	tbd->status |= FEC_TBD_LAST | FEC_TBD_TC | FEC_TBD_READY;
+	fec->tdb_idx = (fec->tdb_idx + 1) % FEC_TBD_NUM;
+
+	/* ensure all written data has hit the memory */
+	barrier();
+
+	mpc5125_fec_activate_transmission(fec);
+
+	rc = wait_on_timeout(500 * MSECOND,
+				!(in_be16(&tbd->status) & FEC_TBD_READY));
+	if (rc != 0) {
+		dev_err(&dev->dev, "Time out while waiting for transmission...\n");
+	} else {
+		dev_dbg(&dev->dev, "sucessfully sent (%hX)\n", in_be16(&tbd->status));
+	}
+
+	return rc;
+}
+
+static void mpc5125_fec_debug_rx_header(void *buffer, size_t length)
+{
+#ifdef DEBUG_RX_HEADER
+	int i;
+
+	printf ("recv data length 0x%08x data hdr: ", length);
+	for (i = 0; i < 14; i++)
+		printf ("%x ", *((u8*)buffer + i));
+	printf("\n");
+#endif
+}
+
+static int mpc5125_fec_recv(struct eth_device *dev)
+{
+	struct mpc5125_fec_priv *fec = (struct mpc5125_fec_priv *)dev->priv;
+	struct mpc5125_descriptor *pRbd = &fec->bdBase->rbd[fec->rdb_idx];
+	unsigned long ievent;
+	int frame_length = 0;
+
+	/* Check if any critical events have happened */
+	ievent = in_be32(&fec->eth->ievent);
+	out_be32(&fec->eth->ievent, ievent);
+	if (ievent & (FEC_IEVENT_BABT | FEC_IEVENT_XFIFO_ERROR |
+				FEC_IEVENT_RFIFO_ERROR)) {
+		/* BABT, Rx/Tx FIFO errors */
+		mpc5125_fec_halt(dev);
+		mpc5125_fec_init(dev);
+		return 0;
+	}
+
+	if (ievent & FEC_IEVENT_HBERR) {
+		/* Heartbeat error */
+		setbits_be32(&fec->eth->x_cntrl, 0x00000001);
+	}
+
+	if (ievent & FEC_IEVENT_GRA) {
+		/* Graceful stop complete */
+		if (in_be32(&fec->eth->x_cntrl) & 0x00000001) {
+			mpc5125_fec_halt(dev);
+			clrbits_be32(&fec->eth->x_cntrl, 0x00000001);;
+			mpc5125_fec_init(dev);
+		}
+	}
+
+	if (!(pRbd->status & FEC_RBD_EMPTY)) {
+		if (!(pRbd->status & FEC_RBD_ERR) &&
+						((pRbd->dlength - 4) > 14)) {
+			/* calculate payload size */
+			frame_length = pRbd->dlength;
+			if (pRbd->status & FEC_RBD_LAST)
+				frame_length -= - 4;
+
+			mpc5125_fec_debug_rx_header((void *)pRbd->dpointer,
+								pRbd->dlength);
+			mpc5125_fec_collect_frame(fec, (void *)pRbd->dpointer,
+								frame_length);
+			if (pRbd->status & FEC_RBD_LAST) {
+				/* pass it to upper layers on demand */
+				net_receive(dev, fec->frame, frame_length);
+				fec->frame_idx = 0;
+			}
+		}
+
+		/* Reset buffer descriptor as empty */
+		mpc5125_fec_rbd_clean(fec, pRbd);
+	}
+
+	/* Try to fill Buffer Descriptors */
+	out_be32(&fec->eth->r_des_active, 0x01000000);
+
+	return frame_length;
+}
+
+static int mpc5125_fec_probe(struct device_d *dev)
+{
+	struct fec_platform_data *pdata = dev->platform_data;
+	struct eth_device *edev;
+	struct mpc5125_fec_priv *fec;
+
+	edev = (struct eth_device *)xmalloc(sizeof(struct eth_device));
+	fec = (struct mpc5125_fec_priv *)xmalloc(sizeof(*fec));
+	dev->priv = edev;
+	edev->priv = fec;
+	edev->open = mpc5125_fec_open;
+	edev->init = mpc5125_fec_init;
+	edev->send = mpc5125_fec_send;
+	edev->recv = mpc5125_fec_recv;
+	edev->halt = mpc5125_fec_halt;
+	edev->get_ethaddr = mpc5125_fec_get_ethaddr;
+	edev->set_ethaddr = mpc5125_fec_set_ethaddr;
+	edev->parent = dev;
+
+	fec->eth = (struct fec5125 *)dev_request_mem_region(dev, 0);
+
+	mpc5125_fec_init_buffer_ring(fec);
+
+	fec->interface = pdata->xcv_type;
+	fec->phy_addr = pdata->phy_addr;
+
+	mpc5xxx_enable_fec_clock(dev->id);
+
+	fec->miibus.read = fec5125_miibus_read;
+	fec->miibus.write = fec5125_miibus_write;
+
+	fec->miibus.priv = fec;
+	fec->miibus.parent = dev;
+
+	/* do some FEC initialization once */
+
+	/* Clean up space FEC's MIB... */
+	memset(&fec->eth->mib1[0],  0x00, sizeof(fec->eth->mib1));
+	memset(&fec->eth->mib2[0],  0x00, sizeof(fec->eth->mib2));
+	/* disable all interrupts */
+	out_be32(&fec->eth->imask, 0x00000000);
+	/* init the status by clearing all bits */
+	out_be32(&fec->eth->ievent, 0xffffffff);
+
+	mdiobus_register(&fec->miibus);
+
+	eth_register(edev);
+	return 0;
+}
+
+static void mpc5125_fec_remove(struct device_d *dev)
+{
+	struct eth_device *edev = dev->priv;
+
+	mpc5125_fec_halt(edev);
+}
+
+static struct driver_d mpc5125_driver = {
+        .name  = "fec_mpc5125",
+        .probe = mpc5125_fec_probe,
+	.remove = mpc5125_fec_remove,
+};
+device_platform_driver(mpc5125_driver);
diff --git a/drivers/net/fec_mpc5125.h b/drivers/net/fec_mpc5125.h
new file mode 100644
index 0000000..e69de29
diff --git a/include/fec.h b/include/fec.h
index 699761a..8b6fb0e 100644
--- a/include/fec.h
+++ b/include/fec.h
@@ -25,7 +25,7 @@
 
 /*
  * Define the phy connected externally for FEC drivers
- * (like MPC52xx and i.MX27)
+ * (like MPC52xx, MPC512x and i.MX27)
  */
 struct fec_platform_data {
 	phy_interface_t	xcv_type;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
