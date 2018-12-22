Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gaczR-0004qS-3A
 for barebox@lists.infradead.org; Sat, 22 Dec 2018 08:50:35 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 22 Dec 2018 09:50:11 +0100
Message-Id: <20181222085012.9852-2-linux@rempel-privat.de>
In-Reply-To: <20181222085012.9852-1-linux@rempel-privat.de>
References: <20181222085012.9852-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 2/3] MIPS: convert files with not precise GNU version to
 SPDX
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Default barebox license is GPL-2.0-only. Set it to the files with
the missing one.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/include/asm/addrspace.h    | 5 +----
 arch/mips/include/asm/asm.h          | 5 +----
 arch/mips/include/asm/byteorder.h    | 5 +----
 arch/mips/include/asm/cacheops.h     | 7 +------
 arch/mips/include/asm/cpu-features.h | 5 +----
 arch/mips/include/asm/cpu-info.h     | 5 +----
 arch/mips/include/asm/elf.h          | 5 +----
 arch/mips/include/asm/mipsregs.h     | 5 +----
 arch/mips/include/asm/posix_types.h  | 5 +----
 arch/mips/include/asm/ptrace.h       | 5 +----
 arch/mips/include/asm/regdef.h       | 5 +----
 arch/mips/include/asm/sgidefs.h      | 5 +----
 arch/mips/include/asm/stackframe.h   | 5 +----
 arch/mips/include/asm/swab.h         | 5 +----
 arch/mips/include/asm/types.h        | 5 +----
 arch/mips/include/asm/unaligned.h    | 5 +----
 arch/mips/lib/c-r4k.c                | 5 +----
 arch/mips/lib/memcpy.S               | 5 +----
 arch/mips/lib/memset.S               | 5 +----
 19 files changed, 19 insertions(+), 78 deletions(-)

diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
index dc44d7f79..11f10e501 100644
--- a/arch/mips/include/asm/addrspace.h
+++ b/arch/mips/include/asm/addrspace.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1996, 99 Ralf Baechle
  * Copyright (C) 2000, 2002  Maciej W. Rozycki
  * Copyright (C) 1990, 1999 by Silicon Graphics, Inc.
diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 5ead754b1..7a23f4ed8 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1995, 1996, 1997, 1999, 2001 by Ralf Baechle
  * Copyright (C) 1999 by Silicon Graphics, Inc.
  * Copyright (C) 2001 MIPS Technologies, Inc.
diff --git a/arch/mips/include/asm/byteorder.h b/arch/mips/include/asm/byteorder.h
index 9579051ff..d6925204b 100644
--- a/arch/mips/include/asm/byteorder.h
+++ b/arch/mips/include/asm/byteorder.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1996, 99, 2003 by Ralf Baechle
  */
 #ifndef _ASM_BYTEORDER_H
diff --git a/arch/mips/include/asm/cacheops.h b/arch/mips/include/asm/cacheops.h
index 3bc585259..9f60e0287 100644
--- a/arch/mips/include/asm/cacheops.h
+++ b/arch/mips/include/asm/cacheops.h
@@ -1,10 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Cache operations for the cache instruction.
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * (C) Copyright 1996, 97, 99, 2002, 03 Ralf Baechle
  * (C) Copyright 1999 Silicon Graphics, Inc.
  */
diff --git a/arch/mips/include/asm/cpu-features.h b/arch/mips/include/asm/cpu-features.h
index 168d85445..f076116ff 100644
--- a/arch/mips/include/asm/cpu-features.h
+++ b/arch/mips/include/asm/cpu-features.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 2003, 2004 Ralf Baechle
  * Copyright (C) 2004  Maciej W. Rozycki
  */
diff --git a/arch/mips/include/asm/cpu-info.h b/arch/mips/include/asm/cpu-info.h
index 670173046..98a492ac2 100644
--- a/arch/mips/include/asm/cpu-info.h
+++ b/arch/mips/include/asm/cpu-info.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1994 Waldorf GMBH
  * Copyright (C) 1995, 1996, 1997, 1998, 1999, 2001, 2002, 2003 Ralf Baechle
  * Copyright (C) 1996 Paul M. Antoine
diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
index b8b82191c..3dd6b8235 100644
--- a/arch/mips/include/asm/elf.h
+++ b/arch/mips/include/asm/elf.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Much of this is taken from binutils and GNU libc ...
  */
 
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 30262e6e1..9e7d65654 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1994, 1995, 1996, 1997, 2000, 2001 by Ralf Baechle
  * Copyright (C) 2000 Silicon Graphics, Inc.
  * Modified for further R[236]000 support by Paul M. Antoine, 1996.
diff --git a/arch/mips/include/asm/posix_types.h b/arch/mips/include/asm/posix_types.h
index c38e24a4b..bd58c3965 100644
--- a/arch/mips/include/asm/posix_types.h
+++ b/arch/mips/include/asm/posix_types.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1996, 97, 98, 99, 2000 by Ralf Baechle
  * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
  */
diff --git a/arch/mips/include/asm/ptrace.h b/arch/mips/include/asm/ptrace.h
index 211834d8f..5e6519924 100644
--- a/arch/mips/include/asm/ptrace.h
+++ b/arch/mips/include/asm/ptrace.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1994, 95, 96, 97, 98, 99, 2000 by Ralf Baechle
  * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
  */
diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
index 7c8ecb6b9..130025166 100644
--- a/arch/mips/include/asm/regdef.h
+++ b/arch/mips/include/asm/regdef.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1985 MIPS Computer Systems, Inc.
  * Copyright (C) 1994, 95, 99, 2003 by Ralf Baechle
  * Copyright (C) 1990 - 1992, 1999 Silicon Graphics, Inc.
diff --git a/arch/mips/include/asm/sgidefs.h b/arch/mips/include/asm/sgidefs.h
index 876442fcf..6bdea3e61 100644
--- a/arch/mips/include/asm/sgidefs.h
+++ b/arch/mips/include/asm/sgidefs.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1996, 1999, 2001 Ralf Baechle
  * Copyright (C) 1999 Silicon Graphics, Inc.
  * Copyright (C) 2001 MIPS Technologies, Inc.
diff --git a/arch/mips/include/asm/stackframe.h b/arch/mips/include/asm/stackframe.h
index abfa2d25b..2295d7f02 100644
--- a/arch/mips/include/asm/stackframe.h
+++ b/arch/mips/include/asm/stackframe.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1994, 95, 96, 99, 2001 Ralf Baechle
  * Copyright (C) 1994, 1995, 1996 Paul M. Antoine.
  * Copyright (C) 1999 Silicon Graphics, Inc.
diff --git a/arch/mips/include/asm/swab.h b/arch/mips/include/asm/swab.h
index 97c2f81b4..d84eb18c5 100644
--- a/arch/mips/include/asm/swab.h
+++ b/arch/mips/include/asm/swab.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1996, 99, 2003 by Ralf Baechle
  */
 #ifndef _ASM_SWAB_H
diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
index 4140c92e1..cd76f53b5 100644
--- a/arch/mips/include/asm/types.h
+++ b/arch/mips/include/asm/types.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1994, 1995, 1996, 1999 by Ralf Baechle
  * Copyright (C) 2008 Wind River Systems,
  *   written by Ralf Baechle
diff --git a/arch/mips/include/asm/unaligned.h b/arch/mips/include/asm/unaligned.h
index 42f66c311..acb649c08 100644
--- a/arch/mips/include/asm/unaligned.h
+++ b/arch/mips/include/asm/unaligned.h
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 2007 Ralf Baechle (ralf@linux-mips.org)
  */
 #ifndef _ASM_MIPS_UNALIGNED_H
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index cb0544a53..8bc0a7a41 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1996 David S. Miller (davem@davemloft.net)
  * Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002 Ralf Baechle (ralf@gnu.org)
  * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
diff --git a/arch/mips/lib/memcpy.S b/arch/mips/lib/memcpy.S
index a5af0c938..cee0319dc 100644
--- a/arch/mips/lib/memcpy.S
+++ b/arch/mips/lib/memcpy.S
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1998, 99, 2000, 01, 2002 Ralf Baechle (ralf@gnu.org)
  * Copyright (C) 1999, 2000, 01, 2002 Silicon Graphics, Inc.
  * Copyright (C) 2002 Broadcom, Inc.
diff --git a/arch/mips/lib/memset.S b/arch/mips/lib/memset.S
index d3c1c7239..0b81bd7d8 100644
--- a/arch/mips/lib/memset.S
+++ b/arch/mips/lib/memset.S
@@ -1,8 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1998, 1999, 2000 by Ralf Baechle
  * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
  * Copyright (C) 2007 by Maciej W. Rozycki
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
