Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sqk-0001uU-G9
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:28:39 +0000
Received: by mail-we0-f173.google.com with SMTP id q58so886876wes.32
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:28:16 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:28:08 +0200
Message-Id: <1406107690-8605-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/5] ARM: mvebu: add register remap for mbus ids
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

For each supported MVEBU SoC, add the corresponding remapped registers
to fix them up in provided DTBs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c | 3 +++
 arch/arm/mach-mvebu/dove.c          | 4 ++++
 arch/arm/mach-mvebu/kirkwood.c      | 3 +++
 3 files changed, 10 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index e416a3876539..f5ff9640b770 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -18,6 +18,7 @@
 #include <init.h>
 #include <io.h>
 #include <asm/memory.h>
+#include <linux/mbus.h>
 #include <mach/armada-370-xp-regs.h>
 
 static inline void armada_370_xp_memory_find(unsigned long *phys_base,
@@ -53,6 +54,8 @@ static int armada_370_xp_init_soc(void)
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
 
+	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
+
 	return 0;
 }
 core_initcall(armada_370_xp_init_soc);
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index bcbf4b8ad7bd..974f48074150 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -18,6 +18,7 @@
 #include <init.h>
 #include <io.h>
 #include <asm/memory.h>
+#include <linux/mbus.h>
 #include <mach/dove-regs.h>
 
 static inline void dove_remap_mc_regs(void)
@@ -78,6 +79,9 @@ static int dove_init_soc(void)
 	dove_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
 
+	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
+	mvebu_mbus_add_range(0xf0, 0x02, DOVE_REMAP_MC_REGS);
+
 	return 0;
 }
 core_initcall(dove_init_soc);
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index fe9ca9cbe4d3..2249b9bfc64b 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -17,6 +17,7 @@
 #include <init.h>
 #include <io.h>
 #include <asm/memory.h>
+#include <linux/mbus.h>
 #include <mach/kirkwood-regs.h>
 
 static inline void kirkwood_memory_find(unsigned long *phys_base,
@@ -52,6 +53,8 @@ static int kirkwood_init_soc(void)
 	kirkwood_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
 
+	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
+
 	return 0;
 }
 core_initcall(kirkwood_init_soc);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
