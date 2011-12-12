Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra3wt-0006Lp-0r
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 11:21:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ra3wh-0004Ea-Hi
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 12:21:23 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1Ra3wh-0007n6-GE
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 12:21:23 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 12 Dec 2011 12:21:20 +0100
Message-Id: <1323688881-29140-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1323688881-29140-1-git-send-email-jbe@pengutronix.de>
References: <1323688881-29140-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] Add support for more recent Davicom DM9k devices
To: barebox@lists.infradead.org

This patch adds support for the more recent DM9000A and DM9000B types, and keeps
support for the older DM9000E device. As this patch is more or less a complete
re-wrote of the existing driver I add a new source file instead of fixing the
existing one. In a later patch the old driver will be removed.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/net/Kconfig  |    5 +
 drivers/net/Makefile |    1 +
 drivers/net/dm9k.c   |  784 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 790 insertions(+), 0 deletions(-)
 create mode 100644 drivers/net/dm9k.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 19e35db..6c697a9 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -51,6 +51,11 @@ config DRIVER_NET_DM9000
 	depends on HAS_DM9000
 	select MIIDEV
 
+config DRIVER_NET_DM9K
+	bool "Davicom dm9k[E|A|B] ethernet driver"
+	depends on HAS_DM9000
+	select MIIDEV
+
 config DRIVER_NET_NETX
 	bool "Hilscher Netx ethernet driver"
 	depends on HAS_NETX_ETHER
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index f02618b..d3bc7b0 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
 obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
 obj-$(CONFIG_DRIVER_NET_DM9000)		+= dm9000.o
+obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
 obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
 obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
new file mode 100644
index 0000000..0c67dbe
--- /dev/null
+++ b/drivers/net/dm9k.c
@@ -0,0 +1,784 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
+ *
+ * Davicom DM9000(E/A/B) NIC fast Ethernet driver for Barebox
+ *
+ * In some ways inspired by code
+ *
+ *   Copyright (C) 1997  Sten Wang
+ *   1997-1998 DAVICOM Semiconductor,Inc.
+ *   2003 Weilun Huang <weilun_huang@davicom.com.tw>
+ *   2003 <saschahauer@web.de>
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
+
+#undef DEBUG
+
+#include <init.h>
+#include <common.h>
+#include <driver.h>
+#include <miidev.h>
+#include <net.h>
+#include <io.h>
+#include <xfuncs.h>
+#include <dm9000.h>
+#include <errno.h>
+
+#define DM9K_ID		0x90000A46
+#define CHIPR_DM9000A	0x19
+#define CHIPR_DM9000B	0x1A
+
+#define DM9K_PKT_NONE	0x00	/* no packet received (end marker) */
+#define DM9K_PKT_RDY	0x01	/* packet ready to read */
+#define DM9K_PKT_ERR	0x02	/* chip error */
+#define DM9K_PKT_MAX	1536	/* packet max size */
+
+#define DM9K_NCR	0x00
+# define NCR_EXT_PHY	(1 << 7)
+# define NCR_WAKEEN	(1 << 6)
+# define NCR_FCOL	(1 << 4)
+# define NCR_FDX	(1 << 3)
+# define NCR_LBK	(3 << 1)
+# define NCR_RST	(1 << 0)
+
+#define DM9K_NSR	0x01
+# define NSR_SPEED	(1 << 7)
+# define NSR_LINKST	(1 << 6)
+# define NSR_WAKEST	(1 << 5)
+# define NSR_TX2END	(1 << 3)
+# define NSR_TX1END	(1 << 2)
+# define NSR_RXOV	(1 << 1)
+
+#define DM9K_TCR	0x02
+# define TCR_TJDIS	(1 << 6)
+# define TCR_EXCECM	(1 << 5)
+# define TCR_PAD_DIS2	(1 << 4)
+# define TCR_CRC_DIS2	(1 << 3)
+# define TCR_PAD_DIS1	(1 << 2)
+# define TCR_CRC_DIS1	(1 << 1)
+# define TCR_TXREQ	(1 << 0)
+
+#define DM9K_TSR1	0x03
+#define DM9K_TSR2	0x04
+# define TSR_TJTO	(1 << 7)
+# define TSR_LC		(1 << 6)
+# define TSR_NC		(1 << 5)
+# define TSR_LCOL	(1 << 4)
+# define TSR_COL	(1 << 3)
+# define TSR_EC		(1 << 2)
+
+#define DM9K_RCR	0x05
+# define RCR_WTDIS	(1 << 6)
+# define RCR_DIS_LONG	(1 << 5)
+# define RCR_DIS_CRC	(1 << 4)
+# define RCR_ALL	(1 << 3)
+# define RCR_RUNT	(1 << 2)
+# define RCR_PRMSC	(1 << 1)
+# define RCR_RXEN	(1 << 0)
+
+#define DM9K_RSR	0x06
+# define RSR_RF		(1 << 7)
+# define RSR_MF		(1 << 6)
+# define RSR_LCS	(1 << 5)
+# define RSR_RWTO	(1 << 4)
+# define RSR_PLE	(1 << 3)
+# define RSR_AE		(1 << 2)
+# define RSR_CE		(1 << 1)
+# define RSR_FOE	(1 << 0)
+# define RSR_ERR_MASK (RSR_FOE | RSR_CE | RSR_AE | RSR_PLE | RSR_RWTO | RSR_LCS | RSR_RF)
+
+#define DM9K_ROCR	0x07
+#define DM9K_BPTR	0x08
+#define DM9K_FCTR	0x09
+#define DM9K_FCR	0x0A
+#define DM9K_EPCR	0x0B
+#define DM9K_EPAR	0x0C
+#define DM9K_EPDRL	0x0D
+#define DM9K_EPDRH	0x0E
+#define DM9K_WCR	0x0F
+
+#define DM9K_PAR	0x10
+#define DM9K_MAR	0x16
+
+#define DM9K_GPCR	0x1e
+#define DM9K_GPR	0x1f
+#define DM9K_TRPAL	0x22
+#define DM9K_TRPAH	0x23
+#define DM9K_RWPAL	0x24
+#define DM9K_RWPAH	0x25
+
+#define DM9K_VIDL	0x28
+#define DM9K_VIDH	0x29
+#define DM9K_PIDL	0x2A
+#define DM9K_PIDH	0x2B
+
+#define DM9K_CHIPR	0x2C
+#define DM9K_SMCR	0x2F
+
+#define DM9K_PHY	0x40	/* PHY address 0x01 */
+
+#define DM9K_MRCMDX	0xF0
+#define DM9K_MRCMD	0xF2
+#define DM9K_MRRL	0xF4
+#define DM9K_MRRH	0xF5
+#define DM9K_MWCMDX	0xF6
+#define DM9K_MWCMD	0xF8
+#define DM9K_MWRL	0xFA
+#define DM9K_MWRH	0xFB
+#define DM9K_TXPLL	0xFC
+#define DM9K_TXPLH	0xFD
+
+#define DM9K_ISR	0xFE
+# define ISR_IOM0	(1 << 7) /* 0: 16 bit, 1: 8 bit*/
+# define ISR_LNKCHG	(1 << 5) /* link status change */
+# define ISR_UDRUN	(1 << 4) /* transmitt underrun */
+# define ISR_ROO	(1 << 3) /* receive overflow counter overflow */
+# define ISR_ROS	(1 << 2) /* receive overflow */
+# define ISR_PT		(1 << 1) /* packet transmitted */
+# define ISR_PR		(1 << 0) /* packet received */
+# define ISR_CLEAR_MASK (ISR_PR | ISR_PT | ISR_ROS | ISR_ROO | ISR_UDRUN | ISR_LNKCHG)
+
+#define DM9K_IMR	0xFF
+# define IMR_PAR	(1 << 7)
+# define IMR_ROOM	(1 << 3)
+# define IMR_ROM	(1 << 2)
+# define IMR_PTM	(1 << 1)
+# define IMR_PRM	(1 << 0)
+
+#define FCTR_HWOT(ot)	(( ot & 0xf ) << 4 )
+#define FCTR_LWOT(ot)	( ot & 0xf )
+
+struct dm9k {
+	void __iomem *iobase;
+	void __iomem *iodata;
+	struct mii_device miidev;
+	int buswidth;
+	int srom;
+	uint8_t pckt[2048];
+};
+
+/* ------------------ register access functions -------------------------- */
+
+static uint8_t dm9k_ior(struct dm9k *priv, int reg)
+{
+	writeb(reg, priv->iobase);
+	return readb(priv->iodata);
+}
+
+static void dm9k_iow(struct dm9k *priv, int reg, uint8_t value)
+{
+	writeb(reg, priv->iobase);
+	writeb(value, priv->iodata);
+}
+
+/* ------------------- data move functions ---------------------------- */
+
+static void dm9k_wd_8(void __iomem *port, const void *src, int length)
+{
+	const uint8_t *from = (const uint8_t *)src;
+
+	while (length--)
+		writeb(*from++, port);
+}
+
+static void dm9k_rd_8(void __iomem *port, void *dst, unsigned length)
+{
+	uint8_t *to = (uint8_t *)dst;
+
+	while (length--)
+		*to++ = readb(port);
+}
+
+static void dm9k_dump_8(void __iomem *port, unsigned length)
+{
+	while (length--)
+		readb(port);
+}
+
+static unsigned dm9k_read_packet_status_8(void __iomem *port, unsigned *status)
+{
+	uint16_t st, le;
+
+	dm9k_rd_8(port, &st, sizeof(st));
+	dm9k_rd_8(port, &le, sizeof(le));
+
+	*status = st >> 8;
+	return le;
+}
+
+static void dm9k_wd_16(void __iomem *port, const void *src, int length)
+{
+	const uint16_t *from = (const uint16_t *)src;
+
+	length += 1;
+	length /= 2;
+	while (length--)
+		writew(*from++, port);
+}
+
+static void dm9k_rd_16(void __iomem *port, void *dst, unsigned length)
+{
+	uint16_t *to = (uint16_t *)dst;
+
+	length += 1;
+	length >>= 1;
+	while (length--)
+		*to++ = readw(port);
+}
+
+static void dm9k_dump_16(void __iomem *port, unsigned length)
+{
+	length += 1;
+	length >>= 1;
+	while (length--)
+		readw(port);
+}
+
+static unsigned dm9k_read_packet_status_16(void __iomem *port, unsigned *status)
+{
+	*status = readw(port) >> 8;
+	return le16_to_cpu(readw(port));
+}
+
+static void dm9k_wd_32(void __iomem *port, const void *src, int length)
+{
+	const uint32_t *from = (const uint32_t *)src;
+
+	length += 3;
+	length /= 4;
+	while (length--)
+		writel(*from++, port);
+}
+
+static void dm9k_rd_32(void __iomem *port, void *dst, unsigned length)
+{
+	uint32_t *to = (uint32_t *)dst;
+
+	length += 3;
+	length >>= 2;
+	while (length--)
+		*to++ = readl(port);
+}
+
+static void dm9k_dump_32(void __iomem *port, unsigned length)
+{
+	length += 3;
+	length >>= 2;
+	while (length--)
+		readl(port);
+}
+
+static unsigned dm9k_read_packet_status_32(void __iomem *port, unsigned *status)
+{
+	uint32_t tmp = readl(port);
+
+	*status = (tmp >> 8) & 0xff;
+	return tmp >> 16;
+}
+
+static unsigned dm9k_read_packet_status(int b_width, void __iomem *port, unsigned *status)
+{
+	unsigned rc;
+
+	switch (b_width) {
+	case IORESOURCE_MEM_8BIT:
+		rc = dm9k_read_packet_status_8(port, status);
+		break;
+	case IORESOURCE_MEM_16BIT:
+		rc = dm9k_read_packet_status_16(port, status);
+		break;
+	case IORESOURCE_MEM_32BIT:
+		rc = dm9k_read_packet_status_32(port, status);
+		break;
+	}
+
+	return rc;
+}
+
+static void dm9k_dump(int b_width, void __iomem *port, unsigned length)
+{
+	switch (b_width) {
+	case IORESOURCE_MEM_8BIT:
+		dm9k_dump_8(port, length);
+		break;
+	case IORESOURCE_MEM_16BIT:
+		dm9k_dump_16(port, length);
+		break;
+	case IORESOURCE_MEM_32BIT:
+		dm9k_dump_32(port, length);
+		break;
+	}
+}
+
+static void dm9k_rd(int b_width, void __iomem *port, void *dst, unsigned length)
+{
+	switch (b_width) {
+	case IORESOURCE_MEM_8BIT:
+		dm9k_rd_8(port, dst, length);
+		break;
+	case IORESOURCE_MEM_16BIT:
+		dm9k_rd_16(port, dst, length);
+		break;
+	case IORESOURCE_MEM_32BIT:
+		dm9k_rd_32(port, dst, length);
+		break;
+	}
+}
+
+static void dm9k_wd(int b_width, void __iomem *port, const void *src, int length)
+{
+	switch (b_width) {
+	case IORESOURCE_MEM_8BIT:
+		dm9k_wd_8(port, src, length);
+		break;
+	case IORESOURCE_MEM_16BIT:
+		dm9k_wd_16(port, src, length);
+		break;
+	case IORESOURCE_MEM_32BIT:
+		dm9k_wd_32(port, src, length);
+		break;
+	}
+}
+
+/* ----------------- end of data move functions -------------------------- */
+
+static int dm9k_phy_read(struct mii_device *mdev, int addr, int reg)
+{
+	unsigned val;
+	struct eth_device *edev = mdev->edev;
+	struct dm9k *priv = edev->priv;
+
+	/* Fill the phyxcer register into REG_0C */
+	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
+	dm9k_iow(priv, DM9K_EPCR, 0xc);	/* Issue phyxcer read command */
+	udelay(100);			/* Wait read complete */
+	dm9k_iow(priv, DM9K_EPCR, 0x0);	/* Clear phyxcer read command */
+	val = dm9k_ior(priv, DM9K_EPDRH);
+	val <<= 8;
+	val |= dm9k_ior(priv, DM9K_EPDRL);
+
+	/* The read data keeps on REG_0D & REG_0E */
+	debug("phy_read(%d): %d\n", reg, val);
+	return val;
+}
+
+static int dm9k_phy_write(struct mii_device *mdev, int addr, int reg, int val)
+{
+	struct eth_device *edev = mdev->edev;
+	struct dm9k *priv = edev->priv;
+
+	/* Fill the phyxcer register into REG_0C */
+	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
+
+	/* Fill the written data into REG_0D & REG_0E */
+	dm9k_iow(priv, DM9K_EPDRL, val);
+	dm9k_iow(priv, DM9K_EPDRH, val >> 8);
+	dm9k_iow(priv, DM9K_EPCR, 0xa);	/* Issue phyxcer write command */
+	udelay(500);			/* Wait write complete */
+	dm9k_iow(priv, DM9K_EPCR, 0x0);	/* Clear phyxcer write command */
+
+	pr_debug("phy_write(reg:%d, value:%d)\n", reg, val);
+
+	return 0;
+}
+
+static int dm9k_check_id(struct dm9k *priv)
+{
+	u32 id;
+	char c;
+
+	id = dm9k_ior(priv, DM9K_VIDL);
+	id |= dm9k_ior(priv, DM9K_VIDH) << 8;
+	id |= dm9k_ior(priv, DM9K_PIDL) << 16;
+	id |= dm9k_ior(priv, DM9K_PIDH) << 24;
+
+	if (id != DM9K_ID) {
+		pr_err("dm9000 not found at 0x%p id: 0x%08x\n", priv->iobase, id);
+		return -ENODEV;
+	}
+
+	id = dm9k_ior(priv, DM9K_CHIPR);
+	pr_debug("dm9000 revision 0x%02x\n", id);
+
+	switch (id) {
+	case CHIPR_DM9000A:
+		c = 'A';
+		break;
+	case CHIPR_DM9000B:
+		c = 'B';
+		break;
+	default:
+		c = 'E';
+	}
+	pr_info("Found DM9000%c at i/o: 0x%p\n", c, priv->iobase);
+
+	return 0;
+}
+
+static void dm9k_enable(struct dm9k *priv)
+{
+	/* only intern phy supported by now */
+	dm9k_iow(priv, DM9K_NCR, 0x00);
+	/* TX Polling clear */
+	dm9k_iow(priv, DM9K_TCR, 0x00);
+	/* Less 3Kb, 200us */
+	dm9k_iow(priv, DM9K_BPTR, 0x3f);
+	/* Flow Control : High/Low Water */
+	dm9k_iow(priv, DM9K_FCTR, FCTR_HWOT(3) | FCTR_LWOT(8));
+	/* SH FIXME: This looks strange! Flow Control */
+	dm9k_iow(priv, DM9K_FCR, 0x00);
+	/* Special Mode */
+	dm9k_iow(priv, DM9K_SMCR, 0x00);
+	/* clear TX status */
+	dm9k_iow(priv, DM9K_NSR, NSR_WAKEST | NSR_TX2END | NSR_TX1END);
+	/* Clear interrupt status */
+	dm9k_iow(priv, DM9K_IMR, IMR_PAR);
+	dm9k_iow(priv, DM9K_ISR, ISR_CLEAR_MASK);
+
+	/* Activate DM9000 */
+	dm9k_iow(priv, DM9K_GPCR, 0x01); /* Let GPIO0 output */
+	dm9k_iow(priv, DM9K_GPR, 0x00);	/* Enable PHY */
+	/* RX enable */
+	dm9k_iow(priv, DM9K_RCR, RCR_DIS_LONG | RCR_DIS_CRC | RCR_RXEN);
+	/* Enable TX/RX interrupt mask */
+	dm9k_iow(priv, DM9K_IMR, IMR_PAR | IMR_PRM | IMR_PTM);
+}
+
+static void dm9k_reset(struct dm9k *priv)
+{
+	pr_debug("%s\n", __func__);
+	dm9k_iow(priv, DM9K_NCR, NCR_RST);
+	udelay(1000);		/* delay 1ms */
+}
+
+static int dm9k_eth_open(struct eth_device *edev)
+{
+	struct dm9k *priv = (struct dm9k *)edev->priv;
+
+	miidev_wait_aneg(&priv->miidev);
+	miidev_print_status(&priv->miidev);
+	return 0;
+}
+
+static void dm9k_write_length(struct dm9k *priv, unsigned length)
+{
+	dm9k_iow(priv, DM9K_TXPLL, length);
+	dm9k_iow(priv, DM9K_TXPLH, length >> 8);
+}
+
+static int dm9k_wait_for_trans_end(struct dm9k *priv)
+{
+	static const uint64_t toffs = 5 * SECOND;	/* FIXME too long */
+	uint8_t status;
+	uint64_t start = get_time_ns();
+
+	do {
+		status = dm9k_ior(priv, DM9K_NSR);
+		if (status & (NSR_TX1END | NSR_TX2END)) {
+			pr_debug("transmitt done\n");
+			return 0;
+		}
+		status = dm9k_ior(priv, DM9K_ISR);
+		if (status & IMR_PTM) {
+			/* Clear Tx bit in ISR */
+			dm9k_iow(priv, DM9K_ISR, IMR_PTM);
+			pr_debug("transmitt done\n");
+			return 0;
+		}
+	} while (!is_timeout(start, toffs));
+
+	return -ETIMEDOUT;
+}
+
+static int dm9k_eth_send(struct eth_device *edev, void *packet, int length)
+{
+	struct dm9k *priv = (struct dm9k *)edev->priv;
+
+	pr_debug("%s: %d bytes\n", __func__, length);
+
+	/* arm the Tx bit */
+	dm9k_iow(priv, DM9K_ISR, IMR_PTM);
+
+	/* Prepare for TX-data */
+	writeb(DM9K_MWCMD, priv->iobase);
+
+	/* Move the packet into the DM9k's TX RAM */
+	dm9k_wd(priv->buswidth, priv->iodata, packet, length);
+
+	/* Set TX length of the packet */
+	dm9k_write_length(priv, length);
+
+	/* Issue TX polling command */
+	dm9k_iow(priv, DM9K_TCR, TCR_TXREQ); /* Cleared after TX complete */
+
+	/* wait for end of transmission */
+	return dm9k_wait_for_trans_end(priv);
+}
+
+static int dm9k_check_for_rx_packet(struct dm9k *priv)
+{
+	uint8_t status;
+
+	status = dm9k_ior(priv, DM9K_ISR);
+	if (!(status & ISR_PR))
+		return 0;	/* no packet */
+
+	pr_debug("Packet present\n");
+	dm9k_iow(priv, DM9K_ISR, ISR_PR); /* clear PR status latched in bit 0 */
+	return 1; /* packet present */
+}
+
+static int dm9k_validate_entry(struct dm9k *priv)
+{
+	uint8_t p_stat;
+	/*
+	 * setup read pointer to current packet
+	 * but without address increment
+	 */
+	dm9k_ior(priv, DM9K_MRCMDX);
+
+	/* read the entry's status according to the app note */
+	p_stat = readb(priv->iodata) & 0x03;
+	pr_debug("%s packet status %02X\n", __func__, p_stat);
+
+	switch (p_stat) {
+	case DM9K_PKT_NONE: /* there is no packet (or the last in the chain) */
+		return 0;
+
+	case DM9K_PKT_ERR: /* chip in invalid state. Needs a software reset */
+		pr_debug("Confused chip.\n");
+		dm9k_iow(priv, DM9K_RCR, 0x00);	/* Stop Device */
+		dm9k_iow(priv, DM9K_ISR, 0x80);	/* Stop INT request */
+		dm9k_reset(priv);
+		dm9k_enable(priv);
+		return 0;
+	}
+
+	return 1; /* entry is valid */
+}
+
+static int dm9k_eth_rx(struct eth_device *edev)
+{
+	struct dm9k *priv = (struct dm9k *)edev->priv;
+	unsigned rx_stat = 0, rx_len = 0;
+	bool p_valid;
+
+	if (dm9k_check_for_rx_packet(priv) == 0)
+		return 0;	/* no data present */
+
+	do {
+		if (!dm9k_validate_entry(priv))
+			return 0;
+
+		/* assume this packet is valid */
+		p_valid = true;
+
+		 /* read with automatic address increment now */
+		writeb(DM9K_MRCMD, priv->iobase);
+		rx_len = dm9k_read_packet_status(priv->buswidth, priv->iodata, &rx_stat);
+		if (rx_len < 0x40) {
+			pr_debug("Packet too short (%u bytes)\n", rx_len);
+			p_valid = false;
+		}
+
+		/* validate packet */
+		if (rx_stat & RSR_ERR_MASK) {
+			if (rx_stat & RSR_FOE)
+				pr_warn("rx fifo overflow error\n");
+			if (rx_stat & RSR_CE)
+				pr_warn("rx crc error\n");
+			if (rx_stat & RSR_AE)
+				pr_warn("rx Alignment Error error\n");
+			if (rx_stat & RSR_PLE)
+				pr_warn("rx Physical Layer Error error\n");
+			if (rx_stat & RSR_RWTO)
+				pr_warn("rx Receive Watchdog Time Out error\n");
+			if (rx_stat & RSR_LCS)
+				pr_warn("rx Late Collision Seen error\n");
+			if (rx_stat & RSR_RF)
+				pr_warn("rx length error (runt frame)\n");
+			p_valid = false;
+		}
+
+		if (rx_len > DM9K_PKT_MAX) {
+			pr_warn("rx length too big\n");
+			/* discard packet */
+			dm9k_dump(priv->buswidth, priv->iodata, rx_len);
+			dm9k_reset(priv);
+			dm9k_enable(priv);
+			return 0;
+		}
+
+		if (p_valid == true) {
+			pr_debug("Receiving packet\n");
+			dm9k_rd(priv->buswidth, priv->iodata, priv->pckt, rx_len);
+			pr_debug("passing %u bytes packet to upper layer\n", rx_len);
+			net_receive(priv->pckt, rx_len);
+		} else {
+			pr_debug("Discarding packet\n");
+			dm9k_dump(priv->buswidth, priv->iodata, rx_len); /* discard packet */
+		}
+	} while (1);
+
+	return 0;
+}
+
+
+static void dm9k_eth_halt(struct eth_device *edev)
+{
+	pr_debug("eth_halt\n");
+#if 0
+	phy_write(0, 0x8000);	/* PHY RESET */
+	dm9k_iow(DM9K_GPR, 0x01);	/* Power-Down PHY */
+	dm9k_iow(DM9K_IMR, 0x80);	/* Disable all interrupt */
+	dm9k_iow(DM9K_RCR, 0x00);	/* Disable RX */
+#endif
+}
+
+static u16 read_srom_word(struct dm9k *priv, int offset)
+{
+	dm9k_iow(priv, DM9K_EPAR, offset);
+	dm9k_iow(priv, DM9K_EPCR, 0x4);
+	udelay(200);
+	dm9k_iow(priv, DM9K_EPCR, 0x0);
+	return (dm9k_ior(priv, DM9K_EPDRL) + (dm9k_ior(priv, DM9K_EPDRH) << 8));
+}
+
+static int dm9k_get_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct dm9k *priv = (struct dm9k *)edev->priv;
+	int i, oft;
+
+	if (priv->srom) {
+		for (i = 0; i < 3; i++)
+			((u16 *) adr)[i] = read_srom_word(priv, i);
+	} else {
+		for (i = 0, oft = DM9K_PAR; i < 6; i++, oft++)
+			adr[i] = dm9k_ior(priv, oft);
+	}
+
+	return 0;
+}
+
+static int dm9k_set_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct dm9k *priv = (struct dm9k *)edev->priv;
+	int i, oft;
+
+	for (i = 0, oft = DM9K_PAR; i < 6; i++, oft++)
+		dm9k_iow(priv, oft, adr[i]);
+	for (i = 0, oft = DM9K_MAR; i < 8; i++, oft++)
+		dm9k_iow(priv, oft, 0xff);
+
+	return 0;
+}
+
+static int dm9k_init_dev(struct eth_device *edev)
+{
+	struct dm9k *priv = (struct dm9k *)edev->priv;
+
+	miidev_restart_aneg(&priv->miidev);
+	return 0;
+}
+
+static int dm9k_probe(struct device_d *dev)
+{
+	unsigned io_mode;
+	struct eth_device *edev;
+	struct dm9k *priv;
+	struct dm9000_platform_data *pdata;
+
+	if (!dev->platform_data) {
+		pr_err("DM9k: no platform_data\n");
+		return -ENODEV;
+	}
+
+	if (dev->num_resources < 2) {
+		pr_err("DM9k: need 2 resources base and data");
+		return -ENODEV;
+	}
+
+	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct dm9k));
+	dev->type_data = edev;
+	edev->priv = (struct dm9k *)(edev + 1);
+
+	pdata = dev->platform_data;
+
+	priv = edev->priv;
+
+	priv->buswidth = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	priv->iodata = dev_request_mem_region(dev, 1);
+	priv->iobase = dev_request_mem_region(dev, 0);
+	priv->srom = pdata->srom;
+
+	edev->init = dm9k_init_dev;
+	edev->open = dm9k_eth_open;
+	edev->send = dm9k_eth_send;
+	edev->recv = dm9k_eth_rx;
+	edev->halt = dm9k_eth_halt;
+	edev->set_ethaddr = dm9k_set_ethaddr;
+	edev->get_ethaddr = dm9k_get_ethaddr;
+	edev->parent = dev;
+
+	/* RESET device */
+	dm9k_reset(priv);
+	if(dm9k_check_id(priv))
+		return -ENODEV;
+
+	io_mode = dm9k_ior(priv, DM9K_ISR) >> 6;
+	switch (io_mode) {
+	case 0:
+		pr_debug("DM9k: 16 bit data bus\n");
+		if (priv->buswidth != IORESOURCE_MEM_16BIT)
+			pr_err("DM9k: Wrong databus width defined at compile time\n");
+		break;
+	case 1:
+		pr_debug("DM9k: 32 bit data bus\n");
+		if (priv->buswidth != IORESOURCE_MEM_32BIT)
+			pr_err("DM9k: Wrong databus width defined at compile time\n");
+		break;
+	case 2:
+		pr_debug("DM9k: 8 bit data bus\n");
+		if (priv->buswidth != IORESOURCE_MEM_32BIT)
+			pr_err("DM9k: Wrong databus width defined at compile time\n");
+		break;
+	default:
+		pr_info("DM9K: Unknown data width\n");
+	}
+
+	dm9k_enable(priv);
+
+	priv->miidev.read = dm9k_phy_read;
+	priv->miidev.write = dm9k_phy_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
+	priv->miidev.parent = dev;
+
+	mii_register(&priv->miidev);
+	eth_register(edev);
+
+	return 0;
+}
+
+static struct driver_d dm9k_driver = {
+	.name  = "dm9000",
+	.probe = dm9k_probe,
+};
+
+static int dm9k_init(void)
+{
+	register_driver(&dm9k_driver);
+	return 0;
+}
+
+device_initcall(dm9k_init);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
