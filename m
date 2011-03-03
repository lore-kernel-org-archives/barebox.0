Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUV-0003Ty-4L
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:36 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440321wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:26 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:58 +0100
Message-Id: <4d701d4e.9009d80a.2cd3.5ea2@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 44/54] Add arch/nios2/include/asm/pgtable-bits.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/pgtable-bits.h

---
 arch/nios2/include/asm/pgtable-bits.h |   38 +++++++++++++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/pgtable-bits.h

diff --git a/arch/nios2/include/asm/pgtable-bits.h b/arch/nios2/include/asm/pgtable-bits.h
new file mode 100644
index 0000000..0e04c38
--- /dev/null
+++ b/arch/nios2/include/asm/pgtable-bits.h
@@ -0,0 +1,38 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 - 2002 by Ralf Baechle
+ * Copyright (C) 1999, 2000, 2001 Silicon Graphics, Inc.
+ * Copyright (C) 2002  Maciej W. Rozycki
+ */
+#ifndef _ASM_NIOS2_PGTABLE_BITS_H
+#define _ASM_NIOS2_PGTABLE_BITS_H
+
+/* These are actual HW defined protection bits (unshifted) in TLBACC
+ */
+#define _PAGE_GLOBAL                (1<<0)
+#define _PAGE_EXEC                  (1<<1)
+#define _PAGE_WRITE                 (1<<2)
+#define _PAGE_READ                  (1<<3)
+#define _PAGE_CACHED                (1<<4)
+
+/* TLBACC also has 7 IGNORE bits to use for SW defined attributes
+ */
+#define _PAGE_PRESENT               (1<<5)
+#define _PAGE_ACCESSED              (1<<6)  
+#define _PAGE_MODIFIED              (1<<7)  
+#define _PAGE_FILE                  (1<<8)  
+#define _PAGE_VALID                 (1<<9)
+#define _PAGE_OLD                   (1<<10)
+
+#if 1
+/* ivho: lets not turn on caches right now...
+ */
+#define PAGE_CACHABLE_DEFAULT	_PAGE_CACHED
+#else
+#define PAGE_CACHABLE_DEFAULT	0
+#endif
+
+#endif /* _ASM_NIOS2_PGTABLE_BITS_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
