Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XntbM-0002gW-2Q
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 18:22:08 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Mon, 10 Nov 2014 15:19:43 -0300
Message-Id: <1415643587-12643-2-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH v4 1/5] ARM: mvebu: Enable PUP register
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

As reported by Sebastian, we need to enable this explicitly for the
Tx clock on RGMII. While here, let's enable all the other peripherals.

Although this is documented to be required only for Armada XP SoC,
it has been found to be harmless on Armada 370, so we do it unconditionally
to simplify the code.

Reported-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c                   | 5 +++++
 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 57f6a5f..244f8cd 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -74,6 +74,11 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 
 	mvebu_set_memory(phys_base, phys_size);
 
+	/* Enable peripherals PUP */
+	reg = readl(ARMADA_XP_PUP_ENABLE_BASE);
+	reg |= GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN | SPI_PUP_EN;
+	writel(reg, ARMADA_XP_PUP_ENABLE_BASE);
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
index ccc687c..bac27e5 100644
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
+#define  SPI_PUP_EN			BIT(5)
+
 #define ARMADA_370_XP_SDRAM_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20000)
 #define  DDR_BASE_CS			0x180
 #define  DDR_BASE_CSn(n)		(DDR_BASE_CS + ((n) * 0x8))
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
