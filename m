Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gZ-0006qh-25
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:53:52 +0200
Message-Id: <20200602085412.16554-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 05/25] include: asm-generic: provide
 (in|out)_(le|be)(16|32) helpers for all archs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

These U-Boot style bitwise operations macros will be needed for
COMPILE_TEST-compiled drivers on platforms except for ARM. Add fallback
definitions there, based on the ARM ones.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bitio.h | 145 ++++++++++++++++++++++++++++++++++++
 1 file changed, 145 insertions(+)
 create mode 100644 include/asm-generic/bitio.h

diff --git a/include/asm-generic/bitio.h b/include/asm-generic/bitio.h
new file mode 100644
index 000000000000..e88dbd7b8527
--- /dev/null
+++ b/include/asm-generic/bitio.h
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#ifndef __ASM_GENERIC_BITIO_H
+#define __ASM_GENERIC_BITIO_H
+
+#include <asm-generic/io.h>
+
+/*
+ * Clear and set bits in one shot. These macros can be used to clear and
+ * set multiple bits in a register using a single call. These macros can
+ * also be used to set a multiple-bit bit pattern using a mask, by
+ * specifying the mask in the 'clear' parameter and the new bit pattern
+ * in the 'set' parameter.
+ */
+
+#ifndef out_arch
+#define out_arch(type,endian,a,v)	__raw_write##type(cpu_to_##endian(v),a)
+#endif
+
+#ifndef in_arch
+#define in_arch(type,endian,a)		endian##_to_cpu(__raw_read##type(a))
+#endif
+
+#ifndef out_le64
+#define out_le64(a,v)	out_arch(q,le64,a,v)
+#endif
+
+#ifndef out_le32
+#define out_le32(a,v)	out_arch(l,le32,a,v)
+#endif
+
+#ifndef out_le16
+#define out_le16(a,v)	out_arch(w,le16,a,v)
+#endif
+
+#ifndef in_le64
+#define in_le64(a)	in_arch(q,le64,a)
+#endif
+
+#ifndef in_le32
+#define in_le32(a)	in_arch(l,le32,a)
+#endif
+
+#ifndef in_le16
+#define in_le16(a)	in_arch(w,le16,a)
+#endif
+
+#ifndef out_be32
+#define out_be32(a,v)	out_arch(l,be32,a,v)
+#endif
+
+#ifndef out_be16
+#define out_be16(a,v)	out_arch(w,be16,a,v)
+#endif
+
+#ifndef in_be32
+#define in_be32(a)	in_arch(l,be32,a)
+#endif
+
+#ifndef in_be16
+#define in_be16(a)	in_arch(w,be16,a)
+#endif
+
+#ifndef out_8
+#define out_8(a,v)	__raw_writeb(v,a)
+#endif
+
+#ifndef in_8
+#define in_8(a)		__raw_readb(a)
+#endif
+
+#ifndef clrbits
+#define clrbits(type, addr, clear) \
+	out_##type((addr), in_##type(addr) & ~(clear))
+#endif
+
+#ifndef setbits
+#define setbits(type, addr, set) \
+	out_##type((addr), in_##type(addr) | (set))
+#endif
+
+#define clrsetbits(type, addr, clear, set) \
+	out_##type((addr), (in_##type(addr) & ~(clear)) | (set))
+
+#ifndef clrbits_be32
+#define clrbits_be32(addr, clear) clrbits(be32, addr, clear)
+#endif
+
+#ifndef setbits_be32
+#define setbits_be32(addr, set) setbits(be32, addr, set)
+#endif
+
+#ifndef clrsetbits_be32
+#define clrsetbits_be32(addr, clear, set) clrsetbits(be32, addr, clear, set)
+#endif
+
+#ifndef clrbits_le32
+#define clrbits_le32(addr, clear) clrbits(le32, addr, clear)
+#endif
+
+#ifndef setbits_le32
+#define setbits_le32(addr, set) setbits(le32, addr, set)
+#endif
+
+#ifndef clrsetbits_le32
+#define clrsetbits_le32(addr, clear, set) clrsetbits(le32, addr, clear, set)
+#endif
+
+#ifndef clrbits_be16
+#define clrbits_be16(addr, clear) clrbits(be16, addr, clear)
+#endif
+
+#ifndef setbits_be16
+#define setbits_be16(addr, set) setbits(be16, addr, set)
+#endif
+
+#ifndef clrsetbits_be16
+#define clrsetbits_be16(addr, clear, set) clrsetbits(be16, addr, clear, set)
+#endif
+
+#ifndef clrbits_le16
+#define clrbits_le16(addr, clear) clrbits(le16, addr, clear)
+#endif
+
+#ifndef setbits_le16
+#define setbits_le16(addr, set) setbits(le16, addr, set)
+#endif
+
+#ifndef clrsetbits_le16
+#define clrsetbits_le16(addr, clear, set) clrsetbits(le16, addr, clear, set)
+#endif
+
+#ifndef clrbits_8
+#define clrbits_8(addr, clear) clrbits(8, addr, clear)
+#endif
+
+#ifndef setbits_8
+#define setbits_8(addr, set) setbits(8, addr, set)
+#endif
+
+#ifndef clrsetbits_8
+#define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
+#endif
+
+#endif /* __ASM_GENERIC_IO_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
