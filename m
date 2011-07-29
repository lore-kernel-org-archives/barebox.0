Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmjbn-0005Oo-08
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:43:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jul 2011 11:43:45 +0200
Message-Id: <1311932630-5687-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/7] ARM: move armlinux_add_dram to location which is always
	compiled
To: barebox@lists.infradead.org

We want to use the memory banks later in the MMU which is
independent of Linux, so move this to a location which is
always compiled.

Also, make the memory bank list global and add an iterator
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c              |   14 ++++++++++++++
 arch/arm/include/asm/armlinux.h |    7 ++-----
 arch/arm/include/asm/memory.h   |   24 +++++++++++++-----------
 arch/arm/lib/armlinux.c         |   19 ++-----------------
 4 files changed, 31 insertions(+), 33 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index cf30789..3df0c0f 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -30,6 +30,7 @@
 #include <cache.h>
 #include <asm/mmu.h>
 #include <asm/system.h>
+#include <asm/memory.h>
 
 /**
  * Enable processor's instruction cache
@@ -89,6 +90,19 @@ void arch_shutdown(void)
 #endif
 }
 
+LIST_HEAD(memory_list);
+
+void armlinux_add_dram(struct device_d *dev)
+{
+	struct arm_memory *mem = xzalloc(sizeof(*mem));
+
+	mem->dev = dev;
+	mem->start = dev->resource[0].start;
+	mem->size = dev->resource[0].size;
+
+	list_add_tail(&mem->list, &memory_list);
+}
+
 /**
  * @page arm_boot_preparation Linux Preparation on ARM
  *
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 3cab209..ba3a424 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -1,11 +1,12 @@
 #ifndef __ARCH_ARMLINUX_H
 #define __ARCH_ARMLINUX_H
 
+#include <asm/memory.h>
+
 #if defined CONFIG_CMD_BOOTM || defined CONFIG_CMD_BOOTZ || \
 	defined CONFIG_CMD_BOOTU
 void armlinux_set_bootparams(void *params);
 void armlinux_set_architecture(int architecture);
-void armlinux_add_dram(struct device_d *dev);
 void armlinux_set_revision(unsigned int);
 void armlinux_set_serial(u64);
 #else
@@ -17,10 +18,6 @@ static inline void armlinux_set_architecture(int architecture)
 {
 }
 
-static inline void armlinux_add_dram(struct device_d *dev)
-{
-}
-
 static inline void armlinux_set_revision(unsigned int rev)
 {
 }
diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index f746bc2..93c2fe6 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -1,16 +1,18 @@
-/*
- *  linux/include/asm-arm/memory.h
- *
- *  Copyright (C) 2000-2002 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- *  Note: this file should not be included by non-asm/.h files
- */
 #ifndef __ASM_ARM_MEMORY_H
 #define __ASM_ARM_MEMORY_H
 
+struct arm_memory {
+	struct list_head list;
+	struct device_d *dev;
+	u32 *ptes;
+	unsigned long start;
+	unsigned long size;
+};
+
+extern struct list_head memory_list;
+
+void armlinux_add_dram(struct device_d *dev);
+
+#define for_each_sdram_bank(mem)	list_for_each_entry(mem, &memory_list, list)
 
 #endif	/* __ASM_ARM_MEMORY_H */
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index e35e45d..c8ed402 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -42,6 +42,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/armlinux.h>
 #include <asm/system.h>
+#include <asm/memory.h>
 
 static struct tag *params;
 static int armlinux_architecture = 0;
@@ -64,18 +65,11 @@ static void setup_start_tag(void)
 	params = tag_next(params);
 }
 
-struct arm_memory {
-	struct list_head list;
-	struct device_d *dev;
-};
-
-static LIST_HEAD(memory_list);
-
 static void setup_memory_tags(void)
 {
 	struct arm_memory *mem;
 
-	list_for_each_entry(mem, &memory_list, list) {
+	for_each_sdram_bank(mem) {
 		params->hdr.tag = ATAG_MEM;
 		params->hdr.size = tag_size(tag_mem32);
 
@@ -196,15 +190,6 @@ void armlinux_set_architecture(int architecture)
 	armlinux_architecture = architecture;
 }
 
-void armlinux_add_dram(struct device_d *dev)
-{
-	struct arm_memory *mem = xzalloc(sizeof(*mem));
-
-	mem->dev = dev;
-
-	list_add_tail(&mem->list, &memory_list);
-}
-
 void armlinux_set_revision(unsigned int rev)
 {
 	system_rev = rev;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
