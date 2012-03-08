Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5jMS-000318-Nt
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 19:50:59 +0000
Received: by mail-bk0-f49.google.com with SMTP id jk13so900337bkc.36
 for <barebox@lists.infradead.org>; Thu, 08 Mar 2012 11:50:52 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Mar 2012 23:50:32 +0400
Message-Id: <1331236232-32735-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
References: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC V2 6/6] net: add DEC 21143 (tulip) Ethernet controller support
To: barebox@lists.infradead.org

This driver is based on the tulip driver from Linux, and on
the dc driver from *BSD.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/Kconfig     |    8 +
 drivers/pci/21143.c     |  769 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/Makefile    |    1 +
 include/linux/pci_ids.h |    3 +
 4 files changed, 781 insertions(+), 0 deletions(-)
 create mode 100644 drivers/pci/21143.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index ff18b5e..7b87501 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -108,6 +108,14 @@ config 8139
 	  This is a driver for the Fast Ethernet PCI network cards based on
 	  the RTL 8139 chips.
 
+config 21143
+	depends on PCI
+	bool "DECchip Tulip (dc21143) PCI Fast Ethernet Adapter support"
+	select MIIDEV
+	help
+	  This is a driver for the Fast Ethernet PCI network cards based on
+	  the DEC 21143 chips.
+
 source "drivers/net/usb/Kconfig"
 
 endmenu
diff --git a/drivers/pci/21143.c b/drivers/pci/21143.c
new file mode 100644
index 0000000..bd2268a
--- /dev/null
+++ b/drivers/pci/21143.c
@@ -0,0 +1,769 @@
+/*
+ * DEC/Intel 21143 (tulip) ethernet driver
+ *
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+
+#include <command.h>
+#include <net.h>
+#include <miidev.h>
+#include <malloc.h>
+#include <init.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <clock.h>
+#include <asm/io.h>
+
+#include <linux/pci.h>
+
+#undef DEC21143_DEBUG
+#define DEC21143_DEBUG
+
+#define NUM_RX_DESC 1
+#define NUM_TX_DESC 1
+#define RX_BUFF_SZ  1600
+
+struct tx_desc {
+	u32 status;
+	u32 length;
+	u32 buffer1;
+	u32 buffer2;
+};
+
+struct rx_desc {
+	u32 status;
+	u32 length;
+	u32 buffer1;
+	u32 buffer2;
+};
+
+/* Descriptor bits. */
+#define TULIP_RDES0_OWN   (1 << 31) /* Own Bit: indicates that the descriptor is owned by the 21143 */
+#define RD_RER		0x02000000	/* Receive End Of Ring */
+#define RD_LS		0x00000100	/* Last Descriptor */
+#define RD_ES		0x00008000	/* Error Summary */
+
+#define TULIP_TDES0_OWN   (1 << 31) /* Own Bit: indicates that the descriptor is owned by the 21143 */
+#define TULIP_TDES1_LS    (1 << 30) /* Last Segment */
+#define TULIP_TDES1_FS    (1 << 29) /* First Segment */
+#define TULIP_TDES1_SET   (1 << 27) /* Setup Packet */
+#define TD_TER		0x02000000	/* Transmit End Of Ring */
+#define TD_ES		0x00008000	/* Error Summary */
+
+struct dec21143_priv {
+	void __iomem		*base;
+	struct pci_dev		*pci_dev;
+
+	struct mii_device	miidev;
+
+	struct rx_desc		*rx_ring;
+	struct tx_desc		*tx_ring;
+
+	int			tx_new;
+	int			rx_new;
+};
+
+/* FIXME: write 0 to CSR7 */
+
+#define TULIP_CSR0	0x00 /* Setting Register */
+ #define TULIP_CSR0_SWR		0x01 /* Software Reset */
+ #define TULIP_CSR0_TAP_MASK	(0x03 << 17)
+
+#define TULIP_CSR1	0x08 /* Transmit Poll Demand Register */
+
+#define TULIP_CSR2	0x10 /* Receive Poll Demand Register */
+#define POLL_DEMAND	1
+
+#define TULIP_CSR3	0x18 /* Start of Receive List */
+
+#define TULIP_CSR4	0x20 /* Start of Transmit List */
+
+#define TULIP_CSR5	0x28 /* Status Register */
+ #define TULIP_CSR5_RI	(1 << 6) /* Receive Interrupt */
+ #define TULIP_CSR5_TI	1 /* Transmit Interrupt */
+ #define TULIP_CSR5_TS_MASK	(0x07 << 20)
+ #define TULIP_CSR5_RS_MASK	(0x07 << 17)
+
+#define TULIP_CSR6	0x30 /* Operation Mode Register */
+ #define TULIP_CSR6_TXON	0x2000
+ #define TULIP_CSR6_RXON	0x0002
+
+#define TULIP_CSR7	0x38 /* Interrupt Enable Register */
+
+#define TULIP_CSR8	0x40 /* Unused */
+
+#define TULIP_CSR9	0x48 /* Boot ROM, Serial ROM, and MII Management Register */
+#define TULIP_MDIO_DATA0 0x00000
+#define TULIP_MDIO_DATA1 0x20000
+#define MDIO_ENB		0x00000		/* Ignore the 0x02000 databook setting. */
+#define MDIO_ENB_IN		0x40000
+#define MDIO_DATA_READ	0x80000
+
+ #define TULIP_CSR9_MDI         (1 << 19) /* MDIO Data In */
+ #define TULIP_CSR9_MDOM        (1 << 18) /* MDIO Operation Mode */
+ #define TULIP_CSR9_MDO         (1 << 17) /* MDIO Data Out */
+ #define TULIP_CSR9_MDC         (1 << 16) /* MDIO Clock */
+ #define TULIP_CSR9_RD          (1 << 14)
+ #define TULIP_CSR9_WR          (1 << 13)
+ #define TULIP_CSR9_SR          (1 << 11) /* Serial ROM Select */
+ #define TULIP_CSR9_SRDO        (1 << 3) /* Serial ROM Data Out */
+ #define TULIP_CSR9_SRDI        (1 << 2) /* Serial ROM Data In */
+ #define TULIP_CSR9_SRCK        (1 << 1) /* Serial ROM Clock */
+ #define TULIP_CSR9_SRCS        (1) /* Serial ROM Chip Select */
+
+#define TULIP_CSR10	0x50 /* Unused */
+#define TULIP_CSR11	0x58 /* Unused */
+#define TULIP_CSR12	0x60 /* Unused */
+#define TULIP_CSR13	0x68 /* Unused */
+#define TULIP_CSR14	0x70 /* Unused: SIA Transmit and Receive Register */
+#define TULIP_CSR15	0x78 /* Unused */
+
+/* Register bits. */
+/* CSR5 */
+#define STS_TS		0x00700000	/* Transmit Process State */
+#define STS_RS		0x000e0000	/* Receive Process State */
+
+/* CSR6 */
+#define OMR_PS		0x00040000	/* Port Select */
+#define OMR_SDP		0x02000000	/* SD Polarity - MUST BE ASSERTED */
+#define OMR_PM		0x00000080	/* Pass All Multicast */
+
+#define DC_W32(priv, reg, val)	writel(val, ((char *)(priv->base) + reg))
+#define DC_R32(priv, reg)	readl(((char *)(priv->base) + reg))
+
+/* Read and write the MII registers using software-generated serial
+   MDIO protocol.  It is just different enough from the EEPROM protocol
+   to not share code.  The maxium data clock rate is 2.5 MHz. */
+
+#define mdio_delay() (void)DC_R32(priv, TULIP_CSR9)
+
+static int dec21143_phy_read(struct mii_device *mdev, int phy_addr, int reg)
+{
+	struct eth_device *edev = mdev->edev;
+	struct dec21143_priv *priv = edev->priv;
+	int val;
+
+	int i;
+	int read_cmd = (0xf6 << 10) | (priv->miidev.address << 5) | reg;
+
+	val = 0;
+
+	/* Establish sync by sending at least 32 logic ones. */
+	for (i = 32; i >= 0; i--) {
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | TULIP_MDIO_DATA1);
+		mdio_delay();
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | TULIP_MDIO_DATA1 | TULIP_CSR9_MDC);
+		mdio_delay();
+	}
+
+	/* Shift the read command bits out. */
+	for (i = 15; i >= 0; i--) {
+		int dataval = (read_cmd & (1 << i)) ? TULIP_MDIO_DATA1 : TULIP_MDIO_DATA0;
+
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | dataval);
+		mdio_delay();
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | dataval | TULIP_CSR9_MDC);
+		mdio_delay();
+	}
+
+	/* Read the two transition, 16 data, and wire-idle bits. */
+	for (i = 19; i > 0; i--) {
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB_IN);
+		mdio_delay();
+		val = (val << 1) | ((DC_R32(priv, TULIP_CSR9) & MDIO_DATA_READ) ? 1 : 0);
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB_IN | TULIP_CSR9_MDC);
+		mdio_delay();
+	}
+
+	val = (val >> 1) & 0xffff;
+
+//#ifdef DEC21143_DEBUG
+#if 0
+	printf("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n", __func__,
+			phy_addr, reg, val);
+#endif
+
+	return val;
+}
+
+static int dec21143_phy_write(struct mii_device *mdev, int phy_addr,
+	int reg, int val)
+{
+	struct eth_device *edev = mdev->edev;
+	struct dec21143_priv *priv = edev->priv;
+
+	int i;
+	int cmd = (0x5002 << 16) | (priv->miidev.address << 23) | (reg << 18) | val;
+
+#ifdef DEC21143_DEBUG
+	printf("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n", __func__,
+	      phy_addr, reg, val);
+#endif
+
+	/* Establish sync by sending 32 logic ones. */
+	for (i = 32; i >= 0; i--) {
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | TULIP_MDIO_DATA1);
+		mdio_delay();
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | TULIP_MDIO_DATA1 | TULIP_CSR9_MDC);
+		mdio_delay();
+	}
+
+	/* Shift the command bits out. */
+	for (i = 31; i >= 0; i--) {
+		int dataval = (cmd & (1 << i)) ? TULIP_MDIO_DATA1 : TULIP_MDIO_DATA0;
+
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | dataval);
+		mdio_delay();
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB | dataval | TULIP_CSR9_MDC);
+		mdio_delay();
+	}
+
+	/* Clear out extra bits. */
+	for (i = 2; i > 0; i--) {
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB_IN);
+		mdio_delay();
+		DC_W32(priv, TULIP_CSR9, MDIO_ENB_IN | TULIP_CSR9_MDC);
+		mdio_delay();
+	}
+
+	return 0;
+}
+
+#define SETUP_FRAME_LEN 192
+#define ETH_ALEN	6
+#define	TOUT_LOOP	100
+
+/* FIXME */
+#define phys_to_bus(x) (0x0fffffff & (x))
+
+static void dump_rings(struct dec21143_priv *priv)
+{
+	int i;
+
+	printf("dump_rings(): tx_new = %d, rx_new = %d\n", priv->tx_new, priv->rx_new);
+
+	for (i = 0; i < NUM_RX_DESC; i++) {
+		printf("rx_ring[%d].status  = %08x\n", i, le32_to_cpu(priv->rx_ring[i].status));
+		printf("rx_ring[%d].length  = %08x\n", i, le32_to_cpu(priv->rx_ring[i].length));
+		printf("rx_ring[%d].buffer1 = %08x\n", i, le32_to_cpu(priv->rx_ring[i].buffer1));
+		printf("rx_ring[%d].buffer2 = %08x\n", i, le32_to_cpu(priv->rx_ring[i].buffer2));
+	}
+	printf("\n");
+
+	for (i = 0; i < NUM_TX_DESC; i++) {
+		printf("tx_ring[%d].status  = %08x\n", i, le32_to_cpu(priv->tx_ring[i].status));
+		printf("tx_ring[%d].length  = %08x\n", i, le32_to_cpu(priv->tx_ring[i].length));
+		printf("tx_ring[%d].buffer1 = %08x\n", i, le32_to_cpu(priv->tx_ring[i].buffer1));
+		printf("tx_ring[%d].buffer2 = %08x\n", i, le32_to_cpu(priv->tx_ring[i].buffer2));
+	}
+	printf("\n");
+	printf("TULIP_CSR0 = 0x%08x\n", DC_R32(priv, TULIP_CSR0));
+	printf("TULIP_CSR1 = 0x%08x\n", DC_R32(priv, TULIP_CSR1));
+	printf("TULIP_CSR2 = 0x%08x\n", DC_R32(priv, TULIP_CSR2));
+	printf("TULIP_CSR3 = 0x%08x\n", DC_R32(priv, TULIP_CSR3));
+	printf("TULIP_CSR4 = 0x%08x\n", DC_R32(priv, TULIP_CSR4));
+{
+	int t;
+	t = DC_R32(priv, TULIP_CSR5);
+	printf("TULIP_CSR5 = 0x%08x ", t);
+	if (t & 1) {
+		printf("<tx int>");
+	}
+	if (t & 2) {
+		printf("<tx stop>");
+	}
+	if (t & 4) {
+		printf("<tx bufun>");
+	}
+	printf("\n");
+}
+	printf("TULIP_CSR6 = 0x%08x\n", DC_R32(priv, TULIP_CSR6));
+
+}
+
+static void dec21143_send_setup_frame(struct eth_device *edev)
+{
+	struct dec21143_priv *priv = edev->priv;
+	int i;
+	char setup_frame[SETUP_FRAME_LEN];
+	char *pa = &setup_frame[15 * 6];
+	char *eaddrs[6];
+
+	/* add the broadcast address. */
+	memset(setup_frame, 0xff, SETUP_FRAME_LEN);
+
+	edev->get_ethaddr(edev, eaddrs);
+
+	/* Fill the final entry of the table with our physical address. */
+	*pa++ = eaddrs[0]; *pa++ = eaddrs[0];
+	*pa++ = eaddrs[1]; *pa++ = eaddrs[1];
+	*pa++ = eaddrs[2]; *pa++ = eaddrs[2];
+
+	dump_rings(priv);
+
+	for (i = 0; priv->tx_ring[priv->tx_new].status & cpu_to_le32(TULIP_TDES0_OWN); i++) {
+		if (i >= TOUT_LOOP) {
+			printf("%s: tx buffer not ready 0\n", edev->dev.name);
+			goto Done;
+		}
+	}
+
+	priv->tx_ring[priv->tx_new].buffer1 = cpu_to_le32(phys_to_bus((u32) &setup_frame[0]));
+	priv->tx_ring[priv->tx_new].length = cpu_to_le32(TD_TER | TULIP_TDES1_SET | SETUP_FRAME_LEN);
+	priv->tx_ring[priv->tx_new].status = cpu_to_le32(TULIP_TDES0_OWN);
+
+	DC_W32(priv, TULIP_CSR1, POLL_DEMAND);
+
+	dump_rings(priv);
+	for (i = 0; priv->tx_ring[priv->tx_new].status & cpu_to_le32(TULIP_TDES0_OWN); i++) {
+		if (i >= TOUT_LOOP) {
+			printf("%s: tx buffer not ready 1\n", edev->dev.name);
+			goto Done;
+		}
+	}
+
+	if (le32_to_cpu(priv->tx_ring[priv->tx_new].status) != 0x7FFFFFFF) {
+		printf("TX error status2 = 0x%08X\n", le32_to_cpu(priv->tx_ring[priv->tx_new].status));
+	}
+
+	priv->tx_new = (priv->tx_new + 1) % NUM_TX_DESC;
+
+	printf("============================== done\n");
+Done:
+	return;
+}
+
+/*  EEPROM_Ctrl bits. */
+#define EE_SHIFT_CLK	0x02	/* EEPROM shift clock. */
+#define EE_CS		0x01	/* EEPROM chip select. */
+#define EE_DATA_WRITE	0x04	/* Data from the Tulip to EEPROM. */
+#define EE_WRITE_0	0x01
+#define EE_WRITE_1	0x05
+#define EE_DATA_READ	0x08	/* Data from the EEPROM chip. */
+#define EE_ENB		(0x4800 | EE_CS)
+
+/* The EEPROM commands include the alway-set leading bit. */
+#define EE_READ_CMD		(6)
+
+#define eeprom_delay()	(void)DC_R32(priv, TULIP_CSR9)
+
+static int dec21143_read_eeprom(struct dec21143_priv *priv, int addr, u_int16_t *dest)
+{
+	int i;
+	unsigned retval = 0;
+	int addr_len = 6;
+	int read_cmd = addr | (EE_READ_CMD << addr_len);
+
+	DC_W32(priv, TULIP_CSR9, EE_ENB & ~EE_CS);
+	DC_W32(priv, TULIP_CSR9, EE_ENB);
+
+	/* Shift the read command bits out. */
+	for (i = 4 + addr_len; i >= 0; i--) {
+		short dataval = (read_cmd & (1 << i)) ? EE_DATA_WRITE : 0;
+		DC_W32(priv, TULIP_CSR9, EE_ENB | dataval);
+		eeprom_delay();
+		DC_W32(priv, TULIP_CSR9, EE_ENB | dataval | EE_SHIFT_CLK);
+		eeprom_delay();
+		retval = (retval << 1) | ((DC_R32(priv, TULIP_CSR9) & EE_DATA_READ) ? 1 : 0);
+	}
+	DC_W32(priv, TULIP_CSR9, EE_ENB);
+	eeprom_delay();
+
+	for (i = 16; i > 0; i--) {
+		DC_W32(priv, TULIP_CSR9, EE_ENB | EE_SHIFT_CLK);
+		eeprom_delay();
+		retval = (retval << 1) | ((DC_R32(priv, TULIP_CSR9) & EE_DATA_READ) ? 1 : 0);
+		DC_W32(priv, TULIP_CSR9, EE_ENB);
+		eeprom_delay();
+	}
+
+	/* Terminate the EEPROM access. */
+	DC_W32(priv, TULIP_CSR9, EE_ENB & ~EE_CS);
+
+	*dest = retval;
+
+	//return (tp->flags & HAS_SWAPPED_SEEPROM) ? swab16(retval) : retval;
+	return retval;
+}
+
+static int dec21143_get_ethaddr(struct eth_device *edev, unsigned char *m)
+{
+	struct dec21143_priv *priv = edev->priv;
+	int i;
+
+	for (i = 0; i < 6; i += sizeof(u16)) {
+		u_int16_t val;
+		dec21143_read_eeprom(priv, 10 + i/2, &val);
+		m[i] = val & 0xff;
+		m[i + 1] = val >> 8;
+	}
+
+	return 0;
+}
+
+static int dec21143_set_ethaddr(struct eth_device *edev,
+					unsigned char *mac_addr)
+{
+	struct dec21143_priv *priv = edev->priv;
+
+	return 0;
+}
+
+static int dec21143_init_dev(struct eth_device *edev)
+{
+	struct dec21143_priv *priv = edev->priv;
+	int i;
+
+#ifdef DEC21143_DEBUG
+	printf("%s\n", __func__);
+#endif
+
+	/* RESET_DE4X5(dev); */
+
+	i = DC_R32(priv, TULIP_CSR0);
+	udelay(1000);
+	DC_W32(priv, TULIP_CSR0, i | TULIP_CSR0_SWR);
+	udelay(1000);
+	DC_W32(priv, TULIP_CSR0, i);
+	udelay(1000);
+
+	for (i = 0; i < 5; i++) {
+		(void)DC_R32(priv, TULIP_CSR0);
+		udelay(10000);
+	}
+	udelay(1000);
+
+	if ((DC_R32(priv, TULIP_CSR5) & (STS_TS | STS_RS)) != 0) {
+		printf("Error: Cannot reset ethernet controller.\n");
+		return -1;
+	}
+
+	DC_W32(priv, TULIP_CSR6, OMR_SDP | OMR_PS | OMR_PM | 0x40);
+
+	for (i = 0; i < NUM_RX_DESC; i++) {
+		priv->rx_ring[i].status = cpu_to_le32(TULIP_RDES0_OWN);
+		priv->rx_ring[i].length = cpu_to_le32(RX_BUFF_SZ);
+		/* FIXME: VERY dirty */
+		priv->rx_ring[i].buffer1 = cpu_to_le32(phys_to_bus((u32) NetRxPackets[i]));
+#if 1
+		/* More that one descriptor */
+		priv->rx_ring[i].buffer2 = cpu_to_le32(phys_to_bus((u32) &priv->rx_ring[(i+1) % NUM_RX_DESC]));
+#else
+		priv->rx_ring[i].buffer2 = 0;
+#endif
+	}
+
+	for (i = 0; i < NUM_TX_DESC; i++) {
+		priv->tx_ring[i].status = 0;
+		priv->tx_ring[i].length = 0;
+		priv->tx_ring[i].buffer1 = 0;
+
+#if 0
+		priv->tx_ring[i].buffer2 = cpu_to_le32(phys_to_bus((u32) &priv->tx_ring[(i+1) % NUM_TX_DESC]));
+#endif
+		priv->tx_ring[i].buffer2 = 0;
+	}
+
+	/* Write the end of list marker to the descriptor lists. */
+	priv->rx_ring[NUM_RX_DESC - 1].length |= cpu_to_le32(RD_RER);
+	priv->tx_ring[NUM_TX_DESC - 1].length |= cpu_to_le32(TD_TER);
+
+//	priv->tx_ring[NUM_TX_DESC - 1].buffer2 = cpu_to_le32(phys_to_bus((u32) &priv->tx_ring[0]));
+
+	/* Tell the adapter where the TX/RX rings are located. */
+	/* FIXME: rx_ring to bus */
+	DC_W32(priv, TULIP_CSR3, phys_to_bus((u32) (priv->rx_ring)));
+	DC_W32(priv, TULIP_CSR4, phys_to_bus((u32) (priv->tx_ring)));
+
+	priv->rx_new = 0;
+	priv->tx_new = 0;
+
+	/* Start the chip's Tx to process setup frame. */
+	DC_W32(priv, TULIP_CSR6, DC_R32(priv, TULIP_CSR6)
+				| TULIP_CSR6_TXON | TULIP_CSR6_RXON);
+
+	dec21143_send_setup_frame(edev);
+
+	//miidev_restart_aneg(&priv->miidev);
+
+	return 0;
+}
+
+static int dec21143_eth_open(struct eth_device *edev)
+{
+	struct dec21143_priv *priv = edev->priv;
+
+	miidev_wait_aneg(&priv->miidev);
+	miidev_print_status(&priv->miidev);
+
+	return 0;
+}
+
+static void dec21143_eth_halt(struct eth_device *edev)
+{
+	struct dec21143_priv *priv = edev->priv;
+
+#ifdef DEC21143_DEBUG
+	printf("%s\n", __func__);
+#endif
+
+	/* Stop the Tx and Rx processes. */
+	DC_W32(priv, TULIP_CSR6, DC_R32(priv, TULIP_CSR6) &
+			~ (TULIP_CSR6_TXON | TULIP_CSR6_RXON));
+}
+
+static int dec21143_eth_send(struct eth_device *edev, void *packet,
+				int packet_length)
+{
+	struct dec21143_priv *priv = edev->priv;
+
+	int status = -1;
+	int i;
+
+#ifdef DEC21143_DEBUG
+//	printf("%s\n", __func__);
+//	memory_display(packet, 0, 70, 1);
+#endif
+
+	if (packet_length <= 0) {
+		printf("%s: bad packet size: %d\n", edev->dev.name, packet_length);
+		goto Done;
+	}
+
+	for (i = 0; priv->tx_ring[priv->tx_new].status & cpu_to_le32(TULIP_TDES0_OWN); i++) {
+		if (i >= TOUT_LOOP) {
+			printf("%s: tx error buffer not ready\n", edev->dev.name);
+			goto Done;
+		}
+	}
+
+	priv->tx_ring[priv->tx_new].buffer1 = cpu_to_le32(phys_to_bus((u32) packet));
+	priv->tx_ring[priv->tx_new].length = cpu_to_le32(TD_TER | TULIP_TDES1_LS | TULIP_TDES1_FS | packet_length);
+	priv->tx_ring[priv->tx_new].status = cpu_to_le32(TULIP_TDES0_OWN);
+
+	DC_W32(priv, TULIP_CSR1, POLL_DEMAND);
+
+	for(i = 0; priv->tx_ring[priv->tx_new].status & cpu_to_le32(TULIP_TDES0_OWN); i++) {
+		if (i >= TOUT_LOOP) {
+//			printf("%s: tx buffer not ready 2\n", edev->dev.name);
+			goto Done;
+		}
+	}
+
+	if (le32_to_cpu(priv->tx_ring[priv->tx_new].status) & TD_ES) {
+#if 0 /* test-only */
+		printf("TX error status = 0x%08X\n",
+			le32_to_cpu(priv->tx_ring[priv->tx_new].status));
+#endif
+		priv->tx_ring[priv->tx_new].status = 0x0;
+		goto Done;
+	}
+
+	status = packet_length;
+
+Done:
+	priv->tx_new = (priv->tx_new + 1) % NUM_TX_DESC;
+
+	return status;
+}
+
+static int dec21143_eth_rx(struct eth_device *edev)
+{
+	struct dec21143_priv *priv = edev->priv;
+
+	s32 status;
+	int length = 0;
+
+#ifdef DEC21143_DEBUG
+	//printf("%s rx_new=%d\n", __func__, priv->rx_new);
+	//dump_rings(priv);
+#endif
+
+	DC_W32(priv, TULIP_CSR2, POLL_DEMAND);
+
+	for ( ; ; ) {
+		status = (s32)le32_to_cpu(priv->rx_ring[priv->rx_new].status);
+
+		if (status & TULIP_RDES0_OWN) {
+			break;
+		}
+
+		if (status & RD_LS) {
+			/* Valid frame status. */
+			if (status & RD_ES) {
+				/* There was an error. */
+				printf("RX error status = 0x%08X\n", status);
+			} else {
+				/* A valid frame received. */
+				length = (le32_to_cpu(priv->rx_ring[priv->rx_new].status) >> 16);
+
+				/* Pass the packet up to the protocol layers. */
+				/* FIXME: VERY dirty */
+				//net_receive(0xa0000000 | cpu_to_le32(priv->rx_ring[priv->rx_new].buffer1), length);
+				/* Skip 4 byte CRC */
+				net_receive(NetRxPackets[priv->rx_new], length - 4);
+			}
+
+			/* Change buffer ownership for this frame, back to the adapter. */
+			priv->rx_ring[priv->rx_new].status = cpu_to_le32(TULIP_RDES0_OWN);
+			DC_W32(priv, TULIP_CSR2, POLL_DEMAND);
+		}
+
+		/* Update entry information. */
+		priv->rx_new = (priv->rx_new + 1) % NUM_RX_DESC;
+
+		break;
+	}
+
+	DC_W32(priv, TULIP_CSR2, POLL_DEMAND);
+
+	return length;
+}
+
+static int dec21143_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct eth_device *edev;
+	struct dec21143_priv *priv;
+
+	u32 bar;
+	struct pci_bus *bus = pdev->bus;
+	struct device_d *dev = &pdev->dev;
+
+#ifdef DEC21143_DEBUG
+	printf("%s\n", __func__);
+#endif
+
+	/* enable pci device */
+	pci_read_config_dword(pdev, PCI_COMMAND, &bar);
+	pci_write_config_dword(pdev, PCI_COMMAND, bar | 0x03);
+
+	edev = xzalloc(sizeof(struct eth_device) +
+			sizeof(struct dec21143_priv));
+	dev->type_data = edev;
+	priv = (struct dec21143_priv *)(edev + 1);
+
+	edev->priv = priv;
+
+	/* FIXME: unused ? */
+	priv->pci_dev = pdev;
+
+	/* FIXME: pci_resource_start() */
+	pci_read_config_dword(pdev, PCI_BASE_ADDRESS_1, &bar);
+	priv->base = (void *)bus->ops->res_start(bus, bar);
+
+	printf("found dec21142/3 (rev %02x) at %02x: %04x (base=%p)\n",
+			pdev->revision,
+			pdev->devfn,
+			(pdev->class >> 8) & 0xffff,
+			priv->base);
+
+	edev->init = dec21143_init_dev;
+	edev->open = dec21143_eth_open;
+	edev->send = dec21143_eth_send;
+	edev->recv = dec21143_eth_rx;
+	edev->get_ethaddr = dec21143_get_ethaddr;
+	edev->set_ethaddr = dec21143_set_ethaddr;
+	edev->halt = dec21143_eth_halt;
+
+	priv->miidev.read = dec21143_phy_read;
+	priv->miidev.write = dec21143_phy_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
+
+	/* FIXME: there is no warranty what this memory can be seen from pci */
+	priv->rx_ring = xzalloc(sizeof(struct rx_desc) * NUM_RX_DESC);
+	priv->tx_ring = xzalloc(sizeof(struct tx_desc) * NUM_TX_DESC);
+
+	mii_register(&priv->miidev);
+	eth_register(edev);
+
+	return 0;
+}
+
+static DEFINE_PCI_DEVICE_TABLE(dec21143_pci_tbl) = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_DEC,	PCI_DEVICE_ID_DEC_21142), },
+	{ },
+};
+
+static struct pci_driver dec21143_pci_eth_driver = {
+	.name = "dec21143_pci_eth",
+	.id_table = dec21143_pci_tbl,
+	.probe = dec21143_pci_probe,
+};
+
+static int dec21143_pci_init(void)
+{
+	pci_register_driver(&dec21143_pci_eth_driver);
+
+	return 0;
+}
+device_initcall(dec21143_pci_init);
+
+static int dec21143_eth_probe(struct device_d *dev)
+{
+	struct eth_device *edev;
+	struct dec21143_priv *priv;
+
+	edev = xzalloc(sizeof(struct eth_device) +
+			sizeof(struct dec21143_priv));
+	dev->type_data = edev;
+	priv = (struct dec21143_priv *)(edev + 1);
+
+	priv->base = dev_request_mem_region(dev, 0);
+
+	edev->priv = priv;
+
+	edev->init = dec21143_init_dev;
+	edev->open = dec21143_eth_open;
+	edev->send = dec21143_eth_send;
+	edev->recv = dec21143_eth_rx;
+	edev->get_ethaddr = dec21143_get_ethaddr;
+	edev->set_ethaddr = dec21143_set_ethaddr;
+	edev->halt = dec21143_eth_halt;
+
+	priv->miidev.read = dec21143_phy_read;
+	priv->miidev.write = dec21143_phy_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
+
+	priv->rx_ring = xzalloc(sizeof(struct rx_desc) * NUM_RX_DESC);
+	priv->tx_ring = xzalloc(sizeof(struct tx_desc) * NUM_TX_DESC);
+
+	mii_register(&priv->miidev);
+	eth_register(edev);
+
+	return 0;
+}
+
+static struct driver_d dec21143_eth_driver = {
+	.name = "dec21143_eth",
+	.probe = dec21143_eth_probe,
+};
+
+static int dec21143_eth_init(void)
+{
+	register_driver(&dec21143_eth_driver);
+
+	return 0;
+}
+device_initcall(dec21143_eth_init);
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 6523385..a10f471 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -3,6 +3,7 @@
 #
 obj-y		+= pci.o bus.o
 obj-$(CONFIG_8139)	+= rtl8139.o
+obj-$(CONFIG_21143)	+= 21143.o
 
 ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
 
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 17ac7fd..a525653 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -137,5 +137,8 @@
 
 /* Vendors and devices.  Sort key: vendor first, device next. */
 
+#define PCI_VENDOR_ID_DEC		0x1011
+#define PCI_DEVICE_ID_DEC_21142		0x0019
+
 #define PCI_VENDOR_ID_REALTEK		0x10ec
 #define PCI_DEVICE_ID_REALTEK_8139	0x8139
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
