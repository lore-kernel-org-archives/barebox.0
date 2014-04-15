Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxn-0002tO-70
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:27 +0000
Received: by mail-lb0-f174.google.com with SMTP id u14so6484479lbd.5
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:39:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:28 +0400
Message-Id: <1397547514-19925-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 04/10] MIPS: add virt_to_phys() and phys_to_virt()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/io.h | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index ff66ea5..dcda857 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -12,6 +12,7 @@
 
 #include <linux/compiler.h>
 #include <asm/types.h>
+#include <asm/addrspace.h>
 #include <asm/byteorder.h>
 
 void *dma_alloc_coherent(size_t size);
@@ -21,6 +22,40 @@ void dma_clean_range(unsigned long, unsigned long);
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
+	return (unsigned long)address & 0x3fffffff;
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
+	return (void *)(KSEG0 | (address & 0x3fffffff));
+}
+
 #define	IO_SPACE_LIMIT	0
 
 /*****************************************************************************/
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
