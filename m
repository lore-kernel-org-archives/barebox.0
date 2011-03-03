Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUP-0003OY-9e
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:30 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676066wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:20 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:50 +0100
Message-Id: <4d701d48.9009d80a.2cd3.5e98@mx.google.com>
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
Subject: [PATCH 36/54] Add arch/nios2/include/asm/io.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/io.h

---
 arch/nios2/include/asm/io.h |  130 +++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 130 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/io.h

diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
new file mode 100644
index 0000000..121405c
--- /dev/null
+++ b/arch/nios2/include/asm/io.h
@@ -0,0 +1,130 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __ASM_NIOS2_IO_H_
+#define __ASM_NIOS2_IO_H_
+
+static inline void sync(void)
+{
+	__asm__ __volatile__ ("sync" : : : "memory");
+}
+
+/*
+ * Given a physical address and a length, return a virtual address
+ * that can be used to access the memory range with the caching
+ * properties specified by "flags".
+ */
+#define MAP_NOCACHE	(0)
+#define MAP_WRCOMBINE	(0)
+#define MAP_WRBACK	(0)
+#define MAP_WRTHROUGH	(0)
+
+static inline void *
+map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)
+{
+	return (void *)paddr;
+}
+
+/*
+ * Take down a mapping set up by map_physmem().
+ */
+static inline void unmap_physmem(void *vaddr, unsigned long flags)
+{
+
+}
+
+static inline phys_addr_t virt_to_phys(void * vaddr)
+{
+	return (phys_addr_t)(vaddr);
+}
+
+extern unsigned char inb (unsigned char *port);
+extern unsigned short inw (unsigned short *port);
+extern unsigned inl (unsigned port);
+
+#define __raw_writeb(v,a)       (*(volatile unsigned char  *)(a) = (v))
+#define __raw_writew(v,a)       (*(volatile unsigned short *)(a) = (v))
+#define __raw_writel(v,a)       (*(volatile unsigned int   *)(a) = (v))
+
+#define __raw_readb(a)          (*(volatile unsigned char  *)(a))
+#define __raw_readw(a)          (*(volatile unsigned short *)(a))
+#define __raw_readl(a)          (*(volatile unsigned int   *)(a))
+
+#define readb(addr)\
+	({unsigned char val;\
+	 asm volatile( "ldbio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
+#define readw(addr)\
+	({unsigned short val;\
+	 asm volatile( "ldhio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
+#define readl(addr)\
+	({unsigned long val;\
+	 asm volatile( "ldwio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
+
+#define writeb(val,addr)\
+	asm volatile ("stbio %0, 0(%1)" : : "r" (val), "r" (addr))
+#define writew(val,addr)\
+	asm volatile ("sthio %0, 0(%1)" : : "r" (val), "r" (addr))
+#define writel(val,addr)\
+	asm volatile ("stwio %0, 0(%1)" : : "r" (val), "r" (addr))
+
+#define inb(addr)	readb(addr)
+#define inw(addr)	readw(addr)
+#define inl(addr)	readl(addr)
+#define outb(val, addr)	writeb(val,addr)
+#define outw(val, addr)	writew(val,addr)
+#define outl(val, addr)	writel(val,addr)
+
+static inline void insb (unsigned long port, void *dst, unsigned long count)
+{
+	unsigned char *p = dst;
+	while (count--) *p++ = inb (port);
+}
+static inline void insw (unsigned long port, void *dst, unsigned long count)
+{
+	unsigned short *p = dst;
+	while (count--) *p++ = inw (port);
+}
+static inline void insl (unsigned long port, void *dst, unsigned long count)
+{
+	unsigned long *p = dst;
+	while (count--) *p++ = inl (port);
+}
+
+static inline void outsb (unsigned long port, const void *src, unsigned long count)
+{
+	const unsigned char *p = src;
+	while (count--) outb (*p++, port);
+}
+
+static inline void outsw (unsigned long port, const void *src, unsigned long count)
+{
+	const unsigned short *p = src;
+	while (count--) outw (*p++, port);
+}
+static inline void outsl (unsigned long port, const void *src, unsigned long count)
+{
+	const unsigned long *p = src;
+	while (count--) outl (*p++, port);
+}
+
+#endif /* __ASM_NIOS2_IO_H_ */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
