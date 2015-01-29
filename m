Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGexL-0005q1-SU
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:35:45 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0T2ZMk9021524
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:35:22 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0T2ZMJ20065
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:35:22 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:35:19 +0900
Message-Id: <1422498919-30268-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] blackfin: consolidate arch/blackfin/include/asm/linkage.h
To: barebox@lists.infradead.org

Since include/linux/linkage.h includes <asm/linkage.h>, the basic
coding style we should follow is:

 - <linux/linkage.h> should contain default macro defines
 - <asm/linkage.h> can define arch-specific macros and override the
   default ones in <linux/linkage.h>

The arch/blackfin/include/asm/linkage.h has redundant defines that
are already defined in <linux/linkage.h>.
Replace it with the one imported from Linux 3.19-rc6.

Generally, <asm/linkage.h> should not be included directly.
Fix two files to include <linux/linkage.h> instead.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/blackfin/include/asm/linkage.h | 53 +++++--------------------------------
 arch/blackfin/include/asm/system.h  |  2 +-
 arch/blackfin/lib/flush.S           |  2 +-
 3 files changed, 8 insertions(+), 49 deletions(-)

diff --git a/arch/blackfin/include/asm/linkage.h b/arch/blackfin/include/asm/linkage.h
index 0f54727..f7d6d47 100644
--- a/arch/blackfin/include/asm/linkage.h
+++ b/arch/blackfin/include/asm/linkage.h
@@ -1,54 +1,13 @@
 /*
- * barebox - linkage.h
- *
- * Copyright (c) 2005 blackfin.uclinux.org
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
+ * Copyright 2004-2009 Analog Devices Inc.
  *
+ * Licensed under the GPL-2 or later.
  */
 
-#ifndef _LINUX_LINKAGE_H
-#define _LINUX_LINKAGE_H
-
-#ifdef __cplusplus
-#define CPP_ASMLINKAGE		extern "C"
-#else
-#define CPP_ASMLINKAGE
-#endif
-
-#define asmlinkage CPP_ASMLINKAGE
+#ifndef __ASM_LINKAGE_H
+#define __ASM_LINKAGE_H
 
-#define SYMBOL_NAME_STR(X)	#X
-#define SYMBOL_NAME(X)		X
-#ifdef __STDC__
-#define SYMBOL_NAME_LABEL(X)	X##:
-#else
-#define SYMBOL_NAME_LABEL(X)	X:
-#endif
-
-#define __ALIGN .align		4
-#define __ALIGN_STR		".align 4"
-
-#ifdef __ASSEMBLY__
-
-#define ALIGN			__ALIGN
-#define ALIGN_STR		__ALIGN_STR
-
-#define ENTRY(name) \
-	.globl SYMBOL_NAME(name); \
-	ALIGN; \
-	SYMBOL_NAME_LABEL(name)
-#endif
+#define __ALIGN .align 4
+#define __ALIGN_STR ".align 4"
 
 #endif
diff --git a/arch/blackfin/include/asm/system.h b/arch/blackfin/include/asm/system.h
index 581fd42..f11dd4e 100644
--- a/arch/blackfin/include/asm/system.h
+++ b/arch/blackfin/include/asm/system.h
@@ -21,7 +21,7 @@
 #ifndef _BLACKFIN_SYSTEM_H
 #define _BLACKFIN_SYSTEM_H
 
-#include <asm/linkage.h>
+#include <linux/linkage.h>
 #include <asm/blackfin.h>
 #include <asm/segment.h>
 #include <asm/entry.h>
diff --git a/arch/blackfin/lib/flush.S b/arch/blackfin/lib/flush.S
index 62aa496..4ee5d87 100644
--- a/arch/blackfin/lib/flush.S
+++ b/arch/blackfin/lib/flush.S
@@ -8,7 +8,7 @@
  */
 #define ASSEMBLY
 
-#include <asm/linkage.h>
+#include <linux/linkage.h>
 #include <asm/cplb.h>
 #include <asm/blackfin.h>
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
