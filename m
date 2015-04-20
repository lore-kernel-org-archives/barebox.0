Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2x-0003B2-0v
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:04 +0000
Received: by widdi4 with SMTP id di4so113653476wid.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:37 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:22 +0200
Message-Id: <1429560686-11391-11-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 10/14] ARM: mvebu: armada-xp: Limit PUP access to Armada XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Commit 6638760c225c37f90e822ebf4dd8f0d2cd0b0ef3
 ("ARM: mvebu: Enable PUP register")
correctly enables devices that are disabled after boot-up due to
some Design For Testability registers.

However, although harmless on Armada 370, call the code conditionally
on Armada XP only. While at it, move PUP register defines to SYSCTL
registers where they belong to.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c                   | 18 ++++++++++++++----
 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h |  3 +--
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 9ba3247805d1..8e1463dd8b11 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -112,6 +112,18 @@ static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
 		;
 }
 
+static int armada_xp_init_soc(struct device_node *root)
+{
+	u32 reg;
+
+	/* Enable GBE0, GBE1, LCD and NFC PUP */
+	reg = readl(ARMADA_XP_PUP_ENABLE);
+	reg |= GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN | SPI_PUP_EN;
+	writel(reg, ARMADA_XP_PUP_ENABLE);
+
+	return 0;
+}
+
 static int armada_370_xp_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
@@ -137,10 +149,8 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 
 	armada_370_xp_soc_id_fixup();
 
-	/* Enable peripherals PUP */
-	reg = readl(ARMADA_XP_PUP_ENABLE_BASE);
-	reg |= GE0_PUP_EN | GE1_PUP_EN | LCD_PUP_EN | NAND_PUP_EN | SPI_PUP_EN;
-	writel(reg, ARMADA_XP_PUP_ENABLE_BASE);
+	if (of_machine_is_compatible("marvell,armadaxp"))
+		armada_xp_init_soc(root);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
index 2a6e6d1aec2c..1dad05317211 100644
--- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
@@ -37,8 +37,7 @@
 #define ARMADA_370_XP_SAR_HIGH		(ARMADA_370_XP_SYSCTL_BASE + 0x034)
 #define ARMADA_370_XP_CPU_SOC_ID	(ARMADA_370_XP_SYSCTL_BASE + 0x03c)
 #define  CPU_SOC_ID_DEVICE_MASK		0xffff
-
-#define ARMADA_XP_PUP_ENABLE_BASE       (ARMADA_370_XP_INT_REGS_BASE + 0x1864c)
+#define ARMADA_XP_PUP_ENABLE		(ARMADA_370_XP_SYSCTL_BASE + 0x44c)
 #define  GE0_PUP_EN			BIT(0)
 #define  GE1_PUP_EN			BIT(1)
 #define  LCD_PUP_EN			BIT(2)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
