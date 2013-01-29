Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xq-KB
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:45:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:45 +0100
Message-Id: <1359449147-30145-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] ARM mmu: Use pr_debug
To: barebox@lists.infradead.org

Also, specify a pr_fmt and add missing GPL header.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |   27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 40b7ec4..4b6db37 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -1,3 +1,24 @@
+/*
+ * start-pbl.c
+ *
+ * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#define pr_fmt(fmt)	"mmu: " fmt
+
 #include <common.h>
 #include <init.h>
 #include <asm/mmu.h>
@@ -138,7 +159,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	int i, pte;
 	u32 *ptes;
 
-	debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
+	pr_debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
 			phys, bank->size);
 
 	/*
@@ -150,7 +171,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 
 	ptes = xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
 
-	debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
+	pr_debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
 			ptes, ttb_start, ttb_end);
 
 	for (i = 0; i < num_ptes; i++) {
@@ -242,7 +263,7 @@ static int mmu_init(void)
 
 	ttb = memalign(0x10000, 0x4000);
 
-	debug("ttb: 0x%p\n", ttb);
+	pr_debug("ttb: 0x%p\n", ttb);
 
 	/* Set the ttb register */
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
