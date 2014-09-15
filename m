Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTQv3-0000mt-Dn
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 07:41:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Sep 2014 09:41:09 +0200
Message-Id: <1410766873-4393-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: mvebu: Add common reset_cpu function
To: barebox@lists.infradead.org

mvebu has a reset_cpu function per SoC this does not work when multiple
SoCs are selected, so add a common reset_cpu function which calls into
the SoC specific ones.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mvebu/armada-370-xp.c       | 19 ++++++++++---------
 arch/arm/mach-mvebu/common.c              | 15 ++++++++++++++-
 arch/arm/mach-mvebu/dove.c                | 21 +++++++++++----------
 arch/arm/mach-mvebu/include/mach/common.h |  1 +
 arch/arm/mach-mvebu/kirkwood.c            | 19 ++++++++++---------
 5 files changed, 46 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index f2b991e..6251100 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -44,11 +44,21 @@ static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 	}
 }
 
+static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
+{
+	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
+	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
+	while (1)
+		;
+}
+
 static int armada_370_xp_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 	u32 reg;
 
+	mvebu_set_reset(armada_370_xp_reset_cpu);
+
 	barebox_set_model("Marvell Armada 370/XP");
 	barebox_set_hostname("armada");
 
@@ -65,12 +75,3 @@ static int armada_370_xp_init_soc(void)
 	return 0;
 }
 core_initcall(armada_370_xp_init_soc);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
-	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
-	while (1)
-		;
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index ac4b332..5c3ac14 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -21,6 +21,7 @@
 #include <of.h>
 #include <of_address.h>
 #include <linux/clk.h>
+#include <mach/common.h>
 
 /*
  * Marvell MVEBU SoC id and revision can be read from any PCIe
@@ -137,4 +138,16 @@ static int mvebu_memory_of_fixup(struct device_node *root, void *context)
 static int mvebu_memory_fixup_register(void) {
 	return of_register_fixup(mvebu_memory_of_fixup, NULL);
 }
-pure_initcall(mvebu_memory_fixup_register);
+
+static __noreturn void (*mvebu_reset_cpu)(unsigned long addr);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	mvebu_reset_cpu(addr);
+}
+EXPORT_SYMBOL(reset_cpu);
+
+void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr))
+{
+	mvebu_reset_cpu = reset;
+}
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 69c6436..17cee0b 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -68,10 +68,21 @@ static inline void dove_memory_find(unsigned long *phys_base,
 	}
 }
 
+static void __noreturn dove_reset_cpu(unsigned long addr)
+{
+	/* enable and assert RSTOUTn */
+	writel(SOFT_RESET_OUT_EN, DOVE_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
+	writel(SOFT_RESET_EN, DOVE_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
+	while (1)
+		;
+}
+
 static int dove_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	mvebu_set_reset(dove_reset_cpu);
+
 	barebox_set_model("Marvell Dove");
 	barebox_set_hostname("dove");
 
@@ -85,13 +96,3 @@ static int dove_init_soc(void)
 	return 0;
 }
 core_initcall(dove_init_soc);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	/* enable and assert RSTOUTn */
-	writel(SOFT_RESET_OUT_EN, DOVE_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
-	writel(SOFT_RESET_EN, DOVE_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
-	while (1)
-		;
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index 9f6118e..30862e0 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -21,5 +21,6 @@
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
 void mvebu_set_memory(u64 phys_base, u64 phys_size);
+void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr));
 
 #endif
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index c114bdb..7c0526b 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -43,10 +43,20 @@ static inline void kirkwood_memory_find(unsigned long *phys_base,
 	}
 }
 
+static void __noreturn kirkwood_reset_cpu(unsigned long addr)
+{
+	writel(SOFT_RESET_OUT_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
+	writel(SOFT_RESET_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
+	for(;;)
+		;
+}
+
 static int kirkwood_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	mvebu_set_reset(kirkwood_reset_cpu);
+
 	barebox_set_model("Marvell Kirkwood");
 	barebox_set_hostname("kirkwood");
 
@@ -58,12 +68,3 @@ static int kirkwood_init_soc(void)
 	return 0;
 }
 core_initcall(kirkwood_init_soc);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	writel(SOFT_RESET_OUT_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
-	writel(SOFT_RESET_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
-	for(;;)
-		;
-}
-EXPORT_SYMBOL(reset_cpu);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
