Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d67-00088m-FI
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:31 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B715E200013
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:12 +0200
Message-Id: <20190827150918.16247-5-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 04/10] Kconfig: retire empty <asm/barebox.h>
To: barebox@lists.infradead.org

With the latest changes, this file is empty on all archs. Drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/include/asm/barebox.h      |  4 ----
 arch/blackfin/include/asm/barebox.h | 25 -------------------------
 arch/mips/include/asm/barebox.h     |  6 ------
 arch/nios2/include/asm/barebox.h    |  4 ----
 arch/openrisc/include/asm/barebox.h |  4 ----
 arch/ppc/include/asm/barebox.h      | 27 ---------------------------
 arch/ppc/include/asm/common.h       |  2 --
 arch/riscv/include/asm/barebox.h    |  1 -
 arch/sandbox/include/asm/barebox.h  |  1 -
 arch/x86/include/asm/barebox.h      | 17 -----------------
 include/abort.h                     |  2 --
 include/common.h                    |  2 --
 12 files changed, 95 deletions(-)
 delete mode 100644 arch/arm/include/asm/barebox.h
 delete mode 100644 arch/blackfin/include/asm/barebox.h
 delete mode 100644 arch/mips/include/asm/barebox.h
 delete mode 100644 arch/nios2/include/asm/barebox.h
 delete mode 100644 arch/openrisc/include/asm/barebox.h
 delete mode 100644 arch/ppc/include/asm/barebox.h
 delete mode 100644 arch/riscv/include/asm/barebox.h
 delete mode 100644 arch/sandbox/include/asm/barebox.h
 delete mode 100644 arch/x86/include/asm/barebox.h

diff --git a/arch/arm/include/asm/barebox.h b/arch/arm/include/asm/barebox.h
deleted file mode 100644
index c1b56432ccfc..000000000000
--- a/arch/arm/include/asm/barebox.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _BAREBOX_H_
-#define _BAREBOX_H_	1
-
-#endif	/* _BAREBOX_H_ */
diff --git a/arch/blackfin/include/asm/barebox.h b/arch/blackfin/include/asm/barebox.h
deleted file mode 100644
index 4b1898270a6c..000000000000
--- a/arch/blackfin/include/asm/barebox.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/*
- * Copyright (c) 2005 blackfin.uclinux.org
- *
- * (C) Copyright 2000-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
- *
- */
-
-#ifndef _BAREBOX_H_
-#define _BAREBOX_H_	1
-
-#endif	/* _BAREBOX_H_ */
diff --git a/arch/mips/include/asm/barebox.h b/arch/mips/include/asm/barebox.h
deleted file mode 100644
index 4c68e3f8354d..000000000000
--- a/arch/mips/include/asm/barebox.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-
-#ifndef _ASM_MIPS_BAREBOX_H_
-#define _ASM_MIPS_BAREBOX_H_
-
-#endif /* _ASM_MIPS_BAREBOX_H_ */
diff --git a/arch/nios2/include/asm/barebox.h b/arch/nios2/include/asm/barebox.h
deleted file mode 100644
index 9dd1df8e329b..000000000000
--- a/arch/nios2/include/asm/barebox.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _ASM_BAREBOX_H_
-#define _ASM_BAREBOX_H_
-
-#endif /* _ASM_BAREBOX_H_ */
diff --git a/arch/openrisc/include/asm/barebox.h b/arch/openrisc/include/asm/barebox.h
deleted file mode 100644
index 9dd1df8e329b..000000000000
--- a/arch/openrisc/include/asm/barebox.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _ASM_BAREBOX_H_
-#define _ASM_BAREBOX_H_
-
-#endif /* _ASM_BAREBOX_H_ */
diff --git a/arch/ppc/include/asm/barebox.h b/arch/ppc/include/asm/barebox.h
deleted file mode 100644
index 0c608b3079c5..000000000000
--- a/arch/ppc/include/asm/barebox.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * (C) Copyright 2000 - 2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- *
- ********************************************************************
- * NOTE: This header file defines an interface to barebox. Including
- * this (unmodified) header file in another file is considered normal
- * use of barebox, and does *not* fall under the heading of "derived
- * work".
- ********************************************************************
- */
-
-#ifndef __BAREBOX_H__
-#define __BAREBOX_H__
-
-#endif	/* __BAREBOX_H__ */
diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index 045817bed226..b91f51e46219 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -1,8 +1,6 @@
 #ifndef __ASM_COMMON_H
 #define __ASM_COMMON_H
 
-#include <asm/barebox.h>
-
 extern unsigned long _text_base;
 
 unsigned long long get_ticks(void);
diff --git a/arch/riscv/include/asm/barebox.h b/arch/riscv/include/asm/barebox.h
deleted file mode 100644
index 2997587d820c..000000000000
--- a/arch/riscv/include/asm/barebox.h
+++ /dev/null
@@ -1 +0,0 @@
-/* dummy */
diff --git a/arch/sandbox/include/asm/barebox.h b/arch/sandbox/include/asm/barebox.h
deleted file mode 100644
index 2997587d820c..000000000000
--- a/arch/sandbox/include/asm/barebox.h
+++ /dev/null
@@ -1 +0,0 @@
-/* dummy */
diff --git a/arch/x86/include/asm/barebox.h b/arch/x86/include/asm/barebox.h
deleted file mode 100644
index 473edb555cf1..000000000000
--- a/arch/x86/include/asm/barebox.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
- *
- *
- */
-
-/* nothing special yet */
diff --git a/include/abort.h b/include/abort.h
index 3eb7986f41c4..89ee549e3452 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -1,8 +1,6 @@
 #ifndef __ABORT_H
 #define __ABORT_H
 
-#include <asm/barebox.h>
-
 #if defined CONFIG_ARCH_HAS_DATA_ABORT_MASK && !defined __PBL__
 
 /*
diff --git a/include/common.h b/include/common.h
index ebb2ecef5c2a..65630684678c 100644
--- a/include/common.h
+++ b/include/common.h
@@ -51,8 +51,6 @@
 #error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
 #endif
 
-#include <asm/barebox.h> /* boot information for Linux kernel */
-
 /*
  * Function Prototypes
  */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
