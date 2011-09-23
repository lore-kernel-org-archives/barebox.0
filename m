Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004Ow-EC
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:10 +0200
Message-Id: <1316769860-24549-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] introduce asm-generic/io.h
To: barebox@lists.infradead.org

This provides some generic io accessors for architectures which
do not need special handling.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/io.h |  222 ++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 222 insertions(+), 0 deletions(-)
 create mode 100644 include/asm-generic/io.h

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
new file mode 100644
index 0000000..3f0f5a2
--- /dev/null
+++ b/include/asm-generic/io.h
@@ -0,0 +1,222 @@
+/* Generic I/O port emulation, based on MN10300 code
+ *
+ * Copyright (C) 2007 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public Licence
+ * as published by the Free Software Foundation; either version
+ * 2 of the Licence, or (at your option) any later version.
+ */
+#ifndef __ASM_GENERIC_IO_H
+#define __ASM_GENERIC_IO_H
+
+#include <linux/types.h>
+#include <asm/byteorder.h>
+
+/*****************************************************************************/
+/*
+ * readX/writeX() are used to access memory mapped devices. On some
+ * architectures the memory mapped IO stuff needs to be accessed
+ * differently. On the simple architectures, we just read/write the
+ * memory location directly.
+ */
+
+#ifndef __raw_readb
+#define __raw_readb(a)		(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a))
+#endif
+
+#ifndef __raw_readw
+#define __raw_readw(a)		(__chk_io_ptr(a), *(volatile unsigned short __force *)(a))
+#endif
+
+#ifndef __raw_readl
+#define __raw_readl(a)		(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a))
+#endif
+
+#define readb __raw_readb
+#define readw(addr) __le16_to_cpu(__raw_readw(addr))
+#define readl(addr) __le32_to_cpu(__raw_readl(addr))
+
+#ifndef __raw_writeb
+#define __raw_writeb(v,a)	(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a) = (v))
+#endif
+
+#ifndef __raw_writew
+#define __raw_writew(v,a)	(__chk_io_ptr(a), *(volatile unsigned short __force *)(a) = (v))
+#endif
+
+#ifndef __raw_writel
+#define __raw_writel(v,a)	(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a) = (v))
+#endif
+
+#define writeb __raw_writeb
+#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
+#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
+
+#ifdef CONFIG_64BIT
+static inline u64 __raw_readq(const volatile void __iomem *addr)
+{
+	return *(const volatile u64 __force *) addr;
+}
+#define readq(addr) __le64_to_cpu(__raw_readq(addr))
+
+static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
+{
+	*(volatile u64 __force *) addr = b;
+}
+#define writeq(b,addr) __raw_writeq(__cpu_to_le64(b),addr)
+#endif
+
+#ifndef PCI_IOBASE
+#define PCI_IOBASE ((void __iomem *) 0)
+#endif
+
+/*****************************************************************************/
+/*
+ * traditional input/output functions
+ */
+
+static inline u8 inb(unsigned long addr)
+{
+	return readb(addr + PCI_IOBASE);
+}
+
+static inline u16 inw(unsigned long addr)
+{
+	return readw(addr + PCI_IOBASE);
+}
+
+static inline u32 inl(unsigned long addr)
+{
+	return readl(addr + PCI_IOBASE);
+}
+
+static inline void outb(u8 b, unsigned long addr)
+{
+	writeb(b, addr + PCI_IOBASE);
+}
+
+static inline void outw(u16 b, unsigned long addr)
+{
+	writew(b, addr + PCI_IOBASE);
+}
+
+static inline void outl(u32 b, unsigned long addr)
+{
+	writel(b, addr + PCI_IOBASE);
+}
+
+#define inb_p(addr)	inb(addr)
+#define inw_p(addr)	inw(addr)
+#define inl_p(addr)	inl(addr)
+#define outb_p(x, addr)	outb((x), (addr))
+#define outw_p(x, addr)	outw((x), (addr))
+#define outl_p(x, addr)	outl((x), (addr))
+
+#ifndef insb
+static inline void insb(unsigned long addr, void *buffer, int count)
+{
+	if (count) {
+		u8 *buf = buffer;
+		do {
+			u8 x = inb(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef insw
+static inline void insw(unsigned long addr, void *buffer, int count)
+{
+	if (count) {
+		u16 *buf = buffer;
+		do {
+			u16 x = inw(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef insl
+static inline void insl(unsigned long addr, void *buffer, int count)
+{
+	if (count) {
+		u32 *buf = buffer;
+		do {
+			u32 x = inl(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef outsb
+static inline void outsb(unsigned long addr, const void *buffer, int count)
+{
+	if (count) {
+		const u8 *buf = buffer;
+		do {
+			outb(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef outsw
+static inline void outsw(unsigned long addr, const void *buffer, int count)
+{
+	if (count) {
+		const u16 *buf = buffer;
+		do {
+			outw(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef outsl
+static inline void outsl(unsigned long addr, const void *buffer, int count)
+{
+	if (count) {
+		const u32 *buf = buffer;
+		do {
+			outl(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+
+static inline void readsl(const void __iomem *addr, void *buf, int len)
+{
+	insl(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void readsw(const void __iomem *addr, void *buf, int len)
+{
+	insw(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void readsb(const void __iomem *addr, void *buf, int len)
+{
+	insb(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void writesl(const void __iomem *addr, const void *buf, int len)
+{
+	outsl(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void writesw(const void __iomem *addr, const void *buf, int len)
+{
+	outsw(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void writesb(const void __iomem *addr, const void *buf, int len)
+{
+	outsb(addr - PCI_IOBASE, buf, len);
+}
+
+#endif /* __ASM_GENERIC_IO_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
