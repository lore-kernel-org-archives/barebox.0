Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2x-0003BB-G9
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:07 +0000
Received: by wgso17 with SMTP id o17so191790283wgs.1
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:37 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:21 +0200
Message-Id: <1429560686-11391-10-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 09/14] ARM: mvebu: armada-xp: Fixup broken MV78230-A0 SoC ID
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Marvell Armada XP MV78230-A0 incorrectly identifies itself as MV78460.
Check number of CPUs in FABRIC_CONF and fixup PCIe DEV_ID when it is
2 CPUs instead of 4.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c                | 62 ++++++++++++++++++++++
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   | 28 ++++++++--
 2 files changed, 86 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index ae458b4433b3..9ba3247805d1 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -17,9 +17,12 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <of.h>
+#include <of_address.h>
 #include <asm/memory.h>
 #include <linux/mbus.h>
 #include <mach/armada-370-xp-regs.h>
+#include <mach/socid.h>
 
 static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 					     unsigned long *phys_size)
@@ -44,6 +47,63 @@ static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 	}
 }
 
+static const struct of_device_id armada_370_xp_pcie_of_ids[] = {
+	{ .compatible = "marvell,armada-xp-pcie", },
+	{ .compatible = "marvell,armada-370-pcie", },
+	{ },
+};
+
+static int armada_370_xp_soc_id_fixup(void)
+{
+	struct device_node *np, *cnp;
+	void __iomem *base;
+	u32 reg, ctrl, mask;
+	u32 socid, numcpus;
+
+	socid = readl(ARMADA_370_XP_CPU_SOC_ID) & CPU_SOC_ID_DEVICE_MASK;
+	numcpus = 1 + (readl(ARMADA_370_XP_FABRIC_CONF) & FABRIC_NUM_CPUS_MASK);
+
+	switch (socid) {
+	/*
+	 * Marvell Armada XP MV78230-A0 incorrectly identifies itself as
+	 * MV78460. Check for DEVID_MV78460 but if there are only 2 CPUs
+	 * present in Coherency Fabric, fixup PCIe PRODUCT_ID.
+	 */
+	case DEVID_MV78460:
+		if (numcpus != 2)
+			return 0;
+		socid = DEVID_MV78230;
+		mask = PCIE0_EN | PCIE1_EN | PCIE0_QUADX1_EN;
+		break;
+	default:
+		return 0;
+	}
+
+	np = of_find_matching_node(NULL, armada_370_xp_pcie_of_ids);
+	if (!np)
+		return -ENODEV;
+
+	/* Enable all individual x1 ports */
+	ctrl = readl(ARMADA_370_XP_SOC_CTRL);
+	writel(ctrl | mask, ARMADA_370_XP_SOC_CTRL);
+
+	for_each_child_of_node(np, cnp) {
+		base = of_iomap(cnp, 0);
+		if (!base)
+			continue;
+
+		/* Fixup PCIe port DEVICE_ID */
+		reg = readl(base + PCIE_VEN_DEV_ID);
+		reg = (socid << 16) | (reg & 0xffff);
+		writel(reg, base + PCIE_VEN_DEV_ID);
+	}
+
+	/* Restore SoC Control */
+	writel(ctrl, ARMADA_370_XP_SOC_CTRL);
+
+	return 0;
+}
+
 static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
 {
 	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
@@ -75,6 +135,8 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 	mvebu_set_memory(phys_base, phys_size);
 	mvebu_mbus_init();
 
+	armada_370_xp_soc_id_fixup();
+
 	/* Enable peripherals PUP */
 	reg = readl(ARMADA_XP_PUP_ENABLE_BASE);
 	reg |= GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN | SPI_PUP_EN;
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
index bac27e5a262d..2a6e6d1aec2c 100644
--- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
@@ -25,10 +25,18 @@
 	(ARMADA_370_XP_UART_BASE + ((n) * 0x100))
 
 #define ARMADA_370_XP_SYSCTL_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x18200)
-#define ARMADA_370_XP_SAR_BASE		(ARMADA_370_XP_INT_REGS_BASE + 0x18230)
-#define  SAR_LOW			0x00
+#define ARMADA_370_XP_SOC_CTRL		(ARMADA_370_XP_SYSCTL_BASE + 0x004)
+#define  PCIE1_QUADX1_EN		BIT(8)
+#define  PCIE0_QUADX1_EN		BIT(7)
+#define  PCIE3_EN			BIT(3)
+#define  PCIE2_EN			BIT(2)
+#define  PCIE1_EN			BIT(1)
+#define  PCIE0_EN			BIT(0)
+#define ARMADA_370_XP_SAR_LOW		(ARMADA_370_XP_SYSCTL_BASE + 0x030)
 #define  SAR_TCLK_FREQ			BIT(20)
-#define  SAR_HIGH			0x04
+#define ARMADA_370_XP_SAR_HIGH		(ARMADA_370_XP_SYSCTL_BASE + 0x034)
+#define ARMADA_370_XP_CPU_SOC_ID	(ARMADA_370_XP_SYSCTL_BASE + 0x03c)
+#define  CPU_SOC_ID_DEVICE_MASK		0xffff
 
 #define ARMADA_XP_PUP_ENABLE_BASE       (ARMADA_370_XP_INT_REGS_BASE + 0x1864c)
 #define  GE0_PUP_EN			BIT(0)
@@ -50,7 +58,19 @@
 #define  DDR_SIZE_MASK			0xff000000
 
 #define ARMADA_370_XP_FABRIC_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20200)
+#define ARMADA_370_XP_FABRIC_CTRL	(ARMADA_370_XP_FABRIC_BASE + 0x000)
+#define  MBUS_ERR_PROP_EN		BIT(8)
+#define ARMADA_370_XP_FABRIC_CONF	(ARMADA_370_XP_FABRIC_BASE + 0x004)
+#define  FABRIC_NUM_CPUS_MASK		0x3
 
 #define ARMADA_370_XP_TIMER_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20300)
 
-#endif /* __MACH_MVEBU_DOVE_REGS_H */
+#define ARMADA_370_XP_PCIE_UNIT_OFFSET	0x40000
+#define ARMADA_370_XP_PCIE_PORT_OFFSET	0x04000
+#define ARMADA_370_XP_PCIE_BASE(port)				\
+	(ARMADA_370_XP_INT_REGS_BASE + 0x40000 +		\
+	 (((port) / 4) * ARMADA_370_XP_PCIE_UNIT_OFFSET) +	\
+	 (((port) % 4) * ARMADA_370_XP_PCIE_PORT_OFFSET))
+#define  PCIE_DEVICE_VENDOR_ID		0x000
+
+#endif /* __MACH_MVEBU_ARMADA_370_XP_REGS_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
