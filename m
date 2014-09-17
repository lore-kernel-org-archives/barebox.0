Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XULky-00042u-Mj
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 20:23:17 +0000
Received: by mail-we0-f173.google.com with SMTP id t60so162191wes.18
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 13:22:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 17 Sep 2014 22:22:39 +0200
Message-Id: <1410985364-7105-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 1/6] ARM: mvebu: Add common reset_cpu function
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

mvebu has a reset_cpu function per SoC this does not work when multiple
SoCs are selected, so add a common reset_cpu function which calls into
the SoC specific ones.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- do not remove pure_initcall(mvebu_memory_fixup_register)

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c       | 19 ++++++++++---------
 arch/arm/mach-mvebu/common.c              | 14 ++++++++++++++
 arch/arm/mach-mvebu/dove.c                | 21 +++++++++++----------
 arch/arm/mach-mvebu/include/mach/common.h |  1 +
 arch/arm/mach-mvebu/kirkwood.c            | 19 ++++++++++---------
 5 files changed, 46 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index f2b991e5a79f..6251100e886d 100644
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
index ac4b332e0180..05c9ae4c493e 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -21,6 +21,7 @@
 #include <of.h>
 #include <of_address.h>
 #include <linux/clk.h>
+#include <mach/common.h>
 
 /*
  * Marvell MVEBU SoC id and revision can be read from any PCIe
@@ -138,3 +139,16 @@ static int mvebu_memory_fixup_register(void) {
 	return of_register_fixup(mvebu_memory_of_fixup, NULL);
 }
 pure_initcall(mvebu_memory_fixup_register);
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
index 69c6436b2491..17cee0b9017c 100644
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
index 9f6118e4ec84..30862e02c7da 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -21,5 +21,6 @@
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
 void mvebu_set_memory(u64 phys_base, u64 phys_size);
+void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr));
 
 #endif
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index c114bdb36006..7c0526b885a0 100644
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
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
