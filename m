Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqK-0003gQ-FI
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:42 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 4B272FFA5B2
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:37 +0200
Message-Id: <1312205383-13266-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Subject: [PATCH 3/9] ARM: move armlinux_add_dram to location which is always
	compiled
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

We want to use the memory banks later in the MMU which is
independent of Linux, so move this to a location which is
always compiled.

Also, make the memory bank list global and add an iterator
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c              |   14 ++++++++++++++
 arch/arm/include/asm/armlinux.h |    7 ++-----
 arch/arm/include/asm/memory.h   |   34 ++++++++++++++++++----------------
 arch/arm/lib/armlinux.c         |   19 ++-----------------
 4 files changed, 36 insertions(+), 38 deletions(-)
 rewrite arch/arm/include/asm/memory.h (79%)

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
index f76cca8..bb25f9a 100644
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
dissimilarity index 79%
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
-#ifndef __ASM_ARM_MEMORY_H
-#define __ASM_ARM_MEMORY_H
-
-
-#endif	/* __ASM_ARM_MEMORY_H */
+#ifndef __ASM_ARM_MEMORY_H
+#define __ASM_ARM_MEMORY_H
+
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
+
+#endif	/* __ASM_ARM_MEMORY_H */
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
