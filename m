Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTQvI-00013h-Dg
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 07:42:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Sep 2014 09:41:10 +0200
Message-Id: <1410766873-4393-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: mvebu: Simplify memory init order
To: barebox@lists.infradead.org

The initialisation of the memory nodes on mvebu is a bit
compilcated:

pure_initcall(mvebu_memory_fixup_register)
	of_register_fixup(mvebu_memory_of_fixup, NULL)
core_initcall(kirkwood_init_soc)
	mvebu_set_memory()
core_initcall(of_arm_init)
	of_fix_tree()
		mvebu_memory_of_fixup()

First a mvebu common of_fixup function is registered, then the SoC
calls mvebu_set_memory which stores the memory base and size in global
variables. Afterwards the of_fixup is executed which fixes the memory
nodes according to the global variables.

Instead register a SoC specific fixup which directly calls mvebu_set_memory
with the memory base and size as arguments:

pure_initcall(kirkwood_register_soc_fixup);
	of_register_fixup(kirkwood_init_soc, NULL);
core_initcall(of_arm_init)
	of_fix_tree()
		kirkwood_init_soc()
			mvebu_set_memory(phys_base, phys_size);

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mvebu/armada-370-xp.c       |  9 ++++++--
 arch/arm/mach-mvebu/common.c              | 34 ++++++++++---------------------
 arch/arm/mach-mvebu/dove.c                |  9 ++++++--
 arch/arm/mach-mvebu/include/mach/common.h |  2 +-
 arch/arm/mach-mvebu/kirkwood.c            |  9 ++++++--
 5 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 6251100..5c8499b 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -52,7 +52,7 @@ static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
 		;
 }
 
-static int armada_370_xp_init_soc(void)
+static int armada_370_xp_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 	u32 reg;
@@ -74,4 +74,9 @@ static int armada_370_xp_init_soc(void)
 
 	return 0;
 }
-core_initcall(armada_370_xp_init_soc);
+
+static int armada_370_register_soc_fixup(void)
+{
+	return of_register_fixup(armada_370_xp_init_soc, NULL);
+}
+pure_initcall(armada_370_register_soc_fixup);
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 5c3ac14..309f7a6 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -81,29 +81,21 @@ static int mvebu_soc_id_init(void)
 }
 postcore_initcall(mvebu_soc_id_init);
 
-static u64 mvebu_mem[2];
-
-void mvebu_set_memory(u64 phys_base, u64 phys_size)
-{
-	mvebu_mem[0] = phys_base;
-	mvebu_mem[1] = phys_size;
-}
-
 /*
  * Memory size is set up by BootROM and can be read from SoC's ram controller
  * registers. Fixup provided DTs to reflect accessible amount of directly
  * attached RAM. Removable RAM, e.g. SODIMM, should be added by a per-board
  * fixup.
  */
-static int mvebu_memory_of_fixup(struct device_node *root, void *context)
+int mvebu_set_memory(u64 phys_base, u64 phys_size)
 {
-	struct device_node *np;
+	struct device_node *np, *root;
 	__be32 reg[4];
 	int na, ns;
 
-	/* bail out on zero-sized mem */
-	if (!mvebu_mem[1])
-		return -ENODEV;
+	root = of_get_root_node();
+	if (!root)
+		return -EINVAL;
 
 	np = of_find_node_by_path("/memory");
 	if (!np)
@@ -115,17 +107,17 @@ static int mvebu_memory_of_fixup(struct device_node *root, void *context)
 	ns = of_n_size_cells(np);
 
 	if (na == 2) {
-		reg[0] = cpu_to_be32(mvebu_mem[0] >> 32);
-		reg[1] = cpu_to_be32(mvebu_mem[0] & 0xffffffff);
+		reg[0] = cpu_to_be32(phys_base >> 32);
+		reg[1] = cpu_to_be32(phys_base & 0xffffffff);
 	} else {
-		reg[0] = cpu_to_be32(mvebu_mem[0] & 0xffffffff);
+		reg[0] = cpu_to_be32(phys_base & 0xffffffff);
 	}
 
 	if (ns == 2) {
-		reg[2] = cpu_to_be32(mvebu_mem[1] >> 32);
-		reg[3] = cpu_to_be32(mvebu_mem[1] & 0xffffffff);
+		reg[2] = cpu_to_be32(phys_size >> 32);
+		reg[3] = cpu_to_be32(phys_size & 0xffffffff);
 	} else {
-		reg[1] = cpu_to_be32(mvebu_mem[1] & 0xffffffff);
+		reg[1] = cpu_to_be32(phys_size & 0xffffffff);
 	}
 
 	if (of_set_property(np, "device_type", "memory", sizeof("memory"), 1) ||
@@ -135,10 +127,6 @@ static int mvebu_memory_of_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
-static int mvebu_memory_fixup_register(void) {
-	return of_register_fixup(mvebu_memory_of_fixup, NULL);
-}
-
 static __noreturn void (*mvebu_reset_cpu)(unsigned long addr);
 
 void __noreturn reset_cpu(unsigned long addr)
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 17cee0b..58d5439 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -77,7 +77,7 @@ static void __noreturn dove_reset_cpu(unsigned long addr)
 		;
 }
 
-static int dove_init_soc(void)
+static int dove_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 
@@ -95,4 +95,9 @@ static int dove_init_soc(void)
 
 	return 0;
 }
-core_initcall(dove_init_soc);
+
+static int dove_register_soc_fixup(void)
+{
+	return of_register_fixup(dove_init_soc, NULL);
+}
+pure_initcall(dove_register_soc_fixup);
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index 30862e0..5ce33fd 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -20,7 +20,7 @@
 
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
-void mvebu_set_memory(u64 phys_base, u64 phys_size);
+int mvebu_set_memory(u64 phys_base, u64 phys_size);
 void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr));
 
 #endif
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 7c0526b..a4b0853 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -51,7 +51,7 @@ static void __noreturn kirkwood_reset_cpu(unsigned long addr)
 		;
 }
 
-static int kirkwood_init_soc(void)
+static int kirkwood_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 
@@ -67,4 +67,9 @@ static int kirkwood_init_soc(void)
 
 	return 0;
 }
-core_initcall(kirkwood_init_soc);
+
+static int kirkwood_register_soc_fixup(void)
+{
+	return of_register_fixup(kirkwood_init_soc, NULL);
+}
+pure_initcall(kirkwood_register_soc_fixup);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
