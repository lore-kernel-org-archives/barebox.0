Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Psc-0002CD-AE
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 19:24:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0005RU-9Y
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0004Ye-8G
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 23 Jan 2014 20:23:29 +0100
Message-Id: <1390505010-7546-3-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/3] net: mv643xx: add driver support
To: barebox@lists.infradead.org

This patch adds basic support for the mv643xx gigabit
ethernet stack. It is found on several marvell orion SoCs.

The code is based on the kirkwood_egiga driver from u-boot and was renamed. It
uses dma_alloc_coherent instead of xmalloc. The huge register representing
struct was changed to register offset defines. The write and read macros got
changed to direct writel and readl calls.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/Kconfig   |   5 +
 drivers/net/Makefile  |   1 +
 drivers/net/mv643xx.c | 714 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/mv643xx.h | 473 +++++++++++++++++++++++++++++++++
 4 files changed, 1193 insertions(+)
 create mode 100644 drivers/net/mv643xx.c
 create mode 100644 drivers/net/mv643xx.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index c626416..7f9e4c8 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -139,6 +139,11 @@ config DRIVER_NET_GIANFAR
 	depends on ARCH_MPC85XX
 	select PHYLIB
 
+config DRIVER_NET_MV643XX
+	bool "MV643XX Ethernet"
+	depends on ARCH_DOVE
+	select PHYLIB
+
 source "drivers/net/usb/Kconfig"
 
 config DRIVER_NET_MICREL
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 73403fe..9cd079b 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -20,3 +20,4 @@ obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
 obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
+obj-$(CONFIG_DRIVER_NET_MV643XX)	+= mv643xx.o
diff --git a/drivers/net/mv643xx.c b/drivers/net/mv643xx.c
new file mode 100644
index 0000000..3d0bfdc
--- /dev/null
+++ b/drivers/net/mv643xx.c
@@ -0,0 +1,714 @@
+/*
+ * (C) Copyright 2014
+ * Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ * based on - kirkwood_egiga driver from u-boot
+ *
+ * (C) Copyright 2009
+ * Marvell Semiconductor <www.marvell.com>
+ * Written-by: Prafulla Wadaskar <prafulla@marvell.com>
+ *
+ * (C) Copyright 2003
+ * Ingo Assmus <ingo.assmus@keymile.com>
+ *
+ * based on - Driver for MV64360X ethernet ports
+ * Copyright (C) 2002 rabeeh@galileo.co.il
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301 USA
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <net.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <clock.h>
+#include <xfuncs.h>
+#include <linux/phy.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <of_net.h>
+#include <mach/dove-regs.h>
+#include <asm/mmu.h>
+
+#include "mv643xx.h"
+
+#define PHY_ADDR_REQUEST 0xee
+#define RINGSZ 4
+#define PKTSIZE_ALIGN 1536
+#define PKTALIGN 32
+#define NR_DRAM_BANKS 1
+/*
+ * smi_miibus_read - miiphy_read callback function.
+ *
+ * Returns 16bit phy register value, or 0xffff on error
+ */
+static int smi_miibus_read(struct mii_bus *bus, int addr, int reg)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)bus->priv;
+	u32 smi_reg;
+	u32 timeout;
+	u16 data;
+
+	/* phyaddr read request */
+	if (addr == PHY_ADDR_REQUEST &&
+			reg == PHY_ADDR_REQUEST) {
+		/* */
+		return (readl(mv643xx->regs + MV643XX_PHYADDR) & PHYADDR_MASK);
+	}
+	/* check parameters */
+	if (addr > PHYADDR_MASK) {
+		printf("Err..(%s) Invalid PHY address %d\n",
+			__FUNCTION__, addr);
+		return -EFAULT;
+	}
+	if (reg > PHYREG_MASK) {
+		printf("Err..(%s) Invalid register offset %d\n",
+			__FUNCTION__, reg);
+		return -EFAULT;
+	}
+
+	timeout = MV643XX_PHY_SMI_TIMEOUT;
+	/* wait till the SMI is not busy */
+	do {
+		/* read smi register */
+		smi_reg = readl(mv643xx->regs + MV643XX_SMI);
+		if (timeout-- == 0) {
+			printf("Err..(%s) SMI busy timeout\n", __FUNCTION__);
+			return -EFAULT;
+		}
+	} while (smi_reg & MV643XX_PHY_SMI_BUSY_MASK);
+
+	/* fill the phy address and regiser offset and read opcode */
+	smi_reg = (addr << MV643XX_PHY_SMI_DEV_ADDR_OFFS)
+		| (reg << MV643XX_SMI_REG_ADDR_OFFS)
+		| MV643XX_PHY_SMI_OPCODE_READ;
+
+	/* write the smi register */
+	writel(smi_reg, mv643xx->regs + MV643XX_SMI);
+
+	/* wait till read value is ready */
+	timeout = MV643XX_PHY_SMI_TIMEOUT;
+
+	do {
+		/* read smi register */
+		smi_reg = readl(mv643xx->regs + MV643XX_SMI);
+		if (timeout-- == 0) {
+			printf("Err..(%s) SMI read ready timeout\n",
+				__FUNCTION__);
+			return -EFAULT;
+		}
+	} while (!(smi_reg & MV643XX_PHY_SMI_READ_VALID_MASK));
+
+	/* Wait for the data to update in the SMI register */
+	for (timeout = 0; timeout < MV643XX_PHY_SMI_TIMEOUT; timeout++) ;
+
+	data = readl(mv643xx->regs + MV643XX_SMI) & MV643XX_PHY_SMI_DATA_MASK;
+
+	debug("%s:(adr %d, off %d) value= %04x\n", __FUNCTION__, addr,
+		reg, data);
+
+	return data;
+}
+
+/*
+ * smi_miibus_write - imiiphy_write callback function.
+ *
+ * Returns 0 if write succeed, -EINVAL on bad parameters
+ * -ETIME on timeout
+ */
+static int smi_miibus_write(struct mii_bus *bus, int addr,
+	int reg, u16 data)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)bus->priv;
+	u32 smi_reg;
+	u32 timeout;
+
+	/* Phyadr write request*/
+	if (addr == PHY_ADDR_REQUEST &&
+			reg == PHY_ADDR_REQUEST) {
+		writel(data, mv643xx->regs + MV643XX_PHYADDR);
+		return 0;
+	}
+
+	/* check parameters */
+	if (addr > PHYADDR_MASK) {
+		printf("Err..(%s) Invalid phy address\n", __FUNCTION__);
+		return -EINVAL;
+	}
+	if (reg > PHYREG_MASK) {
+		printf("Err..(%s) Invalid register offset\n", __FUNCTION__);
+		return -EINVAL;
+	}
+
+	/* wait till the SMI is not busy */
+	timeout = MV643XX_PHY_SMI_TIMEOUT;
+	do {
+		/* read smi register */
+		smi_reg = readl(mv643xx->regs + MV643XX_SMI);
+		if (timeout-- == 0) {
+			printf("Err..(%s) SMI busy timeout\n", __FUNCTION__);
+			return -ETIME;
+		}
+	} while (smi_reg & MV643XX_PHY_SMI_BUSY_MASK);
+
+	/* fill the phy addr and reg offset and write opcode and data */
+	smi_reg = (data << MV643XX_PHY_SMI_DATA_OFFS);
+	smi_reg |= (addr << MV643XX_PHY_SMI_DEV_ADDR_OFFS)
+		| (reg << MV643XX_SMI_REG_ADDR_OFFS);
+	smi_reg &= ~MV643XX_PHY_SMI_OPCODE_READ;
+
+	/* write the smi register */
+	writel(smi_reg, mv643xx->regs + MV643XX_SMI);
+
+	return 0;
+}
+
+/* Stop and checks all queues */
+static void stop_queue(u32 * qreg)
+{
+	u32 reg_data;
+
+	reg_data = readl(qreg);
+
+	if (reg_data & 0xFF) {
+		/* Issue stop command for active channels only */
+		writel((reg_data << 8), qreg);
+
+		/* Wait for all queue activity to terminate. */
+		do {
+			/*
+			 * Check port cause register that all queues
+			 * are stopped
+			 */
+			reg_data = readl(qreg);
+		}
+		while (reg_data & 0xFF);
+	}
+}
+
+/*
+ * set_access_control - Config address decode parameters for Ethernet unit
+ *
+ * This function configures the address decode parameters for the Gigabit
+ * Ethernet Controller according the given parameters struct.
+ *
+ * @regs	Register struct pointer.
+ * @param	Address decode parameter struct.
+ */
+static void set_access_control(struct mv643xx *mv643xx,
+				struct mv643xx_winparam *param)
+{
+	u32 access_prot_reg;
+
+	/* Set access control register */
+	access_prot_reg = readl(mv643xx->regs + MV643XX_EPAP);
+	/* clear window permission */
+	access_prot_reg &= (~(3 << (param->win * 2)));
+	access_prot_reg |= (param->access_ctrl << (param->win * 2));
+	writel(access_prot_reg, mv643xx->regs + MV643XX_EPAP);
+
+	/* Set window Size reg (SR) */
+	writel((((param->size / 0x10000) - 1) << 16), mv643xx->regs + MV643XX_BS(param->win));
+
+	/* Set window Base address reg (BA) */
+	writel((param->target | param->attrib | param->base_addr), mv643xx->regs + MV643XX_BA(param->win));
+	/* High address remap reg (HARR) */
+	if (param->win < 4)
+		writel(param->high_addr, mv643xx->regs + MV643XX_HAR(param->win));
+
+	/* Base address enable reg (BARER) */
+	if (param->enable == 1)
+		writel(readl(mv643xx->regs + MV643XX_BARE) & ~(1 << param->win), mv643xx->regs + MV643XX_BARE);
+	else
+		writel(readl(mv643xx->regs + MV643XX_BARE) | (1 << param->win), mv643xx->regs + MV643XX_BARE);
+}
+
+static void set_dram_access(struct mv643xx *mv643xx)
+{
+	struct mv643xx_winparam win_param;
+	int i;
+	unsigned long phys_base, phys_size;
+
+	dove_memory_find(&phys_base, &phys_size);
+
+	for (i = 0; i < NR_DRAM_BANKS; i++) {
+		/* Set access parameters for DRAM bank i */
+		win_param.win = i;	/* Use Ethernet window i */
+		/* Window target - DDR */
+		win_param.target = MV643XX_TARGET_DRAM;
+		/* Enable full access */
+		win_param.access_ctrl = EWIN_ACCESS_FULL;
+		win_param.high_addr = 0;
+		/* Get bank base */
+		win_param.base_addr = phys_base;
+		win_param.size = phys_size;	/* Get bank size */
+		if (win_param.size == 0)
+			win_param.enable = 0;
+		else
+			win_param.enable = 1;	/* Enable the access */
+
+		/* Enable DRAM bank */
+		switch (i) {
+		case 0:
+			win_param.attrib = EBAR_DRAM_CS0;
+			break;
+		case 1:
+			win_param.attrib = EBAR_DRAM_CS1;
+			break;
+		case 2:
+			win_param.attrib = EBAR_DRAM_CS2;
+			break;
+		case 3:
+			win_param.attrib = EBAR_DRAM_CS3;
+			break;
+		default:
+			/* invalide bank, disable access */
+			win_param.enable = 0;
+			win_param.attrib = 0;
+			break;
+		}
+		/* Set the access control for address window(EPAPR) RD/WR */
+		set_access_control(mv643xx, &win_param);
+	}
+}
+
+/*
+ * port_init_mac_tables - Clear all entrance in the UC, SMC and OMC tables
+ *
+ * Go through all the DA filter tables (Unicast, Special Multicast & Other
+ * Multicast) and set each entry to 0.
+ */
+static void port_init_mac_tables(struct mv643xx *mv643xx)
+{
+	int table_index;
+
+	/* Clear DA filter unicast table (Ex_dFUT) */
+	for (table_index = 0; table_index < 4; ++table_index)
+		writel(0, mv643xx->regs + MV643XX_DFUT(table_index));
+
+	for (table_index = 0; table_index < 64; ++table_index) {
+		/* Clear DA filter special multicast table (Ex_dFSMT) */
+		writel(0, mv643xx->regs + MV643XX_DFSMT (table_index));
+		/* Clear DA filter other multicast table (Ex_dFOMT) */
+		writel(0, mv643xx->regs + MV643XX_DFOMT(table_index));
+	}
+}
+
+/*
+ * port_uc_addr - This function Set the port unicast address table
+ *
+ * This function locates the proper entry in the Unicast table for the
+ * specified MAC nibble and sets its properties according to function
+ * parameters.
+ * This function add/removes MAC addresses from the port unicast address
+ * table.
+ *
+ * @uc_nibble	Unicast MAC Address last nibble.
+ * @option      0 = Add, 1 = remove address.
+ *
+ * RETURN: 1 if output succeeded. 0 if option parameter is invalid.
+ */
+static int port_uc_addr(struct mv643xx *mv643xx, u8 uc_nibble,
+			int option)
+{
+	u32 unicast_reg;
+	u32 tbl_offset;
+	u32 reg_offset;
+
+	/* Locate the Unicast table entry */
+	uc_nibble = (0xf & uc_nibble);
+	/* Register offset from unicast table base */
+	tbl_offset = (uc_nibble / 4);
+	/* Entry offset within the above register */
+	reg_offset = uc_nibble % 4;
+
+	switch (option) {
+	case REJECT_MAC_ADDR:
+		/*
+		 * Clear accepts frame bit at specified unicast
+		 * DA table entry
+		 */
+		unicast_reg = readl(mv643xx->regs + MV643XX_DFUT(tbl_offset));
+		unicast_reg &= (0xFF << (8 * reg_offset));
+		writel(unicast_reg, mv643xx->regs + MV643XX_DFUT(tbl_offset));
+		break;
+	case ACCEPT_MAC_ADDR:
+		/* Set accepts frame bit at unicast DA filter table entry */
+		unicast_reg = readl(mv643xx->regs + MV643XX_DFUT(tbl_offset));
+		unicast_reg &= (0xFF << (8 * reg_offset));
+		unicast_reg |= ((0x01 | (RXUQ << 1)) << (8 * reg_offset));
+		writel(unicast_reg, mv643xx->regs + MV643XX_DFUT(tbl_offset));
+		break;
+	default:
+		return 0;
+	}
+	return 1;
+}
+
+/*
+ * port_uc_addr_set - This function Set the port Unicast address.
+ */
+static void port_uc_addr_set(struct mv643xx *mv643xx, u8 * addr)
+{
+	u32 mac_h;
+	u32 mac_l;
+
+	mac_l = (addr[4] << 8) | (addr[5]);
+	mac_h = (addr[0] << 24) | (addr[1] << 16) | (addr[2] << 8) |
+		(addr[3] << 0);
+
+	writel(mac_l, mv643xx->regs + MV643XX_MACAL);
+	writel(mac_h, mv643xx->regs + MV643XX_MACAH);
+
+	/* Accept frames of this address */
+	port_uc_addr(mv643xx, addr[5], ACCEPT_MAC_ADDR);
+}
+
+/*
+ * mv643xx_init_rx_desc_ring - Curve a Rx chain desc list and buffer in memory.
+ */
+static void mv643xx_init_rx_desc_ring(struct mv643xx *mv643xx)
+{
+	struct mv643xx_rxdesc *rx_desc;
+	int i;
+
+	/* initialize the Rx descriptors ring */
+	rx_desc = mv643xx->rxdesc;
+	for (i = 0; i < RINGSZ; i++) {
+		rx_desc->cmd_sts =
+			MV643XX_BUFFER_OWNED_BY_DMA | MV643XX_RX_EN_INTERRUPT;
+		rx_desc->buf_size = PKTSIZE_ALIGN;
+		rx_desc->byte_cnt = 0;
+		rx_desc->buf_ptr = mv643xx->rxbuf + i * PKTSIZE_ALIGN;
+		if (i == (RINGSZ - 1))
+			rx_desc->nxtdesc = mv643xx->rxdesc;
+		else {
+			rx_desc->nxtdesc = (struct mv643xx_rxdesc *)
+				((u32) rx_desc + KW_RXQ_DESC_ALIGNED_SIZE);
+			rx_desc = rx_desc->nxtdesc;
+		}
+	}
+	mv643xx->rxdesc_curr = mv643xx->rxdesc;
+}
+
+static int mv643xx_init(struct eth_device *dev)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)dev->priv;
+
+	/* setup RX rings */
+	mv643xx_init_rx_desc_ring(mv643xx);
+
+	/* Clear the ethernet port interrupts */
+	writel(0, mv643xx->regs + MV643XX_IC);
+	writel(0, mv643xx->regs + MV643XX_ICE);
+	/* Unmask RX buffer and TX end interrupt */
+	writel(INT_CAUSE_UNMASK_ALL, mv643xx->regs + MV643XX_PIM);
+	/* Unmask phy and link status changes interrupts */
+	writel(INT_CAUSE_UNMASK_ALL_EXT, mv643xx->regs + MV643XX_PEIM);
+
+	set_dram_access(mv643xx);
+
+	/* Assign port configuration and command. */
+	writel(PRT_CFG_VAL, mv643xx->regs + MV643XX_PXC);
+	writel(PORT_CFG_EXTEND_VALUE, mv643xx->regs + MV643XX_PXCX);
+	writel(PORT_SERIAL_CONTROL_VALUE, mv643xx->regs + MV643XX_PSC0);
+	/* Disable port initially */
+	writel(readl(mv643xx->regs + MV643XX_PSC0) | MV643XX_SERIAL_PORT_EN, mv643xx->regs + MV643XX_PSC0);
+
+	/* Assign port SDMA configuration */
+	writel(PORT_SDMA_CFG_VALUE, mv643xx->regs + MV643XX_SDC);
+	writel(QTKNBKT_DEF_VAL, mv643xx->regs + MV643XX_TQX(0) + MV643XX_QXTTBC);
+	writel((QMTBS_DEF_VAL << 16) | QTKNRT_DEF_VAL, mv643xx->regs + MV643XX_TQX(0) + MV643XX_TQXTBC);
+	/* Turn off the port/RXUQ bandwidth limitation */
+	writel(0, mv643xx->regs + MV643XX_PMTU);
+
+	/* Set maximum receive buffer to 9700 bytes */
+	writel(MV643XX_MAX_RX_PACKET_9700BYTE | (readl(mv643xx->regs + MV643XX_PSC0) & MRU_MASK),
+		mv643xx->regs + MV643XX_PSC0);
+
+	/*
+	 * Set ethernet MTU for leaky bucket mechanism to 0 - this will
+	 * disable the leaky bucket mechanism .
+	 */
+	writel(0, mv643xx->regs + MV643XX_PMTU);
+
+	/* Assignment of Rx CRDB of given RXUQ */
+	writel((u32) mv643xx->rxdesc_curr, mv643xx->regs + MV643XX_RXCDP(RXUQ));
+	/* Enable port Rx. */
+	writel((1 << RXUQ), mv643xx->regs + MV643XX_RQC);
+
+	return -1;
+}
+
+static void mv643xx_halt(struct eth_device *dev)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)dev->priv;
+
+	/* Disable all gigE address decoder */
+	writel(0x3f, mv643xx->regs + MV643XX_BARE);
+
+	stop_queue(mv643xx->regs + MV643XX_TQC);
+	stop_queue(mv643xx->regs + MV643XX_RQC);
+
+	/* Enable port */
+	writel(readl(mv643xx->regs + MV643XX_PSC0) & ~(MV643XX_SERIAL_PORT_EN), mv643xx->regs + MV643XX_PSC0);
+	/* Set port is not reset */
+	writel(readl(mv643xx->regs + MV643XX_PSC1) & ~(1 << 4), mv643xx->regs + MV643XX_PSC1);
+	/* Disable & mask ethernet port interrupts */
+	writel(0, mv643xx->regs + MV643XX_IC);
+	writel(0, mv643xx->regs + MV643XX_ICE);
+	writel(0, mv643xx->regs + MV643XX_PIM);
+	writel(0, mv643xx->regs + MV643XX_PEIM);
+
+	return;
+}
+
+static int mv643xx_send(struct eth_device *dev, void *eth_data, int data_length)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)dev->priv;
+	struct mv643xx_txdesc *txdesc = mv643xx->txdesc;
+	int timeout = MV643XX_PHY_SMI_TIMEOUT;
+	void *p = (void *)eth_data;
+	u32 cmd_sts;
+
+	dma_flush_range((unsigned long)p,
+		       (unsigned long)p + PKTSIZE_ALIGN);
+
+	txdesc->cmd_sts = MV643XX_ZERO_PADDING | MV643XX_GEN_CRC;
+	txdesc->cmd_sts |= MV643XX_TX_FIRST_DESC | MV643XX_TX_LAST_DESC;
+	txdesc->cmd_sts |= MV643XX_BUFFER_OWNED_BY_DMA;
+	txdesc->cmd_sts |= MV643XX_TX_EN_INTERRUPT;
+	txdesc->buf_ptr = (char *) p;
+	txdesc->byte_cnt = data_length;
+
+	/* Apply send command using zeroth RXUQ */
+	writel((u32) txdesc, mv643xx->regs + MV643XX_TCQDP);
+	writel((1 << TXUQ), mv643xx->regs + MV643XX_TQC);
+
+	/*
+	 * wait for packet xmit completion
+	 */
+	cmd_sts = readl(&txdesc->cmd_sts);
+	while (cmd_sts & MV643XX_BUFFER_OWNED_BY_DMA && --timeout) {
+		/* return fail if error is detected */
+		if ((cmd_sts & (MV643XX_ERROR_SUMMARY | MV643XX_TX_LAST_FRAME)) ==
+				(MV643XX_ERROR_SUMMARY | MV643XX_TX_LAST_FRAME) &&
+				cmd_sts & (MV643XX_UR_ERROR | MV643XX_RL_ERROR)) {
+			printf("Err..(%s) in xmit packet\n", __FUNCTION__);
+			return -1;
+		}
+		cmd_sts = readl(&txdesc->cmd_sts);
+	};
+	if(!timeout)
+		return -ETIMEDOUT;
+	return 0;
+}
+
+static int mv643xx_recv(struct eth_device *dev)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)dev->priv;
+	struct mv643xx_rxdesc *rxdesc_curr = mv643xx->rxdesc_curr;
+	u32 cmd_sts;
+	u32 timeout = 0;
+	dma_inv_range((unsigned long)rxdesc_curr->buf_ptr,
+		      (unsigned long)rxdesc_curr->buf_ptr + PKTSIZE_ALIGN);
+
+	/* wait untill rx packet available or timeout */
+	do {
+		if (timeout < MV643XX_PHY_SMI_TIMEOUT) {
+			timeout++;
+		} else {
+			debug("%s time out...\n", __FUNCTION__);
+			return -ETIMEDOUT;
+		}
+	} while (readl(&rxdesc_curr->cmd_sts) & MV643XX_BUFFER_OWNED_BY_DMA);
+
+	if (rxdesc_curr->byte_cnt != 0) {
+		debug("%s: Received %d byte Packet @ 0x%x (cmd_sts= %08x)\n",
+			__FUNCTION__, (u32) rxdesc_curr->byte_cnt,
+			(u32) rxdesc_curr->buf_ptr,
+			(u32) rxdesc_curr->cmd_sts);
+	}
+
+	/*
+	 * In case received a packet without first/last bits on
+	 * OR the error summary bit is on,
+	 * the packets needs to be dropeed.
+	 */
+	cmd_sts = readl(&rxdesc_curr->cmd_sts);
+
+	if ((cmd_sts &
+		(MV643XX_RX_FIRST_DESC | MV643XX_RX_LAST_DESC))
+		!= (MV643XX_RX_FIRST_DESC | MV643XX_RX_LAST_DESC)) {
+
+		printf("Err..(%s) Dropping packet spread on"
+			" multiple descriptors\n", __FUNCTION__);
+
+	} else if (cmd_sts & MV643XX_ERROR_SUMMARY) {
+
+		printf("Err..(%s) Dropping packet with errors\n",
+			__FUNCTION__);
+
+	} else {
+		/* !!! call higher layer processing */
+		debug("%s: Sending Received packet to"
+			" upper layer (NetReceive)\n", __FUNCTION__);
+
+		/* let the upper layer handle the packet */
+		net_receive((rxdesc_curr->buf_ptr + RX_BUF_OFFSET),
+			(int)(rxdesc_curr->byte_cnt - RX_BUF_OFFSET));
+	}
+	/*
+	 * free these descriptors and point next in the ring
+	 */
+	rxdesc_curr->cmd_sts =
+		MV643XX_BUFFER_OWNED_BY_DMA | MV643XX_RX_EN_INTERRUPT;
+	rxdesc_curr->buf_size = PKTSIZE_ALIGN;
+	rxdesc_curr->byte_cnt = 0;
+
+	writel((unsigned)rxdesc_curr->nxtdesc, &mv643xx->rxdesc_curr);
+
+	return 0;
+}
+
+static int mv643xx_set_hwaddr(struct eth_device *dev, unsigned char *mac)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)dev->priv;
+
+	port_init_mac_tables(mv643xx);
+	port_uc_addr_set(mv643xx, mac);
+	return 0;
+}
+
+static int mv643xx_get_hwaddr(struct eth_device *dev, unsigned char *mac)
+{
+	return -1;
+}
+
+static int mv643xx_open(struct eth_device *dev)
+{
+	struct mv643xx *mv643xx = (struct mv643xx *)dev->priv;
+	int ret;
+
+
+	ret = phy_device_connect(dev, &mv643xx->miibus, mv643xx->phy_addr, NULL, 0,
+				 mv643xx->interface);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+#ifdef CONFIG_OFDEVICE
+static int mv643xx_probe_dt(struct device_d *dev, struct mv643xx *mv643xx)
+{
+	int ret;
+
+	ret = of_get_phy_mode(dev->device_node);
+	if (ret < 0)
+		mv643xx->interface = PHY_INTERFACE_MODE_MII;
+	else
+		mv643xx->interface = ret;
+
+	return 0;
+}
+#else
+static int mv643xx_probe_dt(struct device_d *dev, struct fec_priv *fec)
+{
+	return -ENODEV;
+}
+#endif
+
+static int mv643xx_probe(struct device_d *dev)
+{
+	struct eth_device *edev;
+	struct mv643xx *mv643xx;
+
+	mv643xx = xzalloc(sizeof(struct mv643xx));
+
+	mv643xx->rxdesc = dma_alloc_coherent(KW_RXQ_DESC_ALIGNED_SIZE * (RINGSZ + 1));
+	mv643xx->rxbuf = dma_alloc((RINGSZ + 1) * (PKTSIZE_ALIGN));
+	mv643xx->txdesc = dma_alloc_coherent(KW_RXQ_DESC_ALIGNED_SIZE);
+
+	edev = &mv643xx->edev;
+	dev->priv = mv643xx;
+	edev->priv = mv643xx;
+	edev->open = mv643xx_open;
+	edev->send = mv643xx_send;
+	edev->recv = mv643xx_recv;
+	edev->halt = mv643xx_halt;
+	edev->set_ethaddr = mv643xx_set_hwaddr;
+	edev->get_ethaddr = mv643xx_get_hwaddr;
+	edev->parent = dev;
+
+	mv643xx->regs = dev_request_mem_region(dev, 0);
+
+	if (dev->device_node)
+		mv643xx_probe_dt(dev, mv643xx);
+	else
+		mv643xx->interface = PHY_INTERFACE_MODE_MII;
+
+	mv643xx->phy_addr = -1;
+
+	mv643xx_init(edev);
+
+	mv643xx->miibus.read = smi_miibus_read;
+	mv643xx->miibus.write = smi_miibus_write;
+
+	mv643xx->miibus.priv = mv643xx;
+	mv643xx->miibus.parent = dev;
+
+	mdiobus_register(&mv643xx->miibus);
+
+	eth_register(edev);
+	return 0;
+}
+
+static void mv643xx_remove(struct device_d *dev)
+{
+	struct mv643xx *mv643xx = dev->priv;
+
+	mv643xx_halt(&mv643xx->edev);
+}
+
+static __maybe_unused struct of_device_id mv_mv643xx_dt_ids[] = {
+	{
+		.compatible = "marvell,orion-eth",
+		.data = 0,
+	},
+};
+
+static struct platform_device_id mv_mv643xx_ids[] = {
+	{
+		.name = "mv643xx",
+	},
+};
+
+/**
+ * Driver description for registering
+ */
+static struct driver_d mv643xx_driver = {
+	.name   = "mv643xx",
+	.probe  = mv643xx_probe,
+	.remove = mv643xx_remove,
+	.of_compatible = DRV_OF_COMPAT(mv_mv643xx_dt_ids),
+	.id_table = mv_mv643xx_ids,
+};
+device_platform_driver(mv643xx_driver);
diff --git a/drivers/net/mv643xx.h b/drivers/net/mv643xx.h
new file mode 100644
index 0000000..6a9e2d9
--- /dev/null
+++ b/drivers/net/mv643xx.h
@@ -0,0 +1,473 @@
+/*
+ * (C) Copyright 2014
+ * Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ * based on - kirkwood_egiga driver from u-boot
+ *
+ * (C) Copyright 2009
+ * Marvell Semiconductor <www.marvell.com>
+ * Written-by: Prafulla Wadaskar <prafulla@marvell.com>
+ *
+ * based on - Driver for MV64360X ethernet ports
+ * Copyright (C) 2002 rabeeh@galileo.co.il
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301 USA
+ */
+
+#ifndef __EGIGA_H__
+#define __EGIGA_H__
+
+#define MAX_MV643XX_DEVS	2	/*controller has two ports */
+
+/* PHY_BASE_ADR is board specific and can be configured */
+#if defined (CONFIG_PHY_BASE_ADR)
+#define PHY_BASE_ADR		CONFIG_PHY_BASE_ADR
+#else
+#define PHY_BASE_ADR		0x08	/* default phy base addr */
+#endif
+
+/* Constants */
+#define INT_CAUSE_UNMASK_ALL		0x0007ffff
+#define INT_CAUSE_UNMASK_ALL_EXT	0x0011ffff
+#define MRU_MASK			0xfff1ffff
+#define PHYADDR_MASK			0x0000001f
+#define PHYREG_MASK			0x0000001f
+#define QTKNBKT_DEF_VAL			0x3fffffff
+#define QMTBS_DEF_VAL			0x000003ff
+#define QTKNRT_DEF_VAL			0x0000fcff
+#define RXUQ	0 /* Used Rx queue */
+#define TXUQ	0 /* Used Rx queue */
+
+#define to_dmv643xx(_kd) container_of(_kd, struct mv643xx_device, dev)
+#define MV643XXREG_WR(adr, val)		writel(val, &adr)
+#define MV643XXREG_RD(adr)		readl(&adr)
+#define MV643XXREG_BITS_RESET(adr, val)	writel(readl(&adr) & ~(val), &adr)
+#define MV643XXREG_BITS_SET(adr, val)	writel(readl(&adr) | val, &adr)
+
+/* Default port configuration value */
+#define PRT_CFG_VAL			( \
+	MV643XX_UCAST_MOD_NRML		| \
+	MV643XX_DFLT_RXQ(RXUQ)		| \
+	MV643XX_DFLT_RX_ARPQ(RXUQ)	| \
+	MV643XX_RX_BC_IF_NOT_IP_OR_ARP	| \
+	MV643XX_RX_BC_IF_IP		| \
+	MV643XX_RX_BC_IF_ARP		| \
+	MV643XX_CPTR_TCP_FRMS_DIS		| \
+	MV643XX_CPTR_UDP_FRMS_DIS		| \
+	MV643XX_DFLT_RX_TCPQ(RXUQ)	| \
+	MV643XX_DFLT_RX_UDPQ(RXUQ)	| \
+	MV643XX_DFLT_RX_BPDUQ(RXUQ))
+
+/* Default port extend configuration value */
+#define PORT_CFG_EXTEND_VALUE		\
+	MV643XX_SPAN_BPDU_PACKETS_AS_NORMAL	| \
+	MV643XX_PARTITION_DIS		| \
+	MV643XX_TX_CRC_GENERATION_EN
+
+#define GT_MV643XX_IPG_INT_RX(value)	((value & 0x3fff) << 8)
+
+/* Default sdma control value */
+#define PORT_SDMA_CFG_VALUE		( \
+	MV643XX_RX_BURST_SIZE_16_64BIT	| \
+	MV643XX_BLM_RX_NO_SWAP		| \
+	MV643XX_BLM_TX_NO_SWAP		| \
+	GT_MV643XX_IPG_INT_RX(RXUQ)	| \
+	MV643XX_TX_BURST_SIZE_16_64BIT)
+
+/* Default port serial control value */
+#define PORT_SERIAL_CONTROL_VALUE		( \
+	MV643XX_FORCE_LINK_PASS			| \
+	MV643XX_DIS_AUTO_NEG_FOR_DUPLX		| \
+	MV643XX_DIS_AUTO_NEG_FOR_FLOW_CTRL	| \
+	MV643XX_ADV_NO_FLOW_CTRL			| \
+	MV643XX_FORCE_FC_MODE_NO_PAUSE_DIS_TX	| \
+	MV643XX_FORCE_BP_MODE_NO_JAM		| \
+	(1 << 9) /* Reserved bit has to be 1 */	| \
+	MV643XX_DO_NOT_FORCE_LINK_FAIL		| \
+	MV643XX_EN_AUTO_NEG_SPEED_GMII		| \
+	MV643XX_DTE_ADV_0				| \
+	MV643XX_MIIPHY_MAC_MODE			| \
+	MV643XX_AUTO_NEG_NO_CHANGE		| \
+	MV643XX_MAX_RX_PACKET_1552BYTE		| \
+	MV643XX_CLR_EXT_LOOPBACK			| \
+	MV643XX_SET_FULL_DUPLEX_MODE		| \
+	MV643XX_DIS_FLOW_CTRL_TX_RX_IN_FULL_DUPLEX)
+
+/* Tx WRR confoguration macros */
+#define PORT_MAX_TRAN_UNIT	0x24	/* MTU register (default) 9KByte */
+#define PORT_MAX_TOKEN_BUCKET_SIZE	0x_FFFF	/* PMTBS reg (default) */
+#define PORT_TOKEN_RATE		1023	/* PTTBRC reg (default) */
+/* MAC accepet/reject macros */
+#define ACCEPT_MAC_ADDR		0
+#define REJECT_MAC_ADDR		1
+/* Size of a Tx/Rx descriptor used in chain list data structure */
+#define KW_RXQ_DESC_ALIGNED_SIZE	\
+	(((sizeof(struct mv643xx_rxdesc) / PKTALIGN) + 1) * PKTALIGN)
+/* Buffer offset from buffer pointer */
+#define RX_BUF_OFFSET		0x2
+
+/* Port serial status reg (PSR) */
+#define MV643XX_INTERFACE_GMII_MII	0
+#define MV643XX_INTERFACE_PCM		1
+#define MV643XX_LINK_IS_DOWN		0
+#define MV643XX_LINK_IS_UP		(1 << 1)
+#define MV643XX_PORT_AT_HALF_DUPLEX	0
+#define MV643XX_PORT_AT_FULL_DUPLEX	(1 << 2)
+#define MV643XX_RX_FLOW_CTRL_DISD		0
+#define MV643XX_RX_FLOW_CTRL_ENBALED	(1 << 3)
+#define MV643XX_GMII_SPEED_100_10		0
+#define MV643XX_GMII_SPEED_1000		(1 << 4)
+#define MV643XX_MII_SPEED_10		0
+#define MV643XX_MII_SPEED_100		(1 << 5)
+#define MV643XX_NO_TX			0
+#define MV643XX_TX_IN_PROGRESS		(1 << 7)
+#define MV643XX_BYPASS_NO_ACTIVE		0
+#define MV643XX_BYPASS_ACTIVE		(1 << 8)
+#define MV643XX_PORT_NOT_AT_PARTN_STT	0
+#define MV643XX_PORT_AT_PARTN_STT		(1 << 9)
+#define MV643XX_PORT_TX_FIFO_NOT_EMPTY	0
+#define MV643XX_PORT_TX_FIFO_EMPTY	(1 << 10)
+
+/* These macros describes the Port configuration reg (Px_cR) bits */
+#define MV643XX_UCAST_MOD_NRML		0
+#define MV643XX_UNICAST_PROMISCUOUS_MODE	1
+#define MV643XX_DFLT_RXQ(_x)		(_x << 1)
+#define MV643XX_DFLT_RX_ARPQ(_x)		(_x << 4)
+#define MV643XX_RX_BC_IF_NOT_IP_OR_ARP	0
+#define MV643XX_REJECT_BC_IF_NOT_IP_OR_ARP (1 << 7)
+#define MV643XX_RX_BC_IF_IP		0
+#define MV643XX_REJECT_BC_IF_IP		(1 << 8)
+#define MV643XX_RX_BC_IF_ARP		0
+#define MV643XX_REJECT_BC_IF_ARP		(1 << 9)
+#define MV643XX_TX_AM_NO_UPDATE_ERR_SMRY	(1 << 12)
+#define MV643XX_CPTR_TCP_FRMS_DIS		0
+#define MV643XX_CPTR_TCP_FRMS_EN		(1 << 14)
+#define MV643XX_CPTR_UDP_FRMS_DIS		0
+#define MV643XX_CPTR_UDP_FRMS_EN		(1 << 15)
+#define MV643XX_DFLT_RX_TCPQ(_x)		(_x << 16)
+#define MV643XX_DFLT_RX_UDPQ(_x)		(_x << 19)
+#define MV643XX_DFLT_RX_BPDUQ(_x)		(_x << 22)
+#define MV643XX_DFLT_RX_TCP_CHKSUM_MODE	(1 << 25)
+
+/* These macros describes the Port configuration extend reg (Px_cXR) bits*/
+#define MV643XX_CLASSIFY_EN			1
+#define MV643XX_SPAN_BPDU_PACKETS_AS_NORMAL	0
+#define MV643XX_SPAN_BPDU_PACKETS_TO_RX_Q7	(1 << 1)
+#define MV643XX_PARTITION_DIS			0
+#define MV643XX_PARTITION_EN			(1 << 2)
+#define MV643XX_TX_CRC_GENERATION_EN		0
+#define MV643XX_TX_CRC_GENERATION_DIS		(1 << 3)
+
+/* These macros describes the Port Sdma configuration reg (SDCR) bits */
+#define MV643XX_RIFB				1
+#define MV643XX_RX_BURST_SIZE_1_64BIT		0
+#define MV643XX_RX_BURST_SIZE_2_64BIT		(1 << 1)
+#define MV643XX_RX_BURST_SIZE_4_64BIT		(1 << 2)
+#define MV643XX_RX_BURST_SIZE_8_64BIT		((1 << 2) | (1 << 1))
+#define MV643XX_RX_BURST_SIZE_16_64BIT		(1 << 3)
+#define MV643XX_BLM_RX_NO_SWAP			(1 << 4)
+#define MV643XX_BLM_RX_BYTE_SWAP			0
+#define MV643XX_BLM_TX_NO_SWAP			(1 << 5)
+#define MV643XX_BLM_TX_BYTE_SWAP			0
+#define MV643XX_DESCRIPTORS_BYTE_SWAP		(1 << 6)
+#define MV643XX_DESCRIPTORS_NO_SWAP		0
+#define MV643XX_TX_BURST_SIZE_1_64BIT		0
+#define MV643XX_TX_BURST_SIZE_2_64BIT		(1 << 22)
+#define MV643XX_TX_BURST_SIZE_4_64BIT		(1 << 23)
+#define MV643XX_TX_BURST_SIZE_8_64BIT		((1 << 23) | (1 << 22))
+#define MV643XX_TX_BURST_SIZE_16_64BIT		(1 << 24)
+
+/* These macros describes the Port serial control reg (PSCR) bits */
+#define MV643XX_SERIAL_PORT_DIS			0
+#define MV643XX_SERIAL_PORT_EN			1
+#define MV643XX_FORCE_LINK_PASS			(1 << 1)
+#define MV643XX_DO_NOT_FORCE_LINK_PASS		0
+#define MV643XX_EN_AUTO_NEG_FOR_DUPLX		0
+#define MV643XX_DIS_AUTO_NEG_FOR_DUPLX		(1 << 2)
+#define MV643XX_EN_AUTO_NEG_FOR_FLOW_CTRL		0
+#define MV643XX_DIS_AUTO_NEG_FOR_FLOW_CTRL	(1 << 3)
+#define MV643XX_ADV_NO_FLOW_CTRL			0
+#define MV643XX_ADV_SYMMETRIC_FLOW_CTRL		(1 << 4)
+#define MV643XX_FORCE_FC_MODE_NO_PAUSE_DIS_TX	0
+#define MV643XX_FORCE_FC_MODE_TX_PAUSE_DIS	(1 << 5)
+#define MV643XX_FORCE_BP_MODE_NO_JAM		0
+#define MV643XX_FORCE_BP_MODE_JAM_TX		(1 << 7)
+#define MV643XX_FORCE_BP_MODE_JAM_TX_ON_RX_ERR	(1 << 8)
+#define MV643XX_FORCE_LINK_FAIL			0
+#define MV643XX_DO_NOT_FORCE_LINK_FAIL		(1 << 10)
+#define MV643XX_DIS_AUTO_NEG_SPEED_GMII		(1 << 13)
+#define MV643XX_EN_AUTO_NEG_SPEED_GMII		0
+#define MV643XX_DTE_ADV_0				0
+#define MV643XX_DTE_ADV_1				(1 << 14)
+#define MV643XX_MIIPHY_MAC_MODE			0
+#define MV643XX_MIIPHY_PHY_MODE			(1 << 15)
+#define MV643XX_AUTO_NEG_NO_CHANGE		0
+#define MV643XX_RESTART_AUTO_NEG			(1 << 16)
+#define MV643XX_MAX_RX_PACKET_1518BYTE		0
+#define MV643XX_MAX_RX_PACKET_1522BYTE		(1 << 17)
+#define MV643XX_MAX_RX_PACKET_1552BYTE		(1 << 18)
+#define MV643XX_MAX_RX_PACKET_9022BYTE		((1 << 18) | (1 << 17))
+#define MV643XX_MAX_RX_PACKET_9192BYTE		(1 << 19)
+#define MV643XX_MAX_RX_PACKET_9700BYTE		((1 << 19) | (1 << 17))
+#define MV643XX_SET_EXT_LOOPBACK			(1 << 20)
+#define MV643XX_CLR_EXT_LOOPBACK			0
+#define MV643XX_SET_FULL_DUPLEX_MODE		(1 << 21)
+#define MV643XX_SET_HALF_DUPLEX_MODE		0
+#define MV643XX_EN_FLOW_CTRL_TX_RX_IN_FULL_DUPLEX	(1 << 22)
+#define MV643XX_DIS_FLOW_CTRL_TX_RX_IN_FULL_DUPLEX 0
+#define MV643XX_SET_GMII_SPEED_TO_10_100		0
+#define MV643XX_SET_GMII_SPEED_TO_1000		(1 << 23)
+#define MV643XX_SET_MII_SPEED_TO_10		0
+#define MV643XX_SET_MII_SPEED_TO_100		(1 << 24)
+
+/* SMI register fields */
+#define MV643XX_PHY_SMI_TIMEOUT		10000
+#define MV643XX_PHY_SMI_DATA_OFFS		0	/* Data */
+#define MV643XX_PHY_SMI_DATA_MASK		(0xffff << MV643XX_PHY_SMI_DATA_OFFS)
+#define MV643XX_PHY_SMI_DEV_ADDR_OFFS	16	/* PHY device address */
+#define MV643XX_PHY_SMI_DEV_ADDR_MASK	(PHYADR_MASK << MV643XX_PHY_SMI_DEV_ADDR_OFFS)
+#define MV643XX_SMI_REG_ADDR_OFFS		21	/* PHY device reg addr */
+#define MV643XX_SMI_REG_ADDR_MASK		(PHYADR_MASK << MV643XX_SMI_REG_ADDR_OFFS)
+#define MV643XX_PHY_SMI_OPCODE_OFFS	26	/* Write/Read opcode */
+#define MV643XX_PHY_SMI_OPCODE_MASK	(3 << MV643XX_PHY_SMI_OPCODE_OFFS)
+#define MV643XX_PHY_SMI_OPCODE_WRITE	(0 << MV643XX_PHY_SMI_OPCODE_OFFS)
+#define MV643XX_PHY_SMI_OPCODE_READ	(1 << MV643XX_PHY_SMI_OPCODE_OFFS)
+#define MV643XX_PHY_SMI_READ_VALID_MASK	(1 << 27)	/* Read Valid */
+#define MV643XX_PHY_SMI_BUSY_MASK		(1 << 28)	/* Busy */
+
+/* SDMA command status fields macros */
+/* Tx & Rx descriptors status */
+#define MV643XX_ERROR_SUMMARY		1
+/* Tx & Rx descriptors command */
+#define MV643XX_BUFFER_OWNED_BY_DMA	(1 << 31)
+/* Tx descriptors status */
+#define MV643XX_LC_ERROR			0
+#define MV643XX_UR_ERROR			(1 << 1)
+#define MV643XX_RL_ERROR			(1 << 2)
+#define MV643XX_LLC_SNAP_FORMAT		(1 << 9)
+#define MV643XX_TX_LAST_FRAME		(1 << 20)
+
+/* Rx descriptors status */
+#define MV643XX_CRC_ERROR			0
+#define MV643XX_OVERRUN_ERROR		(1 << 1)
+#define MV643XX_MAX_FRAME_LENGTH_ERROR	(1 << 2)
+#define MV643XX_RESOURCE_ERROR		((1 << 2) | (1 << 1))
+#define MV643XX_VLAN_TAGGED		(1 << 19)
+#define MV643XX_BPDU_FRAME		(1 << 20)
+#define MV643XX_TCP_FRAME_OVER_IP_V_4	0
+#define MV643XX_UDP_FRAME_OVER_IP_V_4	(1 << 21)
+#define MV643XX_OTHER_FRAME_TYPE		(1 << 22)
+#define MV643XX_LAYER_2_IS_MV643XX_V_2	(1 << 23)
+#define MV643XX_FRAME_TYPE_IP_V_4		(1 << 24)
+#define MV643XX_FRAME_HEADER_OK		(1 << 25)
+#define MV643XX_RX_LAST_DESC		(1 << 26)
+#define MV643XX_RX_FIRST_DESC		(1 << 27)
+#define MV643XX_UNKNOWN_DESTINATION_ADDR	(1 << 28)
+#define MV643XX_RX_EN_INTERRUPT		(1 << 29)
+#define MV643XX_LAYER_4_CHECKSUM_OK	(1 << 30)
+
+/* Rx descriptors byte count */
+#define MV643XX_FRAME_FRAGMENTED		(1 << 2)
+
+/* Tx descriptors command */
+#define MV643XX_LAYER_4_CHECKSUM_FIRST_DESC	(1 << 10)
+#define MV643XX_FRAME_SET_TO_VLAN			(1 << 15)
+#define MV643XX_TCP_FRAME				0
+#define MV643XX_UDP_FRAME				(1 << 16)
+#define MV643XX_GEN_TCP_UDP_CHECKSUM		(1 << 17)
+#define MV643XX_GEN_IP_V_4_CHECKSUM		(1 << 18)
+#define MV643XX_ZERO_PADDING			(1 << 19)
+#define MV643XX_TX_LAST_DESC			(1 << 20)
+#define MV643XX_TX_FIRST_DESC			(1 << 21)
+#define MV643XX_GEN_CRC				(1 << 22)
+#define MV643XX_TX_EN_INTERRUPT			(1 << 23)
+#define MV643XX_AUTO_MODE				(1 << 30)
+
+/* Address decode parameters */
+/* Ethernet Base Address Register bits */
+#define EBAR_TARGET_DRAM			0x00000000
+#define EBAR_TARGET_DEVICE			0x00000001
+#define EBAR_TARGET_CBS				0x00000002
+#define EBAR_TARGET_PCI0			0x00000003
+#define EBAR_TARGET_PCI1			0x00000004
+#define EBAR_TARGET_CUNIT			0x00000005
+#define EBAR_TARGET_AUNIT			0x00000006
+#define EBAR_TARGET_GUNIT			0x00000007
+
+/* Window attrib */
+#define EBAR_DRAM_CS0				0x00000E00
+#define EBAR_DRAM_CS1				0x00000D00
+#define EBAR_DRAM_CS2				0x00000B00
+#define EBAR_DRAM_CS3				0x00000700
+
+/* DRAM Target interface */
+#define EBAR_DRAM_NO_CACHE_COHERENCY		0x00000000
+#define EBAR_DRAM_CACHE_COHERENCY_WT		0x00001000
+#define EBAR_DRAM_CACHE_COHERENCY_WB		0x00002000
+
+/* Device Bus Target interface */
+#define EBAR_DEVICE_DEVCS0			0x00001E00
+#define EBAR_DEVICE_DEVCS1			0x00001D00
+#define EBAR_DEVICE_DEVCS2			0x00001B00
+#define EBAR_DEVICE_DEVCS3			0x00001700
+#define EBAR_DEVICE_BOOTCS3			0x00000F00
+
+/* PCI Target interface */
+#define EBAR_PCI_BYTE_SWAP			0x00000000
+#define EBAR_PCI_NO_SWAP			0x00000100
+#define EBAR_PCI_BYTE_WORD_SWAP			0x00000200
+#define EBAR_PCI_WORD_SWAP			0x00000300
+#define EBAR_PCI_NO_SNOOP_NOT_ASSERT		0x00000000
+#define EBAR_PCI_NO_SNOOP_ASSERT		0x00000400
+#define EBAR_PCI_IO_SPACE			0x00000000
+#define EBAR_PCI_MEMORY_SPACE			0x00000800
+#define EBAR_PCI_REQ64_FORCE			0x00000000
+#define EBAR_PCI_REQ64_SIZE			0x00001000
+
+/* Window access control */
+#define EWIN_ACCESS_NOT_ALLOWED 0
+#define EWIN_ACCESS_READ_ONLY	1
+#define EWIN_ACCESS_FULL	((1 << 1) | 1)
+
+#define	MV643XX_QXTTBC		0x0
+#define	MV643XX_TQXTBC		0x4
+#define	MV643XX_TQXAC		0x8
+
+#define	MV643XX_PHYADDR		0x0
+#define	MV643XX_SMI		0x4
+#define	MV643XX_EUDA		0x8
+#define	MV643XX_EUDID		0xC
+#define	MV643XX_EUIC		0x80
+#define	MV643XX_EUIM		0x84
+#define	MV643XX_EUEA		0x90
+#define	MV643XX_EUIAE		0x98
+#define	MV643XX_EUC		0xB0
+#define	MV643XX_BA(i)		(0x200 + (i * 0x8))
+#define	MV643XX_BS(i)		(0x204 + (i * 0x8))
+#define	MV643XX_HAR(i)		(0x280 + (i * 0x4))
+#define	MV643XX_BARE		0x290
+#define	MV643XX_EPAP		0x294
+#define	MV643XX_PXC		0x400
+#define	MV643XX_PXCX		0x404
+#define	MV643XX_MII_SER		0x408
+#define	MV643XX_EBLANE		0x410
+#define	MV643XX_MACAL		0x414
+#define	MV643XX_MACAH		0x418
+#define	MV643XX_SDC		0x41C
+#define	MV643XX_DSCP(i)		(0x420 + (i * 0x4))
+#define	MV643XX_PSC0		0x43C
+#define	MV643XX_VPT2P		0x440
+#define	MV643XX_PS0		0x444
+#define	MV643XX_TQC		0x448
+#define	MV643XX_PSC1		0x44C
+#define	MV643XX_PS1		0x450
+#define	MV643XX_MVHEAD		0x454
+#define	MV643XX_IC		0x460
+#define	MV643XX_ICE		0x464
+#define	MV643XX_PIM		0x468
+#define	MV643XX_PEIM		0x46C
+#define	MV643XX_PXTFUT		0x474
+#define	MV643XX_PXMFS		0x47C
+#define	MV643XX_PXDFC		0x484
+#define	MV643XX_PXOFC		0x488
+#define	MV643XX_PEUIAE		0x494
+#define	MV643XX_ETP		0x4BC
+#define	MV643XX_TQFPC		0x4DC
+#define	MV643XX_PTTBRC		0x4E0
+#define	MV643XX_TQC1		0x4E4
+#define	MV643XX_PMTU		0x4E8
+#define	MV643XX_PMTBS		0x4EC
+#define	MV643XX_RXCDP(i)	(0x60c + (i * 0x10))
+#define	MV643XX_RQC		0x680
+#define	MV643XX_TCSDP		0x684
+#define	MV643XX_TCQDP		0x6C0
+#define	MV643XX_TQX(i)		(0x700 + (i * 0x10))
+#define	MV643XX_PTTBC		0x720
+#define	MV643XX_TQXIPG0		0x7a8
+#define	MV643XX_TQXIPG1		0x7b8
+#define	MV643XX_HITNINLOPKT	0x7c0
+#define	MV643XX_HITNINASYNCPKT	0x7c4
+#define	MV643XX_LOTNINASYNCPKT	0x7c8
+#define	MV643XX_TS		0x7cc
+
+#define	MV643XX_DFSMT(i)	(0x1400 + (i * 0x4))
+#define	MV643XX_DFOMT(i)	(0x1500 + (i * 0x4))
+#define	MV643XX_DFUT(i)		(0x1600 + (i * 0x4))
+
+
+/* structures/enums needed by driver */
+enum mv643xx_adrwin {
+	MV643XX_WIN0,
+	MV643XX_WIN1,
+	MV643XX_WIN2,
+	MV643XX_WIN3,
+	MV643XX_WIN4,
+	MV643XX_WIN5
+};
+
+enum mv643xx_target {
+	MV643XX_TARGET_DRAM,
+	MV643XX_TARGET_DEV,
+	MV643XX_TARGET_CBS,
+	MV643XX_TARGET_PCI0,
+	MV643XX_TARGET_PCI1
+};
+
+struct mv643xx_winparam {
+	enum mv643xx_adrwin win;	/* Window number */
+	enum mv643xx_target target;	/* System targets */
+	u16 attrib;		/* BAR attrib. See above macros */
+	u32 base_addr;		/* Window base address in u32 form */
+	u32 high_addr;		/* Window high address in u32 form */
+	u32 size;		/* Size in MBytes. Must be % 64Kbyte. */
+	int enable;		/* Enable/disable access to the window. */
+	u16 access_ctrl;	/*Access ctrl register. see above macros */
+};
+
+struct mv643xx_rxdesc {
+	u32 cmd_sts;		/* Descriptor command status */
+	u16 buf_size;		/* Buffer size */
+	u16 byte_cnt;		/* Descriptor buffer byte count */
+	u8 *buf_ptr;		/* Descriptor buffer pointer */
+	struct mv643xx_rxdesc *nxtdesc;	/* Next descriptor pointer */
+};
+
+struct mv643xx_txdesc {
+	u32 cmd_sts;		/* Descriptor command status */
+	u16 l4i_chk;		/* CPU provided TCP Checksum */
+	u16 byte_cnt;		/* Descriptor buffer byte count */
+	u8 *buf_ptr;		/* Descriptor buffer ptr */
+	struct mv643xx_txdesc *nxtdesc;	/* Next descriptor ptr */
+};
+
+/* port device data struct */
+struct mv643xx {
+	struct eth_device edev;
+	void __iomem *regs;
+	struct mv643xx_txdesc *txdesc;
+	struct mv643xx_rxdesc *rxdesc;
+	struct mv643xx_rxdesc *rxdesc_curr;
+	u8 *rxbuf;
+	int phy_addr;
+	phy_interface_t interface;
+	u32 phy_flags;
+	struct mii_bus miibus;
+	struct clk *clk;
+};
+
+#endif /* __EGIGA_H__ */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
