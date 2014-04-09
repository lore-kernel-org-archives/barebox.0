Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXwNA-0005ZO-Gd
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 17:33:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 19:32:49 +0200
Message-Id: <1397064769-20988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] openrisc: Use generic io accessors
To: barebox@lists.infradead.org

openrisc does nothing special in the io accessors, so use the generic
ones as the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/include/asm/io.h | 101 ++---------------------------------------
 1 file changed, 3 insertions(+), 98 deletions(-)

diff --git a/arch/openrisc/include/asm/io.h b/arch/openrisc/include/asm/io.h
index 90abb42..05580bd 100644
--- a/arch/openrisc/include/asm/io.h
+++ b/arch/openrisc/include/asm/io.h
@@ -16,104 +16,9 @@
 #ifndef __ASM_OPENRISC_IO_H
 #define __ASM_OPENRISC_IO_H
 
-#include <asm/byteorder.h>
-
-/*
- * Given a physical address and a length, return a virtual address
- * that can be used to access the memory range with the caching
- * properties specified by "flags".
- */
-#define MAP_NOCACHE	(0)
-#define MAP_WRCOMBINE	(0)
-#define MAP_WRBACK	(0)
-#define MAP_WRTHROUGH	(0)
-
-static inline void *
-map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)
-{
-	return (void *)paddr;
-}
-
-/*
- * Take down a mapping set up by map_physmem().
- */
-static inline void unmap_physmem(void *vaddr, unsigned long flags)
-{
-
-}
-
-/*
- * Change virtual addresses to physical addresses
- */
-static inline phys_addr_t virt_to_phys(void *vaddr)
-{
-	return (phys_addr_t)(vaddr);
-}
-
-
-/*
- * readX/writeX() are used to access memory mapped devices. On some
- * architectures the memory mapped IO stuff needs to be accessed
- * differently. On the openrisc architecture, we just read/write the
- * memory location directly.
- */
-#define readb(addr) (*(volatile unsigned char *) (addr))
-#define readw(addr) (*(volatile unsigned short *) (addr))
-#define readl(addr) (*(volatile unsigned int *) (addr))
-#define __raw_readb readb
-#define __raw_readw readw
-#define __raw_readl readl
-
-#define writeb(b, addr) ((*(volatile unsigned char *) (addr)) = (b))
-#define writew(b, addr) ((*(volatile unsigned short *) (addr)) = (b))
-#define writel(b, addr) ((*(volatile unsigned int *) (addr)) = (b))
-#define __raw_writeb writeb
-#define __raw_writew writew
-#define __raw_writel writel
-
-#define memset_io(a, b, c)	memset((void *)(a), (b), (c))
-#define memcpy_fromio(a, b, c)	memcpy((a), (void *)(b), (c))
-#define memcpy_toio(a, b, c)	memcpy((void *)(a), (b), (c))
+#define IO_SPACE_LIMIT		0x0
 
-#define out_be32(a, v) __raw_writel((v), (void __iomem __force *)(a))
-#define out_be16(a, v) __raw_writew((v), (a))
-
-#define in_be32(a) __raw_readl((const void __iomem __force *)(a))
-#define in_be16(a) __raw_readw(a)
-
-#define writel_be(v, a) out_be32((__force unsigned *)a, v)
-#define readl_be(a)     in_be32((__force unsigned *)a)
-
-/*
- * Again, OpenRISC does not require mem IO specific function.
- */
-
-
-#define IO_BASE			0x0
-#define IO_SPACE_LIMIT		0xffffffff
-
-#define inb(port)		readb((port + IO_BASE))
-#define outb(value, port)	writeb((value), (port + IO_BASE))
-#define inb_p(port)		inb((port))
-#define outb_p(value, port)	outb((value), (port))
-
-/*
- * Convert a physical pointer to a virtual kernel pointer for /dev/mem
- * access
- */
-#define xlate_dev_mem_ptr(p)	__va(p)
-
-/*
- * Convert a virtual cached pointer to an uncached pointer
- */
-#define xlate_dev_kmem_ptr(p)	p
-
-#define ioread8(addr)		readb(addr)
-#define ioread16(addr)		readw(addr)
-#define ioread32(addr)		readl(addr)
-
-#define iowrite8(v, addr)	writeb((v), (addr))
-#define iowrite16(v, addr)	writew((v), (addr))
-#define iowrite32(v, addr)	writel((v), (addr))
+#include <asm/byteorder.h>
+#include <asm-generic/io.h>
 
 #endif
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
