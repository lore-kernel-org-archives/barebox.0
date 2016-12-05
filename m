Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x242.google.com ([2a00:1450:400c:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplp-00026A-Ol
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:19 +0000
Received: by mail-wj0-x242.google.com with SMTP id j10so10882549wjb.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:53 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:26 +0300
Message-Id: <20161205094033.31569-2-antonynpavlov@gmail.com>
In-Reply-To: <20161205094033.31569-1-antonynpavlov@gmail.com>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 1/8] MIPS: add virt_to_phys() and phys_to_virt()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/io.h | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4bee591..993b30e 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -12,11 +12,46 @@
 
 #include <linux/compiler.h>
 #include <asm/types.h>
+#include <asm/addrspace.h>
 #include <asm/byteorder.h>
 
 void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
 
+/*
+ *     virt_to_phys    -       map virtual addresses to physical
+ *     @address: address to remap
+ *
+ *     The returned physical address is the physical (CPU) mapping for
+ *     the memory address given. It is only valid to use this function on
+ *     addresses directly mapped or allocated via kmalloc.
+ *
+ *     This function does not give bus mappings for DMA transfers. In
+ *     almost all conceivable cases a device driver should not be using
+ *     this function
+ */
+static inline unsigned long virt_to_phys(const void *address)
+{
+	return (unsigned long)address & 0x1fffffff;
+}
+
+/*
+ *     phys_to_virt    -       map physical address to virtual
+ *     @address: address to remap
+ *
+ *     The returned virtual address is a current CPU mapping for
+ *     the memory address given. It is only valid to use this function on
+ *     addresses that have a kernel mapping
+ *
+ *     This function does not handle bus mappings for DMA transfers. In
+ *     almost all conceivable cases a device driver should not be using
+ *     this function
+ */
+static inline void *phys_to_virt(unsigned long address)
+{
+	return (void *)(KSEG0 | (address & 0x1fffffff));
+}
+
 #define	IO_SPACE_LIMIT	0
 
 /*****************************************************************************/
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
