Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sql-0001vv-AD
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:28:40 +0000
Received: by mail-wi0-f181.google.com with SMTP id bs8so1866182wib.8
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:28:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:28:10 +0200
Message-Id: <1406107690-8605-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 5/5] ARM: mvebu: add fixup for directly attached memory
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On Marvell MVEBU SoCs memory size is set up by BootROM and can be read
from SoC's RAM controller. With early DT fixups available, set corresponding
DT node to reflect accessible amount of directly attached RAM.

This patch also removes non-DT call to arm_add_mem_device to silence a
warning about request_region conflict due to adding a mem device twice.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c       |  2 +-
 arch/arm/mach-mvebu/common.c              | 59 +++++++++++++++++++++++++++++++
 arch/arm/mach-mvebu/dove.c                |  2 +-
 arch/arm/mach-mvebu/include/mach/common.h |  2 ++
 arch/arm/mach-mvebu/kirkwood.c            |  2 +-
 5 files changed, 64 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index f5ff9640b770..666ae077f6e6 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -52,8 +52,8 @@ static int armada_370_xp_init_soc(void)
 	barebox_set_hostname("armada");
 
 	armada_370_xp_memory_find(&phys_base, &phys_size);
-	arm_add_mem_device("ram0", phys_base, phys_size);
 
+	mvebu_set_memory(phys_base, phys_size);
 	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
 
 	return 0;
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index b054bf5aff48..ac4b332e0180 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -79,3 +79,62 @@ static int mvebu_soc_id_init(void)
 	return 0;
 }
 postcore_initcall(mvebu_soc_id_init);
+
+static u64 mvebu_mem[2];
+
+void mvebu_set_memory(u64 phys_base, u64 phys_size)
+{
+	mvebu_mem[0] = phys_base;
+	mvebu_mem[1] = phys_size;
+}
+
+/*
+ * Memory size is set up by BootROM and can be read from SoC's ram controller
+ * registers. Fixup provided DTs to reflect accessible amount of directly
+ * attached RAM. Removable RAM, e.g. SODIMM, should be added by a per-board
+ * fixup.
+ */
+static int mvebu_memory_of_fixup(struct device_node *root, void *context)
+{
+	struct device_node *np;
+	__be32 reg[4];
+	int na, ns;
+
+	/* bail out on zero-sized mem */
+	if (!mvebu_mem[1])
+		return -ENODEV;
+
+	np = of_find_node_by_path("/memory");
+	if (!np)
+		np = of_create_node(root, "/memory");
+	if (!np)
+		return -EINVAL;
+
+	na = of_n_addr_cells(np);
+	ns = of_n_size_cells(np);
+
+	if (na == 2) {
+		reg[0] = cpu_to_be32(mvebu_mem[0] >> 32);
+		reg[1] = cpu_to_be32(mvebu_mem[0] & 0xffffffff);
+	} else {
+		reg[0] = cpu_to_be32(mvebu_mem[0] & 0xffffffff);
+	}
+
+	if (ns == 2) {
+		reg[2] = cpu_to_be32(mvebu_mem[1] >> 32);
+		reg[3] = cpu_to_be32(mvebu_mem[1] & 0xffffffff);
+	} else {
+		reg[1] = cpu_to_be32(mvebu_mem[1] & 0xffffffff);
+	}
+
+	if (of_set_property(np, "device_type", "memory", sizeof("memory"), 1) ||
+	    of_set_property(np, "reg", reg, sizeof(u32) * (na + ns), 1))
+		pr_err("Unable to fixup memory node\n");
+
+	return 0;
+}
+
+static int mvebu_memory_fixup_register(void) {
+	return of_register_fixup(mvebu_memory_of_fixup, NULL);
+}
+pure_initcall(mvebu_memory_fixup_register);
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 974f48074150..69c6436b2491 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -77,8 +77,8 @@ static int dove_init_soc(void)
 
 	dove_remap_mc_regs();
 	dove_memory_find(&phys_base, &phys_size);
-	arm_add_mem_device("ram0", phys_base, phys_size);
 
+	mvebu_set_memory(phys_base, phys_size);
 	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
 	mvebu_mbus_add_range(0xf0, 0x02, DOVE_REMAP_MC_REGS);
 
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index 3cc1bf71c0f7..9f6118e4ec84 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -20,4 +20,6 @@
 
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
+void mvebu_set_memory(u64 phys_base, u64 phys_size);
+
 #endif
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 2249b9bfc64b..c114bdb36006 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -51,8 +51,8 @@ static int kirkwood_init_soc(void)
 	barebox_set_hostname("kirkwood");
 
 	kirkwood_memory_find(&phys_base, &phys_size);
-	arm_add_mem_device("ram0", phys_base, phys_size);
 
+	mvebu_set_memory(phys_base, phys_size);
 	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
 
 	return 0;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
