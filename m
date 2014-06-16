Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WwRYF-00035T-2F
 for barebox@lists.infradead.org; Mon, 16 Jun 2014 07:42:02 +0000
Received: by mail-lb0-f176.google.com with SMTP id w7so904711lbi.35
 for <barebox@lists.infradead.org>; Mon, 16 Jun 2014 00:41:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 16 Jun 2014 11:41:20 +0400
Message-Id: <1402904480-6765-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1402904480-6765-1-git-send-email-antonynpavlov@gmail.com>
References: <1402904480-6765-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 2/2] [WIP] net: add initial ENC28J60 support
To: barebox@lists.infradead.org

ENC28J60 is a stand-alone Ethernet controller with SPI Interface.
and integrated 10BASE-T PHY.

This driver was ported from linux-3.15.

The most notable barebox driver version changes:
  * add device tree support;
  * use IF_ENABLED for checking CONFIG_ENC28J60_WRITEVERIFY;
  * add mii_bus support;
  * rename {nolock,locked}_regw_{read,write}() to enc28j60_*_{read,write}().

TODOs:
  * receive only one packet per enc28j60_eth_rx() call.
  * fix empty enc28j60_init_dev;
  * add parameter for changing debug loglevel on-the-run;
  * ENC28J60 supports only SPI mode 0 so we have to submit
    this information to the SPI controller explicitly.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Changes since v1:
  * drop unused macros;
  * use random_ether_addr();
  * drop 'select CRC32' in Kconfig;
  * drop MAC address generation in driver's code;
  * rename {nolock,locked}_regw_{read,write}() to enc28j60_*_{read,write}();
  * add mii_bus support.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/Kconfig       |   14 +
 drivers/net/Makefile      |    1 +
 drivers/net/enc28j60.c    | 1057 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/enc28j60_hw.h |  307 +++++++++++++
 include/linux/netdevice.h |   53 +++
 5 files changed, 1432 insertions(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 7a0d5e1..5daf7ff 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -73,6 +73,20 @@ config DRIVER_NET_DM9K
 	depends on HAS_DM9000
 	select PHYLIB
 
+config DRIVER_NET_ENC28J60
+	bool "ENC28J60 support"
+	depends on SPI
+	select PHYLIB
+	---help---
+	  Support for the Microchip EN28J60 ethernet chip.
+
+config DRIVER_NET_ENC28J60_WRITEVERIFY
+	bool "Enable write verify"
+	depends on DRIVER_NET_ENC28J60
+	---help---
+	  Enable the verify after the buffer write useful for debugging purpose.
+	  If unsure, say N.
+
 config DRIVER_NET_EP93XX
 	bool "EP93xx Ethernet driver"
 	depends on ARCH_EP93XX
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 65f0d8b..8acd2a6 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
+obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
 obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
new file mode 100644
index 0000000..99eb608
--- /dev/null
+++ b/drivers/net/enc28j60.c
@@ -0,0 +1,1057 @@
+/*
+ * Microchip ENC28J60 ethernet driver (MAC + PHY)
+ *
+ * This code was ported from linux-3.15 kernel by Antony Pavlov.
+ *
+ * Copyright (C) 2007 Eurek srl
+ * Author: Claudio Lanconelli <lanconelli.claudio@eptar.com>
+ * based on enc28j60.c written by David Anders for 2.4 kernel version
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <malloc.h>
+#include <init.h>
+#include <driver.h>
+#include <spi/spi.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <linux/netdevice.h>
+
+#include "enc28j60_hw.h"
+
+#define DRV_NAME	"enc28j60"
+
+#define SPI_OPLEN	1
+
+#define ENC28J60_MSG_DEFAULT	\
+	(NETIF_MSG_PROBE | NETIF_MSG_IFUP | NETIF_MSG_IFDOWN | NETIF_MSG_LINK)
+
+/* Buffer size required for the largest SPI transfer (i.e., reading a
+ * frame). */
+#define SPI_TRANSFER_BUF_LEN	(4 + MAX_FRAMELEN)
+
+/* Driver local data */
+struct enc28j60_net {
+	struct eth_device edev;
+	struct spi_device *spi;
+	u8 bank;		/* current register bank selected */
+	u16 next_pk_ptr;	/* next packet pointer within FIFO */
+	u16 max_pk_counter;	/* statistics: max packet counter */
+	u16 tx_retry_count;
+	bool hw_enable;
+	bool full_duplex;
+	int rxfilter;
+	u32 msg_enable;
+	u8 spi_transfer_buf[SPI_TRANSFER_BUF_LEN];
+	/* store MAC address here while hardware is in the reset state */
+	u8 hwaddr[ETH_ALEN];
+	struct mii_bus miibus;
+};
+
+/*
+ * SPI read buffer
+ * wait for the SPI transfer and copy received data to destination
+ */
+static int
+spi_read_buf(struct enc28j60_net *priv, int len, u8 *data)
+{
+	u8 *rx_buf = priv->spi_transfer_buf + 4;
+	u8 *tx_buf = priv->spi_transfer_buf;
+	struct spi_transfer t = {
+		.tx_buf = tx_buf,
+		.rx_buf = rx_buf,
+		.len = SPI_OPLEN + len,
+	};
+	struct spi_message msg;
+	int ret;
+
+	tx_buf[0] = ENC28J60_READ_BUF_MEM;
+	tx_buf[1] = tx_buf[2] = tx_buf[3] = 0;	/* don't care */
+
+	spi_message_init(&msg);
+	spi_message_add_tail(&t, &msg);
+	ret = spi_sync(priv->spi, &msg);
+	if (ret == 0) {
+		memcpy(data, &rx_buf[SPI_OPLEN], len);
+		ret = msg.status;
+	}
+	if (ret && netif_msg_drv(priv))
+		dev_dbg(&priv->edev.dev,
+			"%s() failed: ret = %d\n", __func__, ret);
+
+	return ret;
+}
+
+/*
+ * SPI write buffer
+ */
+static int spi_write_buf(struct enc28j60_net *priv, int len,
+			 const u8 *data)
+{
+	int ret;
+
+	if (len > SPI_TRANSFER_BUF_LEN - 1 || len <= 0)
+		ret = -EINVAL;
+	else {
+		priv->spi_transfer_buf[0] = ENC28J60_WRITE_BUF_MEM;
+		memcpy(&priv->spi_transfer_buf[1], data, len);
+		ret = spi_write(priv->spi, priv->spi_transfer_buf, len + 1);
+		if (ret && netif_msg_drv(priv))
+			dev_dbg(&priv->edev.dev,
+				"%s() failed: ret = %d\n", __func__, ret);
+	}
+	return ret;
+}
+
+/*
+ * basic SPI read operation
+ */
+static u8 spi_read_op(struct enc28j60_net *priv, u8 op,
+			   u8 addr)
+{
+	u8 tx_buf[2];
+	u8 rx_buf[4];
+	u8 val = 0;
+	int ret;
+	int slen = SPI_OPLEN;
+
+	/* do dummy read if needed */
+	if (addr & SPRD_MASK)
+		slen++;
+
+	tx_buf[0] = op | (addr & ADDR_MASK);
+	ret = spi_write_then_read(priv->spi, tx_buf, 1, rx_buf, slen);
+	if (ret)
+		dev_dbg(&priv->edev.dev,
+			"%s() failed: ret = %d\n", __func__, ret);
+	else
+		val = rx_buf[slen - 1];
+
+	return val;
+}
+
+/*
+ * basic SPI write operation
+ */
+static int spi_write_op(struct enc28j60_net *priv, u8 op,
+			u8 addr, u8 val)
+{
+	int ret;
+
+	priv->spi_transfer_buf[0] = op | (addr & ADDR_MASK);
+	priv->spi_transfer_buf[1] = val;
+	ret = spi_write(priv->spi, priv->spi_transfer_buf, 2);
+	if (ret && netif_msg_drv(priv))
+		dev_dbg(&priv->edev.dev,
+			"%s() failed: ret = %d\n", __func__, ret);
+
+	return ret;
+}
+
+static void enc28j60_soft_reset(struct enc28j60_net *priv)
+{
+	if (netif_msg_hw(priv))
+		dev_dbg(&priv->edev.dev, "%s() enter\n", __func__);
+
+	spi_write_op(priv, ENC28J60_SOFT_RESET, 0, ENC28J60_SOFT_RESET);
+	/* Errata workaround #1, CLKRDY check is unreliable,
+	 * delay at least 1 mS instead */
+	udelay(2000);
+}
+
+/*
+ * select the current register bank if necessary
+ */
+static void enc28j60_set_bank(struct enc28j60_net *priv, u8 addr)
+{
+	u8 b = (addr & BANK_MASK) >> 5;
+
+	/* These registers (EIE, EIR, ESTAT, ECON2, ECON1)
+	 * are present in all banks, no need to switch bank
+	 */
+	if (addr >= EIE && addr <= ECON1)
+		return;
+
+	/* Clear or set each bank selection bit as needed */
+	if ((b & ECON1_BSEL0) != (priv->bank & ECON1_BSEL0)) {
+		if (b & ECON1_BSEL0)
+			spi_write_op(priv, ENC28J60_BIT_FIELD_SET, ECON1,
+					ECON1_BSEL0);
+		else
+			spi_write_op(priv, ENC28J60_BIT_FIELD_CLR, ECON1,
+					ECON1_BSEL0);
+	}
+	if ((b & ECON1_BSEL1) != (priv->bank & ECON1_BSEL1)) {
+		if (b & ECON1_BSEL1)
+			spi_write_op(priv, ENC28J60_BIT_FIELD_SET, ECON1,
+					ECON1_BSEL1);
+		else
+			spi_write_op(priv, ENC28J60_BIT_FIELD_CLR, ECON1,
+					ECON1_BSEL1);
+	}
+	priv->bank = b;
+}
+
+/*
+ * Register access routines through the SPI bus.
+ * Some registers can be accessed through the bit field clear and
+ * bit field set to avoid a read modify write cycle.
+ */
+
+/*
+ * Register bit field Set
+ */
+static void enc28j60_reg_bfset(struct enc28j60_net *priv,
+				      u8 addr, u8 mask)
+{
+	enc28j60_set_bank(priv, addr);
+	spi_write_op(priv, ENC28J60_BIT_FIELD_SET, addr, mask);
+}
+
+/*
+ * Register bit field Clear
+ */
+static void enc28j60_reg_bfclr(struct enc28j60_net *priv,
+				      u8 addr, u8 mask)
+{
+	enc28j60_set_bank(priv, addr);
+	spi_write_op(priv, ENC28J60_BIT_FIELD_CLR, addr, mask);
+}
+
+/*
+ * Register byte read
+ */
+static int enc28j60_regb_read(struct enc28j60_net *priv,
+				     u8 address)
+{
+	enc28j60_set_bank(priv, address);
+	return spi_read_op(priv, ENC28J60_READ_CTRL_REG, address);
+}
+
+/*
+ * Register word read
+ */
+static int enc28j60_regw_read(struct enc28j60_net *priv,
+				     u8 address)
+{
+	int rl, rh;
+
+	enc28j60_set_bank(priv, address);
+	rl = spi_read_op(priv, ENC28J60_READ_CTRL_REG, address);
+	rh = spi_read_op(priv, ENC28J60_READ_CTRL_REG, address + 1);
+
+	return (rh << 8) | rl;
+}
+
+/*
+ * Register byte write
+ */
+static void enc28j60_regb_write(struct enc28j60_net *priv,
+				       u8 address, u8 data)
+{
+	enc28j60_set_bank(priv, address);
+	spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, address, data);
+}
+
+/*
+ * Register word write
+ */
+static void enc28j60_regw_write(struct enc28j60_net *priv,
+				       u8 address, u16 data)
+{
+	enc28j60_set_bank(priv, address);
+	spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, address, (u8) data);
+	spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, address + 1,
+		     (u8) (data >> 8));
+}
+
+/*
+ * Buffer memory read
+ * Select the starting address and execute a SPI buffer read
+ */
+static void enc28j60_mem_read(struct enc28j60_net *priv,
+				     u16 addr, int len, u8 *data)
+{
+	enc28j60_regw_write(priv, ERDPTL, addr);
+
+	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY) && netif_msg_drv(priv)) {
+		u16 reg;
+		reg = enc28j60_regw_read(priv, ERDPTL);
+		if (reg != addr)
+			dev_dbg(&priv->edev.dev, "%s() error writing ERDPT "
+				"(0x%04x - 0x%04x)\n", __func__, reg, addr);
+	}
+
+	spi_read_buf(priv, len, data);
+}
+
+/*
+ * Write packet to enc28j60 TX buffer memory
+ */
+static void
+enc28j60_packet_write(struct enc28j60_net *priv, int len, const u8 *data)
+{
+	/* Set the write pointer to start of transmit buffer area */
+	enc28j60_regw_write(priv, EWRPTL, TXSTART_INIT);
+
+	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY) && netif_msg_drv(priv)) {
+		u16 reg;
+		reg = enc28j60_regw_read(priv, EWRPTL);
+		if (reg != TXSTART_INIT)
+			dev_dbg(&priv->edev.dev,
+				"%s() ERWPT:0x%04x != 0x%04x\n",
+				__func__, reg, TXSTART_INIT);
+	}
+	/* Set the TXND pointer to correspond to the packet size given */
+	enc28j60_regw_write(priv, ETXNDL, TXSTART_INIT + len);
+	/* write per-packet control byte */
+	spi_write_op(priv, ENC28J60_WRITE_BUF_MEM, 0, 0x00);
+	if (netif_msg_hw(priv))
+		dev_dbg(&priv->edev.dev,
+			"%s() after control byte ERWPT:0x%04x\n",
+			__func__, enc28j60_regw_read(priv, EWRPTL));
+	/* copy the packet into the transmit buffer */
+	spi_write_buf(priv, len, data);
+	if (netif_msg_hw(priv))
+		dev_dbg(&priv->edev.dev,
+			"%s() after write packet ERWPT:0x%04x, len=%d\n",
+			 __func__, enc28j60_regw_read(priv, EWRPTL), len);
+}
+
+static int poll_ready(struct enc28j60_net *priv, u8 reg, u8 mask, u8 val)
+{
+	if ((enc28j60_regb_read(priv, reg) & mask) == val) {
+		return 0;
+	}
+
+	/* 20 msec timeout read */
+	mdelay(20);
+
+	if ((enc28j60_regb_read(priv, reg) & mask) != val) {
+		dev_dbg(&priv->spi->dev,
+			"reg %02x ready timeout!\n", reg);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+/*
+ * Wait until the PHY operation is complete.
+ */
+static int wait_phy_ready(struct enc28j60_net *priv)
+{
+	return poll_ready(priv, MISTAT, MISTAT_BUSY, 0) ? 0 : 1;
+}
+
+/*
+ * PHY register read
+ * PHY registers are not accessed directly, but through the MII
+ */
+static u16 enc28j60_phy_read(struct enc28j60_net *priv, u8 address)
+{
+	u16 ret;
+
+	/* set the PHY register address */
+	enc28j60_regb_write(priv, MIREGADR, address);
+	/* start the register read operation */
+	enc28j60_regb_write(priv, MICMD, MICMD_MIIRD);
+	/* wait until the PHY read completes */
+	wait_phy_ready(priv);
+	/* quit reading */
+	enc28j60_regb_write(priv, MICMD, 0x00);
+	/* return the data */
+	ret = enc28j60_regw_read(priv, MIRDL);
+
+	return ret;
+}
+
+static int enc28j60_phy_write(struct enc28j60_net *priv, u8 address, u16 data)
+{
+	int ret;
+
+	/* set the PHY register address */
+	enc28j60_regb_write(priv, MIREGADR, address);
+	/* write the PHY data */
+	enc28j60_regw_write(priv, MIWRL, data);
+	/* wait until the PHY write completes and return */
+	ret = wait_phy_ready(priv);
+
+	return ret;
+}
+
+/*
+ * MII-interface related functions
+ */
+static int enc28j60_miibus_read(struct mii_bus *bus, int phy_addr, int reg_addr)
+{
+	struct enc28j60_net *priv = (struct enc28j60_net *)bus->priv;
+
+	if (phy_addr == 0) {
+		return enc28j60_phy_read(priv, reg_addr);
+	}
+
+	return 0xffff;
+}
+
+static int enc28j60_miibus_write(struct mii_bus *bus, int phy_addr,
+	int reg_addr, u16 data)
+{
+	struct enc28j60_net *priv = (struct enc28j60_net *)bus->priv;
+
+	if (phy_addr == 0) {
+		enc28j60_phy_write(priv, reg_addr, data);
+	}
+
+	return 0;
+}
+
+static int enc28j60_get_ethaddr(struct eth_device *edev, unsigned char *m)
+{
+	struct enc28j60_net *priv = edev->priv;
+
+	memcpy(m, priv->hwaddr, ETH_ALEN);
+
+	if (netif_msg_drv(priv))
+		dev_err(&edev->dev, "getting MAC address\n");
+
+	return 0;
+}
+
+/*
+ * Program the hardware MAC address from dev->dev_addr.
+ */
+static int enc28j60_set_ethaddr(struct eth_device *edev,
+					unsigned char *mac_addr)
+{
+	int ret;
+	struct enc28j60_net *priv = edev->priv;
+
+	if (!priv->hw_enable) {
+		if (netif_msg_drv(priv))
+			dev_err(&edev->dev,
+				"%s(): Setting MAC address\n", __func__);
+		/* NOTE: MAC address in ENC28J60 is byte-backward */
+		enc28j60_regb_write(priv, MAADR5, mac_addr[0]);
+		enc28j60_regb_write(priv, MAADR4, mac_addr[1]);
+		enc28j60_regb_write(priv, MAADR3, mac_addr[2]);
+		enc28j60_regb_write(priv, MAADR2, mac_addr[3]);
+		enc28j60_regb_write(priv, MAADR1, mac_addr[4]);
+		enc28j60_regb_write(priv, MAADR0, mac_addr[5]);
+		ret = 0;
+		memcpy(priv->hwaddr, mac_addr, ETH_ALEN);
+	} else {
+		if (netif_msg_drv(priv))
+			dev_dbg(&edev->dev,
+				"%s() Hardware must be disabled to set "
+				"Mac address\n", __func__);
+		ret = -EBUSY;
+	}
+
+	return ret;
+}
+
+/*
+ * Debug routine to dump useful register contents
+ */
+static void enc28j60_dump_regs(struct enc28j60_net *priv, const char *msg)
+{
+	dev_dbg(&priv->edev.dev, " %s\n"
+		"HwRevID: 0x%02x\n"
+		"Cntrl: ECON1 ECON2 ESTAT  EIR  EIE\n"
+		"       0x%02x  0x%02x  0x%02x  0x%02x  0x%02x\n"
+		"MAC  : MACON1 MACON3 MACON4\n"
+		"       0x%02x   0x%02x   0x%02x\n"
+		"Rx   : ERXST  ERXND  ERXWRPT ERXRDPT ERXFCON EPKTCNT MAMXFL\n"
+		"       0x%04x 0x%04x 0x%04x  0x%04x  "
+		"0x%02x    0x%02x    0x%04x\n"
+		"Tx   : ETXST  ETXND  MACLCON1 MACLCON2 MAPHSUP\n"
+		"       0x%04x 0x%04x 0x%02x     0x%02x     0x%02x\n",
+		msg, enc28j60_regb_read(priv, EREVID),
+		enc28j60_regb_read(priv, ECON1), enc28j60_regb_read(priv, ECON2),
+		enc28j60_regb_read(priv, ESTAT), enc28j60_regb_read(priv, EIR),
+		enc28j60_regb_read(priv, EIE), enc28j60_regb_read(priv, MACON1),
+		enc28j60_regb_read(priv, MACON3), enc28j60_regb_read(priv, MACON4),
+		enc28j60_regw_read(priv, ERXSTL), enc28j60_regw_read(priv, ERXNDL),
+		enc28j60_regw_read(priv, ERXWRPTL),
+		enc28j60_regw_read(priv, ERXRDPTL),
+		enc28j60_regb_read(priv, ERXFCON),
+		enc28j60_regb_read(priv, EPKTCNT),
+		enc28j60_regw_read(priv, MAMXFLL), enc28j60_regw_read(priv, ETXSTL),
+		enc28j60_regw_read(priv, ETXNDL),
+		enc28j60_regb_read(priv, MACLCON1),
+		enc28j60_regb_read(priv, MACLCON2),
+		enc28j60_regb_read(priv, MAPHSUP));
+}
+
+/*
+ * ERXRDPT need to be set always at odd addresses, refer to errata datasheet
+ */
+static u16 erxrdpt_workaround(u16 next_packet_ptr, u16 start, u16 end)
+{
+	u16 erxrdpt;
+
+	if ((next_packet_ptr - 1 < start) || (next_packet_ptr - 1 > end))
+		erxrdpt = end;
+	else
+		erxrdpt = next_packet_ptr - 1;
+
+	return erxrdpt;
+}
+
+/*
+ * Calculate wrap around when reading beyond the end of the RX buffer
+ */
+static u16 rx_packet_start(u16 ptr)
+{
+	if (ptr + RSV_SIZE > RXEND_INIT)
+		return (ptr + RSV_SIZE) - (RXEND_INIT - RXSTART_INIT + 1);
+	else
+		return ptr + RSV_SIZE;
+}
+
+static void enc28j60_rxfifo_init(struct enc28j60_net *priv, u16 start, u16 end)
+{
+	u16 erxrdpt;
+
+	if (start > 0x1FFF || end > 0x1FFF || start > end) {
+		if (netif_msg_drv(priv))
+			dev_err(&priv->edev.dev,
+				"%s(%d, %d) RXFIFO bad parameters!\n",
+				__func__, start, end);
+		return;
+	}
+
+	/* set receive buffer start + end */
+	priv->next_pk_ptr = start;
+	enc28j60_regw_write(priv, ERXSTL, start);
+	erxrdpt = erxrdpt_workaround(priv->next_pk_ptr, start, end);
+	enc28j60_regw_write(priv, ERXRDPTL, erxrdpt);
+	enc28j60_regw_write(priv, ERXNDL, end);
+}
+
+static void enc28j60_txfifo_init(struct enc28j60_net *priv, u16 start, u16 end)
+{
+	if (start > 0x1FFF || end > 0x1FFF || start > end) {
+		if (netif_msg_drv(priv))
+			dev_err(&priv->edev.dev,
+				"%s(%d, %d) TXFIFO bad parameters!\n",
+				__func__, start, end);
+		return;
+	}
+	/* set transmit buffer start + end */
+	enc28j60_regw_write(priv, ETXSTL, start);
+	enc28j60_regw_write(priv, ETXNDL, end);
+}
+
+/*
+ * Low power mode shrinks power consumption about 100x, so we'd like
+ * the chip to be in that mode whenever it's inactive.  (However, we
+ * can't stay in lowpower mode during suspend with WOL active.)
+ */
+static void enc28j60_lowpower(struct enc28j60_net *priv, bool is_low)
+{
+	if (netif_msg_drv(priv))
+		dev_dbg(&priv->spi->dev, "%s power...\n",
+				is_low ? "low" : "high");
+
+	if (is_low) {
+		enc28j60_reg_bfclr(priv, ECON1, ECON1_RXEN);
+		poll_ready(priv, ESTAT, ESTAT_RXBUSY, 0);
+		poll_ready(priv, ECON1, ECON1_TXRTS, 0);
+		/* ECON2_VRPS was set during initialization */
+		enc28j60_reg_bfset(priv, ECON2, ECON2_PWRSV);
+	} else {
+		enc28j60_reg_bfclr(priv, ECON2, ECON2_PWRSV);
+		poll_ready(priv, ESTAT, ESTAT_CLKRDY, ESTAT_CLKRDY);
+		/* caller sets ECON1_RXEN */
+	}
+}
+
+static int enc28j60_hw_init(struct enc28j60_net *priv)
+{
+	u8 reg;
+
+	if (netif_msg_drv(priv))
+		dev_dbg(&priv->edev.dev, "%s() - %s\n", __func__,
+			priv->full_duplex ? "FullDuplex" : "HalfDuplex");
+
+	/* first reset the chip */
+	enc28j60_soft_reset(priv);
+	/* Clear ECON1 */
+	spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, ECON1, 0x00);
+	priv->bank = 0;
+	priv->hw_enable = false;
+	priv->tx_retry_count = 0;
+	priv->max_pk_counter = 0;
+
+	/* enable address auto increment and voltage regulator powersave */
+	enc28j60_regb_write(priv, ECON2, ECON2_AUTOINC | ECON2_VRPS);
+
+	enc28j60_rxfifo_init(priv, RXSTART_INIT, RXEND_INIT);
+	enc28j60_txfifo_init(priv, TXSTART_INIT, TXEND_INIT);
+
+	/*
+	 * Check the RevID.
+	 * If it's 0x00 or 0xFF probably the enc28j60 is not mounted or
+	 * damaged
+	 */
+	reg = enc28j60_regb_read(priv, EREVID);
+
+	if (netif_msg_drv(priv))
+		dev_info(&priv->edev.dev, ": chip RevID: 0x%02x\n", reg);
+
+	if (reg == 0x00 || reg == 0xff) {
+		if (netif_msg_drv(priv))
+			dev_dbg(&priv->edev.dev,
+				"%s() Invalid RevId %d\n", __func__, reg);
+		return 0;
+	}
+
+	/* default filter mode: (unicast OR broadcast) AND crc valid */
+	enc28j60_regb_write(priv, ERXFCON,
+			    ERXFCON_UCEN | ERXFCON_CRCEN | ERXFCON_BCEN);
+
+	/* enable MAC receive */
+	enc28j60_regb_write(priv, MACON1,
+			    MACON1_MARXEN | MACON1_TXPAUS | MACON1_RXPAUS);
+
+	/* enable automatic padding and CRC operations */
+	if (priv->full_duplex) {
+		enc28j60_regb_write(priv, MACON3,
+				    MACON3_PADCFG0 | MACON3_TXCRCEN |
+				    MACON3_FRMLNEN | MACON3_FULDPX);
+		/* set inter-frame gap (non-back-to-back) */
+		enc28j60_regb_write(priv, MAIPGL, 0x12);
+		/* set inter-frame gap (back-to-back) */
+		enc28j60_regb_write(priv, MABBIPG, 0x15);
+	} else {
+		enc28j60_regb_write(priv, MACON3,
+				    MACON3_PADCFG0 | MACON3_TXCRCEN |
+				    MACON3_FRMLNEN);
+		enc28j60_regb_write(priv, MACON4, 1 << 6);	/* DEFER bit */
+		/* set inter-frame gap (non-back-to-back) */
+		enc28j60_regw_write(priv, MAIPGL, 0x0C12);
+		/* set inter-frame gap (back-to-back) */
+		enc28j60_regb_write(priv, MABBIPG, 0x12);
+	}
+	/*
+	 * MACLCON1 (default)
+	 * MACLCON2 (default)
+	 * Set the maximum packet size which the controller will accept
+	 */
+	enc28j60_regw_write(priv, MAMXFLL, MAX_FRAMELEN);
+
+	/* Configure LEDs */
+	if (!enc28j60_phy_write(priv, PHLCON, ENC28J60_LAMPS_MODE))
+		return 0;
+
+	if (priv->full_duplex) {
+		if (!enc28j60_phy_write(priv, PHCON1, PHCON1_PDPXMD))
+			return 0;
+		if (!enc28j60_phy_write(priv, PHCON2, 0x00))
+			return 0;
+	} else {
+		if (!enc28j60_phy_write(priv, PHCON1, 0x00))
+			return 0;
+		if (!enc28j60_phy_write(priv, PHCON2, PHCON2_HDLDIS))
+			return 0;
+	}
+
+	if (netif_msg_hw(priv))
+		enc28j60_dump_regs(priv, "Hw initialized.");
+
+	return 1;
+}
+
+static void enc28j60_hw_enable(struct enc28j60_net *priv)
+{
+	if (netif_msg_hw(priv))
+		dev_dbg(&priv->edev.dev, "%s()\n", __func__);
+
+	/* enable receive logic */
+	enc28j60_reg_bfset(priv, ECON1, ECON1_RXEN);
+	priv->hw_enable = true;
+}
+
+static void enc28j60_hw_disable(struct enc28j60_net *priv)
+{
+	/* disable interrutps and packet reception */
+	enc28j60_regb_write(priv, EIE, 0x00);
+	enc28j60_reg_bfclr(priv, ECON1, ECON1_RXEN);
+	priv->hw_enable = false;
+}
+
+/*
+ * Receive Status vector
+ */
+static void enc28j60_dump_rsv(struct enc28j60_net *priv, const char *msg,
+			      u16 pk_ptr, int len, u16 sts)
+{
+	struct device_d *dev = &priv->edev.dev;
+
+	dev_dbg(dev, "%s - NextPk: 0x%04x - RSV:\n",
+		msg, pk_ptr);
+	dev_dbg(dev, "ByteCount: %d, DribbleNibble: %d\n", len,
+		 RSV_GETBIT(sts, RSV_DRIBBLENIBBLE));
+	dev_dbg(dev, "RxOK: %d, CRCErr:%d, LenChkErr: %d,"
+		 " LenOutOfRange: %d\n", RSV_GETBIT(sts, RSV_RXOK),
+		 RSV_GETBIT(sts, RSV_CRCERROR),
+		 RSV_GETBIT(sts, RSV_LENCHECKERR),
+		 RSV_GETBIT(sts, RSV_LENOUTOFRANGE));
+	dev_dbg(dev, "Multicast: %d, Broadcast: %d, "
+		 "LongDropEvent: %d, CarrierEvent: %d\n",
+		 RSV_GETBIT(sts, RSV_RXMULTICAST),
+		 RSV_GETBIT(sts, RSV_RXBROADCAST),
+		 RSV_GETBIT(sts, RSV_RXLONGEVDROPEV),
+		 RSV_GETBIT(sts, RSV_CARRIEREV));
+	dev_dbg(dev, "ControlFrame: %d, PauseFrame: %d,"
+		 " UnknownOp: %d, VLanTagFrame: %d\n",
+		 RSV_GETBIT(sts, RSV_RXCONTROLFRAME),
+		 RSV_GETBIT(sts, RSV_RXPAUSEFRAME),
+		 RSV_GETBIT(sts, RSV_RXUNKNOWNOPCODE),
+		 RSV_GETBIT(sts, RSV_RXTYPEVLAN));
+}
+
+static void dump_packet(struct eth_device *edev,
+			const char *msg, int len, const char *data)
+{
+	dev_dbg(&edev->dev, "%s - packet len:%d\n", msg, len);
+	print_hex_dump(KERN_DEBUG, "pk data: ", DUMP_PREFIX_OFFSET, 16, 1,
+			data, len, true);
+}
+
+/*
+ * Hardware transmit function.
+ * Fill the buffer memory and send the contents of the transmit buffer
+ * onto the network
+ */
+static int enc28j60_eth_send(struct eth_device *edev, void *packet,
+				int packet_length)
+{
+	struct enc28j60_net *priv = edev->priv;
+
+	if (netif_msg_tx_queued(priv))
+		dev_dbg(&edev->dev, "Tx Packet Len:%d\n", packet_length);
+
+	if (netif_msg_pktdata(priv))
+		dump_packet(edev, __func__,
+			    packet_length, packet);
+	enc28j60_packet_write(priv, packet_length, packet);
+
+	/* readback and verify written data */
+	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY)) {
+		int test_len, k;
+		u8 test_buf[64]; /* limit the test to the first 64 bytes */
+		int okflag;
+
+		test_len = packet_length;
+		if (test_len > sizeof(test_buf))
+			test_len = sizeof(test_buf);
+
+		/* + 1 to skip control byte */
+		enc28j60_mem_read(priv, TXSTART_INIT + 1, test_len, test_buf);
+		okflag = 1;
+		for (k = 0; k < test_len; k++) {
+			if (((u8 *)packet)[k] != test_buf[k]) {
+				dev_dbg(&edev->dev,
+					 "Error, %d location differ: "
+					 "0x%02x-0x%02x\n", k,
+					 ((u8 *)packet)[k], test_buf[k]);
+				okflag = 0;
+			}
+		}
+		if (!okflag)
+			dev_dbg(&edev->dev, "Tx write buffer verify ERROR!\n");
+	}
+
+	/* set TX request flag */
+	enc28j60_reg_bfset(priv, ECON1, ECON1_TXRTS);
+
+	return 0;
+}
+
+/*
+ * Hardware receive function.
+ * Read the buffer memory, update the FIFO pointer to free the buffer,
+ * check the status vector and decrement the packet counter.
+ */
+static void enc28j60_hw_rx(struct eth_device *edev)
+{
+	struct enc28j60_net *priv = edev->priv;
+	u16 erxrdpt, next_packet, rxstat;
+	u8 rsv[RSV_SIZE];
+	int len;
+
+	if (netif_msg_rx_status(priv))
+		dev_dbg(&edev->dev, "RX pk_addr:0x%04x\n", priv->next_pk_ptr);
+
+	if (unlikely(priv->next_pk_ptr > RXEND_INIT)) {
+		if (netif_msg_rx_err(priv))
+			dev_err(&edev->dev,
+				"%s() Invalid packet address!! 0x%04x\n",
+				__func__, priv->next_pk_ptr);
+
+		/* packet address corrupted: reset RX logic */
+		enc28j60_reg_bfclr(priv, ECON1, ECON1_RXEN);
+		enc28j60_reg_bfset(priv, ECON1, ECON1_RXRST);
+		enc28j60_reg_bfclr(priv, ECON1, ECON1_RXRST);
+		enc28j60_rxfifo_init(priv, RXSTART_INIT, RXEND_INIT);
+		enc28j60_reg_bfclr(priv, EIR, EIR_RXERIF);
+		enc28j60_reg_bfset(priv, ECON1, ECON1_RXEN);
+
+		return;
+	}
+
+	/* Read next packet pointer and rx status vector */
+	enc28j60_mem_read(priv, priv->next_pk_ptr, sizeof(rsv), rsv);
+
+	next_packet = rsv[1];
+	next_packet <<= 8;
+	next_packet |= rsv[0];
+
+	len = rsv[3];
+	len <<= 8;
+	len |= rsv[2];
+
+	rxstat = rsv[5];
+	rxstat <<= 8;
+	rxstat |= rsv[4];
+
+	if (netif_msg_rx_status(priv))
+		enc28j60_dump_rsv(priv, __func__, next_packet, len, rxstat);
+
+	if (!RSV_GETBIT(rxstat, RSV_RXOK) || len > MAX_FRAMELEN) {
+		if (netif_msg_rx_err(priv))
+			dev_err(&edev->dev, "Rx Error (%04x)\n", rxstat);
+	} else {
+		/* copy the packet from the receive buffer */
+		enc28j60_mem_read(priv,
+			rx_packet_start(priv->next_pk_ptr),
+			len, NetRxPackets[0]);
+
+		if (netif_msg_pktdata(priv))
+			dump_packet(edev, __func__, len, NetRxPackets[0]);
+
+		net_receive(edev, NetRxPackets[0], len);
+	}
+
+	/*
+	 * Move the RX read pointer to the start of the next
+	 * received packet.
+	 * This frees the memory we just read out
+	 */
+	erxrdpt = erxrdpt_workaround(next_packet, RXSTART_INIT, RXEND_INIT);
+	if (netif_msg_hw(priv))
+		dev_dbg(&edev->dev, ": %s() ERXRDPT:0x%04x\n",
+			__func__, erxrdpt);
+
+	enc28j60_regw_write(priv, ERXRDPTL, erxrdpt);
+
+	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY) && netif_msg_drv(priv)) {
+		u16 reg;
+		reg = enc28j60_regw_read(priv, ERXRDPTL);
+		if (reg != erxrdpt)
+			dev_dbg(&edev->dev, "%s() ERXRDPT verify "
+				"error (0x%04x - 0x%04x)\n", __func__,
+				reg, erxrdpt);
+	}
+
+	priv->next_pk_ptr = next_packet;
+
+	/* we are done with this packet, decrement the packet counter */
+	enc28j60_reg_bfset(priv, ECON2, ECON2_PKTDEC);
+}
+
+/*
+ * Access the PHY to determine link status
+ */
+static void enc28j60_check_link_status(struct eth_device *edev)
+{
+	struct enc28j60_net *priv = edev->priv;
+	u16 reg;
+	int duplex;
+
+	reg = enc28j60_phy_read(priv, PHSTAT2);
+	if (netif_msg_hw(priv))
+		dev_dbg(&edev->dev,
+			"%s() PHSTAT1: %04x, PHSTAT2: %04x\n", __func__,
+			enc28j60_phy_read(priv, PHSTAT1), reg);
+	duplex = reg & PHSTAT2_DPXSTAT;
+
+	if (reg & PHSTAT2_LSTAT) {
+		if (netif_msg_ifup(priv))
+			dev_info(&edev->dev, "link up - %s\n",
+				duplex ? "Full duplex" : "Half duplex");
+	} else {
+		if (netif_msg_ifdown(priv))
+			dev_info(&edev->dev, "link down\n");
+	}
+}
+
+static int enc28j60_eth_rx(struct eth_device *edev)
+{
+	struct enc28j60_net *priv = edev->priv;
+	int pk_counter;
+
+	pk_counter = enc28j60_regb_read(priv, EPKTCNT);
+	if (pk_counter && netif_msg_intr(priv))
+		dev_dbg(&edev->dev, "intRX, pk_cnt: %d\n", pk_counter);
+
+	if (pk_counter > priv->max_pk_counter) {
+		priv->max_pk_counter = pk_counter;
+		if (netif_msg_rx_status(priv) && priv->max_pk_counter > 1)
+			dev_dbg(&edev->dev,
+				"RX max_pk_cnt: %d\n", priv->max_pk_counter);
+	}
+
+	while (pk_counter-- > 0)
+		enc28j60_hw_rx(edev);
+
+	return 0;
+}
+
+static int enc28j60_init_dev(struct eth_device *edev)
+{
+	/* FIXME: empty */
+
+	return 0;
+}
+
+/*
+ * Open/initialize the board. This is called (in the current kernel)
+ * sometime after booting when the 'ifconfig' program is run.
+ *
+ * This routine should set everything up anew at each open, even
+ * registers that "should" only need to be set once at boot, so that
+ * there is non-reboot way to recover if something goes wrong.
+ */
+static int enc28j60_eth_open(struct eth_device *edev)
+{
+	struct enc28j60_net *priv = edev->priv;
+	int ret;
+
+	if (netif_msg_drv(priv))
+		dev_dbg(&edev->dev, "%s() enter\n", __func__);
+
+	/* Reset the hardware here (and take it out of low power mode) */
+	enc28j60_lowpower(priv, false);
+	enc28j60_hw_disable(priv);
+	if (!enc28j60_hw_init(priv)) {
+		if (netif_msg_ifup(priv))
+			dev_err(&edev->dev, "hw_reset() failed\n");
+		return -EINVAL;
+	}
+
+	/* Update the MAC address after reset */
+	enc28j60_set_ethaddr(edev, priv->hwaddr);
+
+	enc28j60_hw_enable(priv);
+
+	/* Wait for link up after hardware reset */
+	mdelay(2000);
+
+	ret = phy_device_connect(edev, &priv->miibus, 0,
+				&enc28j60_check_link_status, 0,
+				PHY_INTERFACE_MODE_MII);
+
+	return ret;
+}
+
+static void enc28j60_eth_halt(struct eth_device *edev)
+{
+	struct enc28j60_net *priv = edev->priv;
+
+	if (netif_msg_drv(priv))
+		dev_dbg(&edev->dev, "%s() enter\n", __func__);
+
+	enc28j60_hw_disable(priv);
+	enc28j60_lowpower(priv, true);
+}
+
+static int enc28j60_probe(struct device_d *dev)
+{
+	struct eth_device *edev;
+	struct enc28j60_net *priv;
+	int ret = 0;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->spi = (struct spi_device *)dev->type_data;
+	priv->msg_enable = netif_msg_init(0, ENC28J60_MSG_DEFAULT);
+
+	edev = &priv->edev;
+	edev->priv = priv;
+	edev->init = enc28j60_init_dev;
+	edev->open = enc28j60_eth_open;
+	edev->send = enc28j60_eth_send;
+	edev->recv = enc28j60_eth_rx;
+	edev->get_ethaddr = enc28j60_get_ethaddr;
+	edev->set_ethaddr = enc28j60_set_ethaddr;
+	edev->halt = enc28j60_eth_halt;
+	edev->parent = dev;
+
+	/*
+	 * Here is a quote from ENC28J60 Data Sheet:
+	 *
+	 * The ENC28J60 does not support automatic duplex
+	 * negotiation. If it is connected to an automatic duplex
+	 * negotiation enabled network switch or Ethernet controller,
+	 * the ENC28J60 will be detected as a half-duplex device.
+	 *
+	 * So most people prefer to set up half-duplex mode.
+	 */
+	priv->full_duplex = 0;
+
+	if (!enc28j60_hw_init(priv)) {
+		if (netif_msg_probe(priv))
+			dev_info(dev, DRV_NAME " chip not found\n");
+		ret = -EIO;
+		goto error_register;
+	}
+
+	enc28j60_lowpower(priv, true);
+
+	priv->miibus.read = enc28j60_miibus_read;
+	priv->miibus.write = enc28j60_miibus_write;
+
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
+	ret = mdiobus_register(&priv->miibus);
+	if (ret)
+		goto error_register;
+
+	ret = eth_register(edev);
+	if (ret)
+		goto error_register;
+
+	dev_info(dev, DRV_NAME " driver registered\n");
+
+	return 0;
+
+error_register:
+	return ret;
+}
+
+static __maybe_unused struct of_device_id enc28j60_dt_ids[] = {
+	{
+		.compatible = "microchip,enc28j60",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d enc28j60_driver = {
+	.name = DRV_NAME,
+	.probe = enc28j60_probe,
+	.of_compatible = DRV_OF_COMPAT(enc28j60_dt_ids),
+};
+device_spi_driver(enc28j60_driver);
diff --git a/drivers/net/enc28j60_hw.h b/drivers/net/enc28j60_hw.h
new file mode 100644
index 0000000..4c023c8
--- /dev/null
+++ b/drivers/net/enc28j60_hw.h
@@ -0,0 +1,307 @@
+/*
+ * enc28j60_hw.h: EDTP FrameThrower style enc28j60 registers
+ */
+
+#ifndef _ENC28J60_HW_H
+#define _ENC28J60_HW_H
+
+/*
+ * ENC28J60 Control Registers
+ * Control register definitions are a combination of address,
+ * bank number, and Ethernet/MAC/PHY indicator bits.
+ * - Register address	(bits 0-4)
+ * - Bank number	(bits 5-6)
+ * - MAC/MII indicator	(bit 7)
+ */
+#define ADDR_MASK	0x1F
+#define BANK_MASK	0x60
+#define SPRD_MASK	0x80
+/* All-bank registers */
+#define EIE		0x1B
+#define EIR		0x1C
+#define ESTAT		0x1D
+#define ECON2		0x1E
+#define ECON1		0x1F
+/* Bank 0 registers */
+#define ERDPTL		(0x00|0x00)
+#define ERDPTH		(0x01|0x00)
+#define EWRPTL		(0x02|0x00)
+#define EWRPTH		(0x03|0x00)
+#define ETXSTL		(0x04|0x00)
+#define ETXSTH		(0x05|0x00)
+#define ETXNDL		(0x06|0x00)
+#define ETXNDH		(0x07|0x00)
+#define ERXSTL		(0x08|0x00)
+#define ERXSTH		(0x09|0x00)
+#define ERXNDL		(0x0A|0x00)
+#define ERXNDH		(0x0B|0x00)
+#define ERXRDPTL	(0x0C|0x00)
+#define ERXRDPTH	(0x0D|0x00)
+#define ERXWRPTL	(0x0E|0x00)
+#define ERXWRPTH	(0x0F|0x00)
+#define EDMASTL		(0x10|0x00)
+#define EDMASTH		(0x11|0x00)
+#define EDMANDL		(0x12|0x00)
+#define EDMANDH		(0x13|0x00)
+#define EDMADSTL	(0x14|0x00)
+#define EDMADSTH	(0x15|0x00)
+#define EDMACSL		(0x16|0x00)
+#define EDMACSH		(0x17|0x00)
+/* Bank 1 registers */
+#define EHT0		(0x00|0x20)
+#define EHT1		(0x01|0x20)
+#define EHT2		(0x02|0x20)
+#define EHT3		(0x03|0x20)
+#define EHT4		(0x04|0x20)
+#define EHT5		(0x05|0x20)
+#define EHT6		(0x06|0x20)
+#define EHT7		(0x07|0x20)
+#define EPMM0		(0x08|0x20)
+#define EPMM1		(0x09|0x20)
+#define EPMM2		(0x0A|0x20)
+#define EPMM3		(0x0B|0x20)
+#define EPMM4		(0x0C|0x20)
+#define EPMM5		(0x0D|0x20)
+#define EPMM6		(0x0E|0x20)
+#define EPMM7		(0x0F|0x20)
+#define EPMCSL		(0x10|0x20)
+#define EPMCSH		(0x11|0x20)
+#define EPMOL		(0x14|0x20)
+#define EPMOH		(0x15|0x20)
+#define EWOLIE		(0x16|0x20)
+#define EWOLIR		(0x17|0x20)
+#define ERXFCON		(0x18|0x20)
+#define EPKTCNT		(0x19|0x20)
+/* Bank 2 registers */
+#define MACON1		(0x00|0x40|SPRD_MASK)
+/* #define MACON2	(0x01|0x40|SPRD_MASK) */
+#define MACON3		(0x02|0x40|SPRD_MASK)
+#define MACON4		(0x03|0x40|SPRD_MASK)
+#define MABBIPG		(0x04|0x40|SPRD_MASK)
+#define MAIPGL		(0x06|0x40|SPRD_MASK)
+#define MAIPGH		(0x07|0x40|SPRD_MASK)
+#define MACLCON1	(0x08|0x40|SPRD_MASK)
+#define MACLCON2	(0x09|0x40|SPRD_MASK)
+#define MAMXFLL		(0x0A|0x40|SPRD_MASK)
+#define MAMXFLH		(0x0B|0x40|SPRD_MASK)
+#define MAPHSUP		(0x0D|0x40|SPRD_MASK)
+#define MICON		(0x11|0x40|SPRD_MASK)
+#define MICMD		(0x12|0x40|SPRD_MASK)
+#define MIREGADR	(0x14|0x40|SPRD_MASK)
+#define MIWRL		(0x16|0x40|SPRD_MASK)
+#define MIWRH		(0x17|0x40|SPRD_MASK)
+#define MIRDL		(0x18|0x40|SPRD_MASK)
+#define MIRDH		(0x19|0x40|SPRD_MASK)
+/* Bank 3 registers */
+#define MAADR1		(0x00|0x60|SPRD_MASK)
+#define MAADR0		(0x01|0x60|SPRD_MASK)
+#define MAADR3		(0x02|0x60|SPRD_MASK)
+#define MAADR2		(0x03|0x60|SPRD_MASK)
+#define MAADR5		(0x04|0x60|SPRD_MASK)
+#define MAADR4		(0x05|0x60|SPRD_MASK)
+#define EBSTSD		(0x06|0x60)
+#define EBSTCON		(0x07|0x60)
+#define EBSTCSL		(0x08|0x60)
+#define EBSTCSH		(0x09|0x60)
+#define MISTAT		(0x0A|0x60|SPRD_MASK)
+#define EREVID		(0x12|0x60)
+#define ECOCON		(0x15|0x60)
+#define EFLOCON		(0x17|0x60)
+#define EPAUSL		(0x18|0x60)
+#define EPAUSH		(0x19|0x60)
+/* PHY registers */
+#define PHCON1		0x00
+#define PHSTAT1		0x01
+#define PHHID1		0x02
+#define PHHID2		0x03
+#define PHCON2		0x10
+#define PHSTAT2		0x11
+#define PHIE		0x12
+#define PHIR		0x13
+#define PHLCON		0x14
+
+/* ENC28J60 EIE Register Bit Definitions */
+#define EIE_INTIE	0x80
+#define EIE_PKTIE	0x40
+#define EIE_DMAIE	0x20
+#define EIE_LINKIE	0x10
+#define EIE_TXIE	0x08
+/* #define EIE_WOLIE	0x04 (reserved) */
+#define EIE_TXERIE	0x02
+#define EIE_RXERIE	0x01
+/* ENC28J60 EIR Register Bit Definitions */
+#define EIR_PKTIF	0x40
+#define EIR_DMAIF	0x20
+#define EIR_LINKIF	0x10
+#define EIR_TXIF	0x08
+/* #define EIR_WOLIF	0x04 (reserved) */
+#define EIR_TXERIF	0x02
+#define EIR_RXERIF	0x01
+/* ENC28J60 ESTAT Register Bit Definitions */
+#define ESTAT_INT	0x80
+#define ESTAT_LATECOL	0x10
+#define ESTAT_RXBUSY	0x04
+#define ESTAT_TXABRT	0x02
+#define ESTAT_CLKRDY	0x01
+/* ENC28J60 ECON2 Register Bit Definitions */
+#define ECON2_AUTOINC	0x80
+#define ECON2_PKTDEC	0x40
+#define ECON2_PWRSV	0x20
+#define ECON2_VRPS	0x08
+/* ENC28J60 ECON1 Register Bit Definitions */
+#define ECON1_TXRST	0x80
+#define ECON1_RXRST	0x40
+#define ECON1_DMAST	0x20
+#define ECON1_CSUMEN	0x10
+#define ECON1_TXRTS	0x08
+#define ECON1_RXEN	0x04
+#define ECON1_BSEL1	0x02
+#define ECON1_BSEL0	0x01
+/* ENC28J60 MACON1 Register Bit Definitions */
+#define MACON1_LOOPBK	0x10
+#define MACON1_TXPAUS	0x08
+#define MACON1_RXPAUS	0x04
+#define MACON1_PASSALL	0x02
+#define MACON1_MARXEN	0x01
+/* ENC28J60 MACON2 Register Bit Definitions */
+#define MACON2_MARST	0x80
+#define MACON2_RNDRST	0x40
+#define MACON2_MARXRST	0x08
+#define MACON2_RFUNRST	0x04
+#define MACON2_MATXRST	0x02
+#define MACON2_TFUNRST	0x01
+/* ENC28J60 MACON3 Register Bit Definitions */
+#define MACON3_PADCFG2	0x80
+#define MACON3_PADCFG1	0x40
+#define MACON3_PADCFG0	0x20
+#define MACON3_TXCRCEN	0x10
+#define MACON3_PHDRLEN	0x08
+#define MACON3_HFRMLEN	0x04
+#define MACON3_FRMLNEN	0x02
+#define MACON3_FULDPX	0x01
+/* ENC28J60 MICMD Register Bit Definitions */
+#define MICMD_MIISCAN	0x02
+#define MICMD_MIIRD	0x01
+/* ENC28J60 MISTAT Register Bit Definitions */
+#define MISTAT_NVALID	0x04
+#define MISTAT_SCAN	0x02
+#define MISTAT_BUSY	0x01
+/* ENC28J60 ERXFCON Register Bit Definitions */
+#define ERXFCON_UCEN	0x80
+#define ERXFCON_ANDOR	0x40
+#define ERXFCON_CRCEN	0x20
+#define ERXFCON_PMEN	0x10
+#define ERXFCON_MPEN	0x08
+#define ERXFCON_HTEN	0x04
+#define ERXFCON_MCEN	0x02
+#define ERXFCON_BCEN	0x01
+
+/* ENC28J60 PHY PHCON1 Register Bit Definitions */
+#define PHCON1_PRST	0x8000
+#define PHCON1_PLOOPBK	0x4000
+#define PHCON1_PPWRSV	0x0800
+#define PHCON1_PDPXMD	0x0100
+/* ENC28J60 PHY PHSTAT1 Register Bit Definitions */
+#define PHSTAT1_PFDPX	0x1000
+#define PHSTAT1_PHDPX	0x0800
+#define PHSTAT1_LLSTAT	0x0004
+#define PHSTAT1_JBSTAT	0x0002
+/* ENC28J60 PHY PHSTAT2 Register Bit Definitions */
+#define PHSTAT2_TXSTAT	(1 << 13)
+#define PHSTAT2_RXSTAT	(1 << 12)
+#define PHSTAT2_COLSTAT	(1 << 11)
+#define PHSTAT2_LSTAT	(1 << 10)
+#define PHSTAT2_DPXSTAT	(1 << 9)
+#define PHSTAT2_PLRITY	(1 << 5)
+/* ENC28J60 PHY PHCON2 Register Bit Definitions */
+#define PHCON2_FRCLINK	0x4000
+#define PHCON2_TXDIS	0x2000
+#define PHCON2_JABBER	0x0400
+#define PHCON2_HDLDIS	0x0100
+/* ENC28J60 PHY PHIE Register Bit Definitions */
+#define PHIE_PLNKIE	(1 << 4)
+#define PHIE_PGEIE	(1 << 1)
+/* ENC28J60 PHY PHIR Register Bit Definitions */
+#define PHIR_PLNKIF	(1 << 4)
+#define PHIR_PGEIF	(1 << 1)
+
+/* ENC28J60 Packet Control Byte Bit Definitions */
+#define PKTCTRL_PHUGEEN		0x08
+#define PKTCTRL_PPADEN		0x04
+#define PKTCTRL_PCRCEN		0x02
+#define PKTCTRL_POVERRIDE	0x01
+
+/* ENC28J60 Transmit Status Vector */
+#define TSV_TXBYTECNT		0
+#define TSV_TXCOLLISIONCNT	16
+#define TSV_TXCRCERROR		20
+#define TSV_TXLENCHKERROR	21
+#define TSV_TXLENOUTOFRANGE	22
+#define TSV_TXDONE		23
+#define TSV_TXMULTICAST		24
+#define TSV_TXBROADCAST		25
+#define TSV_TXPACKETDEFER	26
+#define TSV_TXEXDEFER		27
+#define TSV_TXEXCOLLISION	28
+#define TSV_TXLATECOLLISION	29
+#define TSV_TXGIANT		30
+#define TSV_TXUNDERRUN		31
+#define TSV_TOTBYTETXONWIRE	32
+#define TSV_TXCONTROLFRAME	48
+#define TSV_TXPAUSEFRAME	49
+#define TSV_BACKPRESSUREAPP	50
+#define TSV_TXVLANTAGFRAME	51
+
+#define TSV_SIZE		7
+#define TSV_BYTEOF(x)		((x) / 8)
+#define TSV_BITMASK(x)		(1 << ((x) % 8))
+#define TSV_GETBIT(x, y)	(((x)[TSV_BYTEOF(y)] & TSV_BITMASK(y)) ? 1 : 0)
+
+/* ENC28J60 Receive Status Vector */
+#define RSV_RXLONGEVDROPEV	16
+#define RSV_CARRIEREV		18
+#define RSV_CRCERROR		20
+#define RSV_LENCHECKERR		21
+#define RSV_LENOUTOFRANGE	22
+#define RSV_RXOK		23
+#define RSV_RXMULTICAST		24
+#define RSV_RXBROADCAST		25
+#define RSV_DRIBBLENIBBLE	26
+#define RSV_RXCONTROLFRAME	27
+#define RSV_RXPAUSEFRAME	28
+#define RSV_RXUNKNOWNOPCODE	29
+#define RSV_RXTYPEVLAN		30
+
+#define RSV_SIZE		6
+#define RSV_BITMASK(x)		(1 << ((x) - 16))
+#define RSV_GETBIT(x, y)	(((x) & RSV_BITMASK(y)) ? 1 : 0)
+
+
+/* SPI operation codes */
+#define ENC28J60_READ_CTRL_REG	0x00
+#define ENC28J60_READ_BUF_MEM	0x3A
+#define ENC28J60_WRITE_CTRL_REG 0x40
+#define ENC28J60_WRITE_BUF_MEM	0x7A
+#define ENC28J60_BIT_FIELD_SET	0x80
+#define ENC28J60_BIT_FIELD_CLR	0xA0
+#define ENC28J60_SOFT_RESET	0xFF
+
+
+/* buffer boundaries applied to internal 8K ram
+ * entire available packet buffer space is allocated.
+ * Give TX buffer space for one full ethernet frame (~1500 bytes)
+ * receive buffer gets the rest */
+#define TXSTART_INIT		0x1A00
+#define TXEND_INIT		0x1FFF
+
+/* Put RX buffer at 0 as suggested by the Errata datasheet */
+#define RXSTART_INIT		0x0000
+#define RXEND_INIT		0x19FF
+
+/* maximum ethernet frame length */
+#define MAX_FRAMELEN		1518
+
+/* Preferred half duplex: LEDA: Link status LEDB: Rx/Tx activity */
+#define ENC28J60_LAMPS_MODE	0x3476
+
+#endif
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
new file mode 100644
index 0000000..4884854
--- /dev/null
+++ b/include/linux/netdevice.h
@@ -0,0 +1,53 @@
+#ifndef _LINUX_NETDEVICE_H
+#define _LINUX_NETDEVICE_H
+
+/*
+ * Network interface message level settings
+ */
+
+enum {
+	NETIF_MSG_DRV		= 0x0001,
+	NETIF_MSG_PROBE		= 0x0002,
+	NETIF_MSG_LINK		= 0x0004,
+	NETIF_MSG_TIMER		= 0x0008,
+	NETIF_MSG_IFDOWN	= 0x0010,
+	NETIF_MSG_IFUP		= 0x0020,
+	NETIF_MSG_RX_ERR	= 0x0040,
+	NETIF_MSG_TX_ERR	= 0x0080,
+	NETIF_MSG_TX_QUEUED	= 0x0100,
+	NETIF_MSG_INTR		= 0x0200,
+	NETIF_MSG_TX_DONE	= 0x0400,
+	NETIF_MSG_RX_STATUS	= 0x0800,
+	NETIF_MSG_PKTDATA	= 0x1000,
+	NETIF_MSG_HW		= 0x2000,
+	NETIF_MSG_WOL		= 0x4000,
+};
+
+#define netif_msg_drv(p)	((p)->msg_enable & NETIF_MSG_DRV)
+#define netif_msg_probe(p)	((p)->msg_enable & NETIF_MSG_PROBE)
+#define netif_msg_link(p)	((p)->msg_enable & NETIF_MSG_LINK)
+#define netif_msg_timer(p)	((p)->msg_enable & NETIF_MSG_TIMER)
+#define netif_msg_ifdown(p)	((p)->msg_enable & NETIF_MSG_IFDOWN)
+#define netif_msg_ifup(p)	((p)->msg_enable & NETIF_MSG_IFUP)
+#define netif_msg_rx_err(p)	((p)->msg_enable & NETIF_MSG_RX_ERR)
+#define netif_msg_tx_err(p)	((p)->msg_enable & NETIF_MSG_TX_ERR)
+#define netif_msg_tx_queued(p)	((p)->msg_enable & NETIF_MSG_TX_QUEUED)
+#define netif_msg_intr(p)	((p)->msg_enable & NETIF_MSG_INTR)
+#define netif_msg_tx_done(p)	((p)->msg_enable & NETIF_MSG_TX_DONE)
+#define netif_msg_rx_status(p)	((p)->msg_enable & NETIF_MSG_RX_STATUS)
+#define netif_msg_pktdata(p)	((p)->msg_enable & NETIF_MSG_PKTDATA)
+#define netif_msg_hw(p)		((p)->msg_enable & NETIF_MSG_HW)
+#define netif_msg_wol(p)	((p)->msg_enable & NETIF_MSG_WOL)
+
+static inline u32 netif_msg_init(int debug_value, int default_msg_enable_bits)
+{
+	/* use default */
+	if (debug_value < 0 || debug_value >= (sizeof(u32) * 8))
+		return default_msg_enable_bits;
+	if (debug_value == 0)	/* no output */
+		return 0;
+	/* set low N bits */
+	return (1 << debug_value) - 1;
+}
+
+#endif	/* _LINUX_NETDEVICE_H */
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
