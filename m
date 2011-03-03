Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUZ-0003Zo-5q
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:39 +0000
Received: by wwj40 with SMTP id 40so1440475wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:29 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:59:03 +0100
Message-Id: <4d701d51.9009d80a.2cd3.5ea8@mx.google.com>
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
Subject: [PATCH 49/54] Add arch/nios2/include/asm/spaces.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/spaces.h

---
 arch/nios2/include/asm/spaces.h |   32 ++++++++++++++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/spaces.h

diff --git a/arch/nios2/include/asm/spaces.h b/arch/nios2/include/asm/spaces.h
new file mode 100644
index 0000000..fdc21f5
--- /dev/null
+++ b/arch/nios2/include/asm/spaces.h
@@ -0,0 +1,32 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 - 1999, 2000, 03, 04 Ralf Baechle
+ * Copyright (C) 2000, 2002  Maciej W. Rozycki
+ * Copyright (C) 1990, 1999, 2000 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_NIOS2_GENERIC_SPACES_H
+#define _ASM_NIOS2_GENERIC_SPACES_H
+
+#if 0
+
+#include <asm/nios.h>
+
+/*
+ * This handles the memory map.
+ * We handle pages at KSEG0 for kernels with 32 bit address space.
+ */
+#define PAGE_OFFSET		(KERNEL_REGION_BASE + DDR2_TOP_BASE)
+
+/*
+ * Memory above this physical address will be considered highmem.
+ */
+#ifndef HIGHMEM_START
+#define HIGHMEM_START		0x20000000UL
+#endif
+
+#endif
+
+#endif /* _ASM_NIOS2_GENERIC_SPACES_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
