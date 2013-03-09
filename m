Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOu-0000iA-W3
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:02 +0100
Message-Id: <1362826391-16215-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] mips: initialize malloc pool before start_barebox()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/boot/main_entry.c |  5 +++++
 arch/mips/lib/Makefile      |  1 -
 arch/mips/lib/memory.c      | 29 -----------------------------
 3 files changed, 5 insertions(+), 30 deletions(-)
 delete mode 100644 arch/mips/lib/memory.c

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 0a33c45..015150b 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -18,6 +18,8 @@
 
 #include <common.h>
 #include <string.h>
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/cpu-features.h>
 #include <asm/mipsregs.h>
@@ -90,5 +92,8 @@ void main_entry(void)
 
 	trap_init();
 
+	mem_malloc_init((void *)MALLOC_BASE,
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+
 	start_barebox();
 }
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index a31046b..71c4f6b 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -3,7 +3,6 @@ obj-$(CONFIG_CSRC_R4K_LIB) += csrc-r4k.o
 obj-y += lshrdi3.o
 obj-y += ashldi3.o
 obj-y += ashrdi3.o
-obj-y += memory.o
 obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
diff --git a/arch/mips/lib/memory.c b/arch/mips/lib/memory.c
deleted file mode 100644
index 003fc00..0000000
--- a/arch/mips/lib/memory.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <memory.h>
-#include <asm-generic/memory_layout.h>
-
-static int mips_mem_malloc_init(void)
-{
-	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
-	return 0;
-}
-core_initcall(mips_mem_malloc_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
