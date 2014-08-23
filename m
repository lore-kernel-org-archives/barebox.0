Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XLKDG-0001Ml-SS
 for barebox@lists.infradead.org; Sat, 23 Aug 2014 22:55:11 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat, 23 Aug 2014 19:53:36 -0300
Message-Id: <1408834420-899-2-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 1/5] ARM: mvebu: Enable PUP register
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

As reported by Sebastian, we need to enable this explicitly for the
Tx clock on RGMII. While here, let's enable all the other peripherals.

Although this is documented to be required only for Armada XP SoC,
it has been found to be harmless on Armada 370, so we do it unconditionally
to simplify the code.

Reported-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c                   | 5 +++++
 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index f2b991e..96d5878 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -62,6 +62,11 @@ static int armada_370_xp_init_soc(void)
 	mvebu_set_memory(phys_base, phys_size);
 	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
 
+	/* Enable GBE0, GBE1, LCD and NAND PUP */
+	reg = readl(ARMADA_XP_PUP_ENABLE_BASE);
+	reg |= GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN;
+	writel(reg, ARMADA_XP_PUP_ENABLE_BASE);
+
 	return 0;
 }
 core_initcall(armada_370_xp_init_soc);
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
index ccc687c..f6db784 100644
--- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
@@ -30,6 +30,13 @@
 #define  SAR_TCLK_FREQ			BIT(20)
 #define  SAR_HIGH			0x04
 
+#define ARMADA_XP_PUP_ENABLE_BASE       (ARMADA_370_XP_INT_REGS_BASE + 0x1864c)
+#define  GE0_PUP_EN			BIT(0)
+#define  GE1_PUP_EN			BIT(1)
+#define  LCD_PUP_EN			BIT(2)
+#define  NAND_PUP_EN			BIT(4)
+
+
 #define ARMADA_370_XP_SDRAM_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20000)
 #define  DDR_BASE_CS			0x180
 #define  DDR_BASE_CSn(n)		(DDR_BASE_CS + ((n) * 0x8))
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
