Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dgAti-0000iq-RC
 for barebox@lists.infradead.org; Fri, 11 Aug 2017 14:26:48 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 11 Aug 2017 16:26:10 +0200
Message-Id: <20170811142610.20261-1-linux@rempel-privat.de>
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
Subject: [PATCH v3] MIPS: add virt_to_phys() and phys_to_virt()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
changes.
v3:
 - remove some comments.

v2:
 - make use of use CPHYSADDR and CKSEG0ADDR

 arch/mips/include/asm/io.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4bee5913a..5a4cbf564 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -12,11 +12,36 @@
 
 #include <linux/compiler.h>
 #include <asm/types.h>
+#include <asm/addrspace.h>
 #include <asm/byteorder.h>
 
 void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
 
+/*
+ *     virt_to_phys - map virtual addresses to physical
+ *     @address: address to remap
+ *
+ *     The returned physical address is the physical (CPU) mapping for
+ *     the memory address given.
+ */
+static inline unsigned long virt_to_phys(const void *address)
+{
+	return (unsigned long)CPHYSADDR(address);
+}
+
+/*
+ *     phys_to_virt - map physical address to virtual
+ *     @address: address to remap
+ *
+ *     The returned virtual address is a current CPU mapping for
+ *     the memory address given.
+ */
+static inline void *phys_to_virt(unsigned long address)
+{
+	return (void *)CKSEG0ADDR(address);
+}
+
 #define	IO_SPACE_LIMIT	0
 
 /*****************************************************************************/
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
