Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XULky-00043B-MP
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 20:23:18 +0000
Received: by mail-we0-f173.google.com with SMTP id t60so162214wes.18
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 13:22:54 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 17 Sep 2014 22:22:41 +0200
Message-Id: <1410985364-7105-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 3/6] ARM: mvebu: Simplify memory init order
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- remove pure_initcall(mvebu_memory_fixup_register) here
- also move mvebu_mbus_add_range() to pure_initcall(foo_soc_init)
- fix missing _xp_ in armada_370_register_soc_fixup()

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c       | 13 ++++++++----
 arch/arm/mach-mvebu/common.c              | 35 ++++++++++---------------------
 arch/arm/mach-mvebu/dove.c                | 13 ++++++++----
 arch/arm/mach-mvebu/include/mach/common.h |  2 +-
 arch/arm/mach-mvebu/kirkwood.c            | 13 ++++++++----
 5 files changed, 39 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 92096fcccabe..1dedcfc55467 100644
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
@@ -70,9 +70,14 @@ static int armada_370_xp_init_soc(void)
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
-	mvebu_mbus_add_range("marvell,armada-370-xp", 0xf0, 0x01,
-			     MVEBU_REMAP_INT_REG_BASE);
 
 	return 0;
 }
-core_initcall(armada_370_xp_init_soc);
+
+static int armada_370_xp_register_soc_fixup(void)
+{
+	mvebu_mbus_add_range("marvell,armada-370-xp", 0xf0, 0x01,
+			     MVEBU_REMAP_INT_REG_BASE);
+	return of_register_fixup(armada_370_xp_init_soc, NULL);
+}
+pure_initcall(armada_370_xp_register_soc_fixup);
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 05c9ae4c493e..309f7a6aaa52 100644
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
@@ -135,11 +127,6 @@ static int mvebu_memory_of_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
-static int mvebu_memory_fixup_register(void) {
-	return of_register_fixup(mvebu_memory_of_fixup, NULL);
-}
-pure_initcall(mvebu_memory_fixup_register);
-
 static __noreturn void (*mvebu_reset_cpu)(unsigned long addr);
 
 void __noreturn reset_cpu(unsigned long addr)
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 85fdbe41b55c..31d2bb57f832 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -77,7 +77,7 @@ static void __noreturn dove_reset_cpu(unsigned long addr)
 		;
 }
 
-static int dove_init_soc(void)
+static int dove_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 
@@ -90,11 +90,16 @@ static int dove_init_soc(void)
 	dove_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
+
+	return 0;
+}
+
+static int dove_register_soc_fixup(void)
+{
 	mvebu_mbus_add_range("marvell,dove", 0xf0, 0x01,
 			     MVEBU_REMAP_INT_REG_BASE);
 	mvebu_mbus_add_range("marvell,dove", 0xf0, 0x02,
 			     DOVE_REMAP_MC_REGS);
-
-	return 0;
+	return of_register_fixup(dove_init_soc, NULL);
 }
-core_initcall(dove_init_soc);
+pure_initcall(dove_register_soc_fixup);
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index 30862e02c7da..5ce33fd88274 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -20,7 +20,7 @@
 
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
-void mvebu_set_memory(u64 phys_base, u64 phys_size);
+int mvebu_set_memory(u64 phys_base, u64 phys_size);
 void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr));
 
 #endif
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index b6cbd02592a4..8ab2849ba2e4 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -51,7 +51,7 @@ static void __noreturn kirkwood_reset_cpu(unsigned long addr)
 		;
 }
 
-static int kirkwood_init_soc(void)
+static int kirkwood_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 
@@ -63,9 +63,14 @@ static int kirkwood_init_soc(void)
 	kirkwood_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
-	mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
-			     MVEBU_REMAP_INT_REG_BASE);
 
 	return 0;
 }
-core_initcall(kirkwood_init_soc);
+
+static int kirkwood_register_soc_fixup(void)
+{
+	mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
+			     MVEBU_REMAP_INT_REG_BASE);
+	return of_register_fixup(kirkwood_init_soc, NULL);
+}
+pure_initcall(kirkwood_register_soc_fixup);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
