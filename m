Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5bA-0004AA-QI
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:45 +0000
Received: by labia3 with SMTP id ia3so21640420lab.3
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:04 +0300
Message-Id: <1440714250-28080-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/9] MIPS: add virt_to_phys() and phys_to_virt()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

N.B. phys_to_virt() translates phys address
to KSEG1 (uncached) address as barebox mips
has no cache support.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/io.h | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4832be6..26605a7 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -12,8 +12,43 @@
 
 #include <linux/compiler.h>
 #include <asm/types.h>
+#include <asm/addrspace.h>
 #include <asm/byteorder.h>
 
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
+	return (void *)(KSEG1 | (address & 0x3fffffff));
+}
+
 #define	IO_SPACE_LIMIT	0
 
 /*****************************************************************************/
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
