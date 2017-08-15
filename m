Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhYSG-0004L5-51
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 09:48:11 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 15 Aug 2017 11:47:37 +0200
Message-Id: <20170815094737.27407-1-jlu@pengutronix.de>
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
Subject: [PATCH] ARM: mvebu: armada-xp: configure PLL and PHY register
To: barebox@lists.infradead.org

The PLL setup is needed to use the USB ports in Linux.

This code is ported from mainline U-Boot arch/arm/mach-mvebu/cpu.c.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-mvebu/armada-370-xp.c                | 45 ++++++++++++++++++++++
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |  2 +
 2 files changed, 47 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 93ad955a6e49..06128300254b 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -83,6 +83,48 @@ static void __noreturn armada_370_xp_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
+#define MVEBU_AXP_USB_BASE		(MVEBU_REMAP_INT_REG_BASE + 0x50000)
+#define MV_USB_PHY_BASE			(MVEBU_AXP_USB_BASE + 0x800)
+#define MV_USB_PHY_PLL_REG(reg)		(MV_USB_PHY_BASE | (((reg) & 0xF) << 2))
+#define MV_USB_X3_BASE(addr)		(MVEBU_AXP_USB_BASE | BIT(11) | \
+					 (((addr) & 0xF) << 6))
+#define MV_USB_X3_PHY_CHANNEL(dev, reg) (MV_USB_X3_BASE((dev) + 1) |	\
+					 (((reg) & 0xF) << 2))
+
+static void setup_usb_phys(void)
+{
+	int dev;
+
+	/*
+	 * USB PLL init
+	 */
+
+	/* Setup PLL frequency */
+	/* USB REF frequency = 25 MHz */
+	clrsetbits_le32(MV_USB_PHY_PLL_REG(1), 0x3ff, 0x605);
+
+	/* Power up PLL and PHY channel */
+	setbits_le32(MV_USB_PHY_PLL_REG(2), BIT(9));
+ 
+	/* Assert VCOCAL_START */
+	setbits_le32(MV_USB_PHY_PLL_REG(1), BIT(21));
+ 
+	mdelay(1);
+ 
+	/*
+	 * USB PHY init (change from defaults) specific for 40nm (78X30 78X60)
+	 */
+
+	for (dev = 0; dev < 3; dev++) {
+		setbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 3), BIT(15));
+
+		/* Assert REG_RCAL_START in channel REG 1 */
+		setbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 1), BIT(12));
+		udelay(40);
+		clrbits_le32(MV_USB_X3_PHY_CHANNEL(dev, 1), BIT(12));
+	}
+}
+
 static int armada_370_xp_init_soc(void)
 {
 	u32 reg;
@@ -109,6 +151,9 @@ static int armada_370_xp_init_soc(void)
 		reg = readl(ARMADA_XP_PUP_ENABLE);
 		reg |= GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN | SPI_PUP_EN;
 		writel(reg, ARMADA_XP_PUP_ENABLE);
+
+		/* Configure USB PLL and PHYs on AXP */
+		setup_usb_phys();
 	}
 
 	return 0;
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
index 1dad05317211..b972df151a74 100644
--- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
@@ -72,4 +72,6 @@
 	 (((port) % 4) * ARMADA_370_XP_PCIE_PORT_OFFSET))
 #define  PCIE_DEVICE_VENDOR_ID		0x000
 
+#define ARMADA_370_XP_USB_BASE		(ARMADA_370_XP_INT_REGS_BASE + 0x50000)
+
 #endif /* __MACH_MVEBU_ARMADA_370_XP_REGS_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
