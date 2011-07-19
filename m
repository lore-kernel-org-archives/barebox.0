Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjI0Z-0000PC-F6
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 21:39:19 +0000
Received: by mail-fx0-f43.google.com with SMTP id 17so555743fxg.16
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 14:39:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 20 Jul 2011 01:38:56 +0400
Message-Id: <1311111546-888-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
References: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v7 05/15] MIPS: update io.h for barebox
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/io.h |  322 ++------------------------------------------
 1 files changed, 11 insertions(+), 311 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index e0ffa3d..97ea231 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -1,27 +1,17 @@
-/* Generic I/O port emulation, based on MN10300 code
- *
- * Copyright (C) 2007 Red Hat, Inc. All Rights Reserved.
- * Written by David Howells (dhowells@redhat.com)
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public Licence
- * as published by the Free Software Foundation; either version
- * 2 of the Licence, or (at your option) any later version.
+/*
+ * Stolen from the linux-2.6/include/asm-generic/io.h
  */
-#ifndef __ASM_GENERIC_IO_H
-#define __ASM_GENERIC_IO_H
 
-#include <asm/page.h> /* I/O is all done through memory accesses */
-#include <asm/cacheflush.h>
-#include <linux/types.h>
+/**
+ * @file
+ * @brief mips IO access functions
+ */
 
-#ifdef CONFIG_GENERIC_IOMAP
-#include <asm-generic/iomap.h>
-#endif
+#ifndef __ASM_MIPS_IO_H
+#define __ASM_MIPS_IO_H
 
-#ifndef mmiowb
-#define mmiowb() do {} while (0)
-#endif
+#include <linux/compiler.h>
+#include <asm/types.h>
 
 /*****************************************************************************/
 /*
@@ -51,10 +41,6 @@ static inline u32 __raw_readl(const volatile void __iomem *addr)
 }
 #endif
 
-#define readb __raw_readb
-#define readw(addr) __le16_to_cpu(__raw_readw(addr))
-#define readl(addr) __le32_to_cpu(__raw_readl(addr))
-
 #ifndef __raw_writeb
 static inline void __raw_writeb(u8 b, volatile void __iomem *addr)
 {
@@ -76,290 +62,4 @@ static inline void __raw_writel(u32 b, volatile void __iomem *addr)
 }
 #endif
 
-#define writeb __raw_writeb
-#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
-#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
-
-#ifdef CONFIG_64BIT
-static inline u64 __raw_readq(const volatile void __iomem *addr)
-{
-	return *(const volatile u64 __force *) addr;
-}
-#define readq(addr) __le64_to_cpu(__raw_readq(addr))
-
-static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
-{
-	*(volatile u64 __force *) addr = b;
-}
-#define writeq(b,addr) __raw_writeq(__cpu_to_le64(b),addr)
-#endif
-
-#ifndef PCI_IOBASE
-#define PCI_IOBASE ((void __iomem *) 0)
-#endif
-
-/*****************************************************************************/
-/*
- * traditional input/output functions
- */
-
-static inline u8 inb(unsigned long addr)
-{
-	return readb(addr + PCI_IOBASE);
-}
-
-static inline u16 inw(unsigned long addr)
-{
-	return readw(addr + PCI_IOBASE);
-}
-
-static inline u32 inl(unsigned long addr)
-{
-	return readl(addr + PCI_IOBASE);
-}
-
-static inline void outb(u8 b, unsigned long addr)
-{
-	writeb(b, addr + PCI_IOBASE);
-}
-
-static inline void outw(u16 b, unsigned long addr)
-{
-	writew(b, addr + PCI_IOBASE);
-}
-
-static inline void outl(u32 b, unsigned long addr)
-{
-	writel(b, addr + PCI_IOBASE);
-}
-
-#define inb_p(addr)	inb(addr)
-#define inw_p(addr)	inw(addr)
-#define inl_p(addr)	inl(addr)
-#define outb_p(x, addr)	outb((x), (addr))
-#define outw_p(x, addr)	outw((x), (addr))
-#define outl_p(x, addr)	outl((x), (addr))
-
-#ifndef insb
-static inline void insb(unsigned long addr, void *buffer, int count)
-{
-	if (count) {
-		u8 *buf = buffer;
-		do {
-			u8 x = inb(addr);
-			*buf++ = x;
-		} while (--count);
-	}
-}
-#endif
-
-#ifndef insw
-static inline void insw(unsigned long addr, void *buffer, int count)
-{
-	if (count) {
-		u16 *buf = buffer;
-		do {
-			u16 x = inw(addr);
-			*buf++ = x;
-		} while (--count);
-	}
-}
-#endif
-
-#ifndef insl
-static inline void insl(unsigned long addr, void *buffer, int count)
-{
-	if (count) {
-		u32 *buf = buffer;
-		do {
-			u32 x = inl(addr);
-			*buf++ = x;
-		} while (--count);
-	}
-}
-#endif
-
-#ifndef outsb
-static inline void outsb(unsigned long addr, const void *buffer, int count)
-{
-	if (count) {
-		const u8 *buf = buffer;
-		do {
-			outb(*buf++, addr);
-		} while (--count);
-	}
-}
-#endif
-
-#ifndef outsw
-static inline void outsw(unsigned long addr, const void *buffer, int count)
-{
-	if (count) {
-		const u16 *buf = buffer;
-		do {
-			outw(*buf++, addr);
-		} while (--count);
-	}
-}
-#endif
-
-#ifndef outsl
-static inline void outsl(unsigned long addr, const void *buffer, int count)
-{
-	if (count) {
-		const u32 *buf = buffer;
-		do {
-			outl(*buf++, addr);
-		} while (--count);
-	}
-}
-#endif
-
-static inline void readsl(const void __iomem *addr, void *buf, int len)
-{
-	insl(addr - PCI_IOBASE, buf, len);
-}
-
-static inline void readsw(const void __iomem *addr, void *buf, int len)
-{
-	insw(addr - PCI_IOBASE, buf, len);
-}
-
-static inline void readsb(const void __iomem *addr, void *buf, int len)
-{
-	insb(addr - PCI_IOBASE, buf, len);
-}
-
-static inline void writesl(const void __iomem *addr, const void *buf, int len)
-{
-	outsl(addr - PCI_IOBASE, buf, len);
-}
-
-static inline void writesw(const void __iomem *addr, const void *buf, int len)
-{
-	outsw(addr - PCI_IOBASE, buf, len);
-}
-
-static inline void writesb(const void __iomem *addr, const void *buf, int len)
-{
-	outsb(addr - PCI_IOBASE, buf, len);
-}
-
-#ifndef CONFIG_GENERIC_IOMAP
-#define ioread8(addr)		readb(addr)
-#define ioread16(addr)		readw(addr)
-#define ioread16be(addr)	be16_to_cpu(ioread16(addr))
-#define ioread32(addr)		readl(addr)
-#define ioread32be(addr)	be32_to_cpu(ioread32(addr))
-
-#define iowrite8(v, addr)	writeb((v), (addr))
-#define iowrite16(v, addr)	writew((v), (addr))
-#define iowrite16be(v, addr)	iowrite16(be16_to_cpu(v), (addr))
-#define iowrite32(v, addr)	writel((v), (addr))
-#define iowrite32be(v, addr)	iowrite32(be32_to_cpu(v), (addr))
-
-#define ioread8_rep(p, dst, count) \
-	insb((unsigned long) (p), (dst), (count))
-#define ioread16_rep(p, dst, count) \
-	insw((unsigned long) (p), (dst), (count))
-#define ioread32_rep(p, dst, count) \
-	insl((unsigned long) (p), (dst), (count))
-
-#define iowrite8_rep(p, src, count) \
-	outsb((unsigned long) (p), (src), (count))
-#define iowrite16_rep(p, src, count) \
-	outsw((unsigned long) (p), (src), (count))
-#define iowrite32_rep(p, src, count) \
-	outsl((unsigned long) (p), (src), (count))
-#endif /* CONFIG_GENERIC_IOMAP */
-
-#ifndef IO_SPACE_LIMIT
-#define IO_SPACE_LIMIT 0xffff
-#endif
-
-#ifdef __KERNEL__
-
-#include <linux/vmalloc.h>
-#define __io_virt(x) ((void __force *) (x))
-
-#ifndef CONFIG_GENERIC_IOMAP
-/* Create a virtual mapping cookie for a PCI BAR (memory or IO) */
-struct pci_dev;
-extern void __iomem *pci_iomap(struct pci_dev *dev, int bar, unsigned long max);
-static inline void pci_iounmap(struct pci_dev *dev, void __iomem *p)
-{
-}
-#endif /* CONFIG_GENERIC_IOMAP */
-
-/*
- * Change virtual addresses to physical addresses and vv.
- * These are pretty trivial
- */
-static inline unsigned long virt_to_phys(volatile void *address)
-{
-	return __pa((unsigned long)address);
-}
-
-static inline void *phys_to_virt(unsigned long address)
-{
-	return __va(address);
-}
-
-/*
- * Change "struct page" to physical address.
- */
-static inline void __iomem *ioremap(phys_addr_t offset, unsigned long size)
-{
-	return (void __iomem*) (unsigned long)offset;
-}
-
-#define __ioremap(offset, size, flags)	ioremap(offset, size)
-
-#ifndef ioremap_nocache
-#define ioremap_nocache ioremap
-#endif
-
-#ifndef ioremap_wc
-#define ioremap_wc ioremap_nocache
-#endif
-
-static inline void iounmap(void *addr)
-{
-}
-
-#ifndef CONFIG_GENERIC_IOMAP
-static inline void __iomem *ioport_map(unsigned long port, unsigned int nr)
-{
-	return (void __iomem *) port;
-}
-
-static inline void ioport_unmap(void __iomem *p)
-{
-}
-#else /* CONFIG_GENERIC_IOMAP */
-extern void __iomem *ioport_map(unsigned long port, unsigned int nr);
-extern void ioport_unmap(void __iomem *p);
-#endif /* CONFIG_GENERIC_IOMAP */
-
-#define xlate_dev_kmem_ptr(p)	p
-#define xlate_dev_mem_ptr(p)	((void *) (p))
-
-#ifndef virt_to_bus
-static inline unsigned long virt_to_bus(volatile void *address)
-{
-	return ((unsigned long) address);
-}
-
-static inline void *bus_to_virt(unsigned long address)
-{
-	return (void *) address;
-}
-#endif
-
-#define memset_io(a, b, c)	memset(__io_virt(a), (b), (c))
-#define memcpy_fromio(a, b, c)	memcpy((a), __io_virt(b), (c))
-#define memcpy_toio(a, b, c)	memcpy(__io_virt(a), (b), (c))
-
-#endif /* __KERNEL__ */
-
-#endif /* __ASM_GENERIC_IO_H */
+#endif	/* __ASM_MIPS_IO_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
