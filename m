Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTzJ-00052a-TE
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:03:11 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CD2B5FF8BAF
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:03:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:47:52 +0200
Message-Id: <1333082876-22403-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330044138.GY444@game.jcrosoft.org>
References: <20120330044138.GY444@game.jcrosoft.org>
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
Subject: [PATCH 2/6] net: at91_ether re-implement against new at91rm9200 api
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/Kconfig      |    1 +
 drivers/net/at91_ether.c |  721 ++++++++++++++++++++++++----------------------
 drivers/net/at91_ether.h |   50 ++++
 3 files changed, 427 insertions(+), 345 deletions(-)
 rewrite drivers/net/at91_ether.c (82%)
 create mode 100644 drivers/net/at91_ether.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 4cdb37b..172cc39 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -59,6 +59,7 @@ config DRIVER_NET_NETX
 config DRIVER_NET_AT91_ETHER
 	bool "at91 ethernet driver"
 	depends on HAS_AT91_ETHER
+	select MIIDEV
 
 config DRIVER_NET_MPC5200
 	bool "MPC5200 Ethernet driver"
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
dissimilarity index 82%
index 8d0b43b..3592141 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -1,345 +1,376 @@
-/*
- * (C) Copyright 2003
- * Author : Hamid Ikdoumi (Atmel)
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <at91rm9200_net.h>
-#include <init.h>
-#include <net.h>
-#include <miidev.h>
-#include <malloc.h>
-#include <driver.h>
-
-/* ----- Ethernet Buffer definitions ----- */
-
-typedef struct {
-	unsigned long addr, size;
-} rbf_t;
-
-#define RBF_ADDR      0xfffffffc
-#define RBF_OWNER     (1<<0)
-#define RBF_WRAP      (1<<1)
-#define RBF_BROADCAST (1<<31)
-#define RBF_MULTICAST (1<<30)
-#define RBF_UNICAST   (1<<29)
-#define RBF_EXTERNAL  (1<<28)
-#define RBF_UNKOWN    (1<<27)
-#define RBF_SIZE      0x07ff
-#define RBF_LOCAL4    (1<<26)
-#define RBF_LOCAL3    (1<<25)
-#define RBF_LOCAL2    (1<<24)
-#define RBF_LOCAL1    (1<<23)
-
-#define RBF_FRAMEMAX 64
-#define RBF_FRAMELEN 0x600
-
-/* alignment as per Errata #11 (64 bytes) is insufficient! */
-rbf_t rbfdt[RBF_FRAMEMAX] __attribute((aligned(512)));
-rbf_t *rbfp;
-
-unsigned char rbf_framebuf[RBF_FRAMEMAX][RBF_FRAMELEN] __attribute((aligned(4)));
-
-/* structure to interface the PHY */
-AT91S_PhyOps PhyOps;
-
-AT91PS_EMAC p_mac;
-
-/*********** EMAC Phy layer Management functions *************************/
-/*
- * Name:
- *	at91rm9200_EmacEnableMDIO
- * Description:
- *	Enables the MDIO bit in MAC control register
- * Arguments:
- *	p_mac - pointer to struct AT91S_EMAC
- * Return value:
- *	none
- */
-void at91rm9200_EmacEnableMDIO (AT91PS_EMAC p_mac)
-{
-	/* Mac CTRL reg set for MDIO enable */
-	p_mac->EMAC_CTL |= AT91C_EMAC_MPE;	/* Management port enable */
-}
-
-/*
- * Name:
- *	at91rm9200_EmacDisableMDIO
- * Description:
- *	Disables the MDIO bit in MAC control register
- * Arguments:
- *	p_mac - pointer to struct AT91S_EMAC
- * Return value:
- *	none
- */
-void at91rm9200_EmacDisableMDIO (AT91PS_EMAC p_mac)
-{
-	/* Mac CTRL reg set for MDIO disable */
-	p_mac->EMAC_CTL &= ~AT91C_EMAC_MPE;	/* Management port disable */
-}
-
-
-/*
- * Name:
- *	at91rm9200_EmacReadPhy
- * Description:
- *	Reads data from the PHY register
- * Arguments:
- *	dev - pointer to struct net_device
- *	RegisterAddress - unsigned char
- * 	pInput - pointer to value read from register
- * Return value:
- *	TRUE - if data read successfully
- */
-UCHAR at91rm9200_EmacReadPhy (AT91PS_EMAC p_mac,
-				     unsigned char RegisterAddress,
-				     unsigned short *pInput)
-{
-	p_mac->EMAC_MAN = (AT91C_EMAC_HIGH & ~AT91C_EMAC_LOW) |
-			  (AT91C_EMAC_RW_R) |
-			  (RegisterAddress << 18) |
-			  (AT91C_EMAC_CODE_802_3);
-
-	udelay (10000);
-
-	*pInput = (unsigned short) p_mac->EMAC_MAN;
-
-	return TRUE;
-}
-
-
-/*
- * Name:
- *	at91rm9200_EmacWritePhy
- * Description:
- *	Writes data to the PHY register
- * Arguments:
- *	dev - pointer to struct net_device
- *	RegisterAddress - unsigned char
- * 	pOutput - pointer to value to be written in the register
- * Return value:
- *	TRUE - if data read successfully
- */
-UCHAR at91rm9200_EmacWritePhy (AT91PS_EMAC p_mac,
-				      unsigned char RegisterAddress,
-				      unsigned short *pOutput)
-{
-	p_mac->EMAC_MAN = (AT91C_EMAC_HIGH & ~AT91C_EMAC_LOW) |
-			AT91C_EMAC_CODE_802_3 | AT91C_EMAC_RW_W |
-			(RegisterAddress << 18) | *pOutput;
-
-	udelay (10000);
-
-	return TRUE;
-}
-
-static int at91rm9200_eth_open (struct eth_device *edev)
-{
-	int ret;
-
-	at91rm9200_GetPhyInterface (& PhyOps);
-
-	if (!PhyOps.IsPhyConnected (p_mac))
-		printf ("PHY not connected!!\n\r");
-
-	/* MII management start from here */
-	if (!(p_mac->EMAC_SR & AT91C_EMAC_LINK)) {
-		if (!(ret = PhyOps.Init (p_mac))) {
-			printf ("MAC: error during MII initialization\n");
-			return 0;
-		}
-	} else {
-		printf ("No link\n\r");
-		return 0;
-	}
-	return 0;
-}
-
-static int at91rm9200_eth_send (struct eth_device *edev, volatile void *packet, int length)
-{
-	while (!(p_mac->EMAC_TSR & AT91C_EMAC_BNQ));
-	p_mac->EMAC_TAR = (long) packet;
-	p_mac->EMAC_TCR = length;
-	while (p_mac->EMAC_TCR & 0x7ff);
-	p_mac->EMAC_TSR |= AT91C_EMAC_COMP;
-	return 0;
-}
-
-static int at91rm9200_eth_rx (struct eth_device *edev)
-{
-	int size;
-
-	if (!(rbfp->addr & RBF_OWNER))
-		return 0;
-
-	size = rbfp->size & RBF_SIZE;
-	net_receive((volatile uchar *) (rbfp->addr & RBF_ADDR), size);
-
-	rbfp->addr &= ~RBF_OWNER;
-	if (rbfp->addr & RBF_WRAP)
-		rbfp = &rbfdt[0];
-	else
-		rbfp++;
-
-	p_mac->EMAC_RSR |= AT91C_EMAC_REC;
-
-	return size;
-}
-
-static void at91rm9200_eth_halt (struct eth_device *edev)
-{
-};
-
-#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
-int  at91rm9200_miidev_read(char *devname, unsigned char addr,
-		unsigned char reg, unsigned short * value)
-{
-	at91rm9200_EmacEnableMDIO (p_mac);
-	at91rm9200_EmacReadPhy (p_mac, reg, value);
-	at91rm9200_EmacDisableMDIO (p_mac);
-	return 0;
-}
-
-int  at91rm9200_miidev_write(char *devname, unsigned char addr,
-		unsigned char reg, unsigned short value)
-{
-	at91rm9200_EmacEnableMDIO (p_mac);
-	at91rm9200_EmacWritePhy (p_mac, reg, &value);
-	at91rm9200_EmacDisableMDIO (p_mac);
-	return 0;
-}
-
-#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
-
-int at91rm9200_miidev_initialize(void)
-{
-#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
-	mii_register("at91rm9200phy", at91rm9200_miidev_read, at91rm9200_miidev_write);
-#endif
-	return 0;
-}
-
-static int at91rm9200_get_ethaddr(struct eth_device *eth, unsigned char *adr)
-{
-	/* We have no eeprom */
-	return -1;
-}
-
-static int at91rm9200_set_ethaddr(struct eth_device *eth, unsigned char *adr)
-{
-	int i;
-
-	p_mac->EMAC_SA2L = (adr[3] << 24) | (adr[2] << 16)
-			 | (adr[1] <<  8) | (adr[0]);
-	p_mac->EMAC_SA2H = (adr[5] <<  8) | (adr[4]);
-
-#if 1
-	for (i = 0; i < 5; i++)
-		printf ("%02x:", adr[i]);
-	printf ("%02x\n", adr[5]);
-#endif
-	return -0;
-}
-
-static int at91rm9200_eth_init (struct device_d *dev)
-{
-	struct eth_device *edev;
-	int i;
-
-	edev = xmalloc(sizeof(struct eth_device));
-	dev->priv = edev;
-
-	edev->open = at91rm9200_eth_open;
-	edev->send = at91rm9200_eth_send;
-	edev->recv = at91rm9200_eth_rx;
-	edev->halt = at91rm9200_eth_halt;
-	edev->get_ethaddr = at91rm9200_get_ethaddr;
-	edev->set_ethaddr = at91rm9200_set_ethaddr;
-	edev->parent = dev;
-
-	p_mac = AT91C_BASE_EMAC;
-
-	/* PIO Disable Register */
-	*AT91C_PIOA_PDR = AT91C_PA16_EMDIO | AT91C_PA15_EMDC | AT91C_PA14_ERXER |
-			  AT91C_PA13_ERX1 | AT91C_PA12_ERX0 | AT91C_PA11_ECRS_ECRSDV |
-			  AT91C_PA10_ETX1 | AT91C_PA9_ETX0 | AT91C_PA8_ETXEN |
-			  AT91C_PA7_ETXCK_EREFCK;
-
-#ifdef CONFIG_AT91C_USE_RMII
-	*AT91C_PIOB_PDR = AT91C_PB19_ERXCK;
-	*AT91C_PIOB_BSR = AT91C_PB19_ERXCK;
-#else
-	*AT91C_PIOB_PDR = AT91C_PB19_ERXCK | AT91C_PB18_ECOL | AT91C_PB17_ERXDV |
-			  AT91C_PB16_ERX3 | AT91C_PB15_ERX2 | AT91C_PB14_ETXER |
-			  AT91C_PB13_ETX3 | AT91C_PB12_ETX2;
-
-	/* Select B Register */
-	*AT91C_PIOB_BSR = AT91C_PB19_ERXCK | AT91C_PB18_ECOL |
-			  AT91C_PB17_ERXDV | AT91C_PB16_ERX3 | AT91C_PB15_ERX2 |
-			  AT91C_PB14_ETXER | AT91C_PB13_ETX3 | AT91C_PB12_ETX2;
-#endif
-
-	*AT91C_PMC_PCER = 1 << AT91C_ID_EMAC;	/* Peripheral Clock Enable Register */
-
-	p_mac->EMAC_CFG |= AT91C_EMAC_CSR;	/* Clear statistics */
-
-	/* Init Ehternet buffers */
-	for (i = 0; i < RBF_FRAMEMAX; i++) {
-		rbfdt[i].addr = (unsigned long)rbf_framebuf[i];
-		rbfdt[i].size = 0;
-	}
-	rbfdt[RBF_FRAMEMAX - 1].addr |= RBF_WRAP;
-	rbfp = &rbfdt[0];
-
-	p_mac->EMAC_RBQP = (long) (&rbfdt[0]);
-	p_mac->EMAC_RSR &= ~(AT91C_EMAC_RSR_OVR | AT91C_EMAC_REC | AT91C_EMAC_BNA);
-
-	p_mac->EMAC_CFG = (p_mac->EMAC_CFG | AT91C_EMAC_CAF | AT91C_EMAC_NBC)
-			& ~AT91C_EMAC_CLK;
-
-#ifdef CONFIG_AT91C_USE_RMII
-	p_mac->EMAC_CFG |= AT91C_EMAC_RMII;
-#endif
-
-#if (AT91C_MASTER_CLOCK > 40000000)
-	/* MDIO clock must not exceed 2.5 MHz, so enable MCK divider */
-	p_mac->EMAC_CFG |= AT91C_EMAC_CLK_HCLK_64;
-#endif
-
-	p_mac->EMAC_CTL |= AT91C_EMAC_TE | AT91C_EMAC_RE;
-
-	eth_register(edev);
-
-	return 0;
-}
-
-static struct driver_d at91_eth_driver = {
-        .name  = "at91_eth",
-        .probe = at91rm9200_eth_init,
-};
-
-static int at91_eth_init(void)
-{
-        register_driver(&at91_eth_driver);
-        return 0;
-}
-
-device_initcall(at91_eth_init);
-
+/*
+ * Copyright (C) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * (C) Copyright 2003
+ * Author : Hamid Ikdoumi (Atmel)
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <net.h>
+#include <clock.h>
+#include <malloc.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <init.h>
+#include <miidev.h>
+#include <asm/io.h>
+#include <mach/hardware.h>
+#include <mach/at91rm9200_emac.h>
+#include <mach/board.h>
+#include <generated/mach-types.h>
+#include <linux/clk.h>
+#include <linux/mii.h>
+#include <errno.h>
+#include <asm/mmu.h>
+
+#include "at91_ether.h"
+
+#define SPEED_100 1
+#define DUPLEX_FULL 1
+
+struct ether_device {
+	struct eth_device netdev;
+	struct mii_device miidev;
+	struct rbf_t *rbfp;
+	struct rbf_t *rbfdt;
+	unsigned char *rbf_framebuf;
+};
+#define to_ether(_nd) container_of(_nd, struct ether_device, netdev)
+
+/*
+ * Enable the MDIO bit in MAC control register
+ * When not called from an interrupt-handler, access to the PHY must be
+ *  protected by a spinlock.
+ */
+static void enable_mdi(void)
+{
+	unsigned long ctl;
+
+	ctl = at91_emac_read(AT91_EMAC_CTL);
+	at91_emac_write(AT91_EMAC_CTL, ctl | AT91_EMAC_MPE);	/* enable management port */
+}
+
+/*
+ * Disable the MDIO bit in the MAC control register
+ */
+static void disable_mdi(void)
+{
+	unsigned long ctl;
+
+	ctl = at91_emac_read(AT91_EMAC_CTL);
+	at91_emac_write(AT91_EMAC_CTL, ctl & ~AT91_EMAC_MPE);	/* disable management port */
+}
+
+/*
+ * Wait until the PHY operation is complete.
+ */
+static inline int at91_phy_wait(void)
+{
+	uint64_t start;
+
+	start = get_time_ns();
+
+	do {
+		if (is_timeout(start, 2 * MSECOND)) {
+			puts("at91_ether: MIO timeout\n");
+			return -1;
+		}
+	} while (!(at91_emac_read(AT91_EMAC_SR) & AT91_EMAC_SR_IDLE));
+
+	return 0;
+}
+
+static int at91_ether_mii_read(struct mii_device *dev, int addr, int reg)
+{
+	int value;
+
+	enable_mdi();
+
+	at91_emac_write(AT91_EMAC_MAN, AT91_EMAC_MAN_802_3 | AT91_EMAC_RW_R
+		| ((addr & 0x1f) << 23) | (reg << 18));
+
+	/* Wait until IDLE bit in Network Status register is cleared */
+	value = at91_phy_wait();
+	if (value < 0)
+		goto out;
+
+	value = at91_emac_read(AT91_EMAC_MAN) & AT91_EMAC_DATA;
+
+out:
+	disable_mdi();
+
+	return value;
+}
+
+static int at91_ether_mii_write(struct mii_device *dev, int addr, int reg, int val)
+{
+	int ret;
+
+	enable_mdi();
+	at91_emac_write(AT91_EMAC_MAN, AT91_EMAC_MAN_802_3 | AT91_EMAC_RW_W
+		| ((addr & 0x1f) << 23) | (reg << 18) | (val & AT91_EMAC_DATA));
+
+	/* Wait until IDLE bit in Network Status register is cleared */
+	ret = at91_phy_wait();
+
+	disable_mdi();
+
+	return ret;
+}
+
+static void update_linkspeed(struct mii_device *dev, int speed, int duplex)
+{
+	unsigned int mac_cfg;
+
+	/* Update the MAC */
+	mac_cfg = at91_emac_read(AT91_EMAC_CFG) & ~(AT91_EMAC_SPD | AT91_EMAC_FD);
+	if (speed == SPEED_100) {
+		if (duplex == DUPLEX_FULL)	/* 100 Full Duplex */
+			mac_cfg |= AT91_EMAC_SPD | AT91_EMAC_FD;
+		else					/* 100 Half Duplex */
+			mac_cfg |= AT91_EMAC_SPD;
+	} else {
+		if (duplex == DUPLEX_FULL)	/* 10 Full Duplex */
+			mac_cfg |= AT91_EMAC_FD;
+		else {}					/* 10 Half Duplex */
+	}
+	at91_emac_write(AT91_EMAC_CFG, mac_cfg);
+}
+
+static int at91_ether_open(struct eth_device *edev)
+{
+	int i;
+	unsigned long ctl;
+	struct ether_device *etdev = to_ether(edev);
+	unsigned char *rbf_framebuf = etdev->rbf_framebuf;
+
+	miidev_wait_aneg(&etdev->miidev);
+	miidev_print_status(&etdev->miidev);
+
+	update_linkspeed(&etdev->miidev, SPEED_100, DUPLEX_FULL);
+
+	/* Clear internal statistics */
+	ctl = at91_emac_read(AT91_EMAC_CTL);
+	at91_emac_write(AT91_EMAC_CTL, ctl | AT91_EMAC_CSR);
+
+	/* Init Ethernet buffers */
+	etdev->rbfp = etdev->rbfdt;
+	for (i = 0; i < MAX_RX_DESCR; i++) {
+		etdev->rbfp[i].addr = (unsigned long)rbf_framebuf;
+		etdev->rbfp[i].size = 0;
+		rbf_framebuf += MAX_RBUFF_SZ;
+	}
+	etdev->rbfp[i - 1].addr |= RBF_WRAP;
+
+	/* Program address of descriptor list in Rx Buffer Queue register */
+	at91_emac_write(AT91_EMAC_RBQP, (unsigned long) etdev->rbfdt);
+
+	ctl = at91_emac_read(AT91_EMAC_RSR);
+	ctl &= ~(AT91_EMAC_RSR_OVR | AT91_EMAC_RSR_REC | AT91_EMAC_RSR_BNA);
+	at91_emac_write(AT91_EMAC_RSR, ctl);
+
+	ctl = at91_emac_read(AT91_EMAC_CFG);
+	ctl |= AT91_EMAC_CAF | AT91_EMAC_NBC;
+	at91_emac_write(AT91_EMAC_CFG, ctl);
+
+	/* Enable Receive and Transmit */
+	ctl = at91_emac_read(AT91_EMAC_CTL);
+	ctl |= AT91_EMAC_RE | AT91_EMAC_TE;
+	at91_emac_write(AT91_EMAC_CTL, ctl);
+
+	return 0;
+}
+
+static int at91_ether_send(struct eth_device *edev, void *packet, int length)
+{
+	while (!(at91_emac_read(AT91_EMAC_TSR) & AT91_EMAC_TSR_BNQ));
+
+	dma_flush_range((ulong) packet, (ulong)packet + length);
+	/* Set address of the data in the Transmit Address register */
+	at91_emac_write(AT91_EMAC_TAR, (unsigned long) packet);
+	/* Set length of the packet in the Transmit Control register */
+	at91_emac_write(AT91_EMAC_TCR, length);
+
+	while (at91_emac_read(AT91_EMAC_TCR) & 0x7ff);
+
+	at91_emac_write(AT91_EMAC_TSR,
+		at91_emac_read(AT91_EMAC_TSR) | AT91_EMAC_TSR_COMP);
+
+	return 0;
+}
+
+static int at91_ether_rx(struct eth_device *edev)
+{
+	struct ether_device *etdev = to_ether(edev);
+	int size;
+	struct rbf_t *rbfp = etdev->rbfp;
+
+	if (!(rbfp->addr & RBF_OWNER))
+		return 0;
+
+	size = rbfp->size & RBF_SIZE;
+
+	net_receive((unsigned char *)(rbfp->addr & RBF_ADDR), size);
+
+	rbfp->addr &= ~RBF_OWNER;
+	if (rbfp->addr & RBF_WRAP)
+		etdev->rbfp = etdev->rbfdt;
+	else
+		etdev->rbfp++;
+
+	at91_emac_write(AT91_EMAC_RSR,
+		at91_emac_read(AT91_EMAC_RSR) | AT91_EMAC_RSR_REC);
+
+	return size;
+}
+
+static void at91_ether_halt (struct eth_device *edev)
+{
+	unsigned long ctl;
+
+	/* Disable Receiver and Transmitter */
+	ctl = at91_emac_read(AT91_EMAC_CTL);
+	ctl &= ~(AT91_EMAC_TE | AT91_EMAC_RE);
+	at91_emac_write(AT91_EMAC_CTL, ctl);
+}
+
+static int at91_ether_get_ethaddr(struct eth_device *eth, unsigned char *adr)
+{
+	/* We have no eeprom */
+	return -1;
+}
+
+static int at91_ether_set_ethaddr(struct eth_device *eth, unsigned char *adr)
+{
+	int i;
+
+	/* The CSB337 originally used a version of the MicroMonitor bootloader
+	 * which saved Ethernet addresses in the "wrong" order.  Operating
+	 * systems (like Linux) know this, and apply a workaround.  Replicate
+	 * that MicroMonitor behavior so we avoid needing to make such OS code
+	 * care about which bootloader was used.
+	 */
+	if (machine_is_csb337()) {
+		at91_emac_write(AT91_EMAC_SA2H,
+				   (adr[0] <<  8) | (adr[1]));
+		at91_emac_write(AT91_EMAC_SA2L,
+				   (adr[2] << 24) | (adr[3] << 16)
+				 | (adr[4] <<  8) | (adr[5]));
+	} else {
+		at91_emac_write(AT91_EMAC_SA2L,
+				   (adr[3] << 24) | (adr[2] << 16)
+				 | (adr[1] <<  8) | (adr[0]));
+		at91_emac_write(AT91_EMAC_SA2H,
+				   (adr[5] <<  8) | (adr[4]));
+	}
+
+	for (i = 0; i < 5; i++)
+		debug ("%02x:", adr[i]);
+	debug ("%02x\n", adr[5]);
+
+	return 0;
+}
+
+static int at91_ether_init(struct eth_device *edev)
+{
+	return 0;
+}
+
+static int at91_ether_probe(struct device_d *dev)
+{
+	unsigned int mac_cfg;
+	struct ether_device *ether_dev;
+	struct eth_device *edev;
+	struct mii_device *miidev;
+	unsigned long ether_hz;
+	struct clk *pclk;
+	struct at91_ether_platform_data *pdata;
+
+	if (!dev->platform_data) {
+		printf("at91_ether: no platform_data\n");
+		return -ENODEV;
+	}
+
+	pdata = dev->platform_data;
+
+	ether_dev = xzalloc(sizeof(struct ether_device));
+
+	edev = &ether_dev->netdev;
+	miidev = &ether_dev->miidev;
+	edev->priv = ether_dev;
+
+	edev->init = at91_ether_init;
+	edev->open = at91_ether_open;
+	edev->send = at91_ether_send;
+	edev->recv = at91_ether_rx;
+	edev->halt = at91_ether_halt;
+	edev->get_ethaddr = at91_ether_get_ethaddr;
+	edev->set_ethaddr = at91_ether_set_ethaddr;
+	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ);
+	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR);
+
+	miidev->address = pdata->phy_addr;
+	miidev->read = at91_ether_mii_read;
+	miidev->write = at91_ether_mii_write;
+	miidev->edev = edev;
+
+	/* Sanitize the clocks */
+	mac_cfg = at91_emac_read(AT91_EMAC_CFG);
+
+	pclk = clk_get(dev, "ether_clk");
+	clk_enable(pclk);
+	ether_hz = clk_get_rate(pclk);
+	if (ether_hz > 40000000) {
+		/* MDIO clock must not exceed 2.5 MHz, so enable MCK divider */
+		mac_cfg |= AT91_EMAC_CLK_DIV64;
+	} else {
+		mac_cfg &= ~AT91_EMAC_CLK;
+	}
+
+	mac_cfg |= AT91_EMAC_CLK_DIV32 | AT91_EMAC_BIG;
+
+	if (pdata->flags & AT91SAM_ETHER_RMII)
+		mac_cfg |= AT91_EMAC_RMII;
+
+	at91_emac_write(AT91_EMAC_CFG, mac_cfg);
+
+	mii_register(miidev);
+	eth_register(edev);
+
+	return 0;
+}
+
+static void at91_ether_remove(struct device_d *dev)
+{
+}
+
+static struct driver_d at91_ether_driver = {
+	.name = "at91_ether",
+	.probe = at91_ether_probe,
+	.remove = at91_ether_remove,
+};
+
+static int at91_ether_driver_init(void)
+{
+	register_driver(&at91_ether_driver);
+	return 0;
+}
+device_initcall(at91_ether_driver_init);
diff --git a/drivers/net/at91_ether.h b/drivers/net/at91_ether.h
new file mode 100644
index 0000000..b97619e
--- /dev/null
+++ b/drivers/net/at91_ether.h
@@ -0,0 +1,50 @@
+/*
+ * Ethernet driver for the Atmel AT91RM9200 (Thunder)
+ *
+ *  Copyright (C) SAN People (Pty) Ltd
+ *
+ * Based on an earlier Atmel EMAC macrocell driver by Atmel and Lineo Inc.
+ * Initial version by Rick Bronson.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version
+ * 2 of the License, or (at your option) any later version.
+ */
+
+#ifndef AT91_ETHERNET
+#define AT91_ETHERNET
+
+/* ........................................................................ */
+
+#define MAX_RBUFF_SZ	0x600		/* 1518 rounded up */
+#define MAX_RX_DESCR	64		/* max number of receive buffers */
+
+/* ----- Ethernet Buffer definitions ----- */
+#define RBF_ADDR	0xfffffffc
+#define RBF_OWNER	(1<<0)
+#define RBF_WRAP	(1<<1)
+#define RBF_SIZE	0x07ff
+
+struct rbf_t
+{
+	unsigned int addr;
+	unsigned long size;
+};
+
+/*
+ * Read from a EMAC register.
+ */
+static inline unsigned long at91_emac_read(unsigned int reg)
+{
+	return __raw_readl(AT91_VA_BASE_EMAC + reg);
+}
+
+/*
+ * Write to a EMAC register.
+ */
+static inline void at91_emac_write(unsigned int reg, unsigned long value)
+{
+	__raw_writel(value, AT91_VA_BASE_EMAC + reg);
+}
+#endif
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
