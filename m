Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ56-0008DJ-41
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:29 +0100
Message-Id: <1418151816-24593-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] ARM: Add U-Boot specific io functions
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

To make it easier to adopt code from U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/io.h | 57 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index ccf1f59..850a99c 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -12,4 +12,61 @@ extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
 extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
 extern void memset_io(volatile void __iomem *, int, size_t);
 
+/*
+ * Clear and set bits in one shot. These macros can be used to clear and
+ * set multiple bits in a register using a single call. These macros can
+ * also be used to set a multiple-bit bit pattern using a mask, by
+ * specifying the mask in the 'clear' parameter and the new bit pattern
+ * in the 'set' parameter.
+ */
+
+#define out_arch(type,endian,a,v)	__raw_write##type(cpu_to_##endian(v),a)
+#define in_arch(type,endian,a)		endian##_to_cpu(__raw_read##type(a))
+
+#define out_le64(a,v)	out_arch(q,le64,a,v)
+#define out_le32(a,v)	out_arch(l,le32,a,v)
+#define out_le16(a,v)	out_arch(w,le16,a,v)
+
+#define in_le64(a)	in_arch(q,le64,a)
+#define in_le32(a)	in_arch(l,le32,a)
+#define in_le16(a)	in_arch(w,le16,a)
+
+#define out_be32(a,v)	out_arch(l,be32,a,v)
+#define out_be16(a,v)	out_arch(w,be16,a,v)
+
+#define in_be32(a)	in_arch(l,be32,a)
+#define in_be16(a)	in_arch(w,be16,a)
+
+#define out_8(a,v)	__raw_writeb(v,a)
+#define in_8(a)		__raw_readb(a)
+
+#define clrbits(type, addr, clear) \
+	out_##type((addr), in_##type(addr) & ~(clear))
+
+#define setbits(type, addr, set) \
+	out_##type((addr), in_##type(addr) | (set))
+
+#define clrsetbits(type, addr, clear, set) \
+	out_##type((addr), (in_##type(addr) & ~(clear)) | (set))
+
+#define clrbits_be32(addr, clear) clrbits(be32, addr, clear)
+#define setbits_be32(addr, set) setbits(be32, addr, set)
+#define clrsetbits_be32(addr, clear, set) clrsetbits(be32, addr, clear, set)
+
+#define clrbits_le32(addr, clear) clrbits(le32, addr, clear)
+#define setbits_le32(addr, set) setbits(le32, addr, set)
+#define clrsetbits_le32(addr, clear, set) clrsetbits(le32, addr, clear, set)
+
+#define clrbits_be16(addr, clear) clrbits(be16, addr, clear)
+#define setbits_be16(addr, set) setbits(be16, addr, set)
+#define clrsetbits_be16(addr, clear, set) clrsetbits(be16, addr, clear, set)
+
+#define clrbits_le16(addr, clear) clrbits(le16, addr, clear)
+#define setbits_le16(addr, set) setbits(le16, addr, set)
+#define clrsetbits_le16(addr, clear, set) clrsetbits(le16, addr, clear, set)
+
+#define clrbits_8(addr, clear) clrbits(8, addr, clear)
+#define setbits_8(addr, set) setbits(8, addr, set)
+#define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
+
 #endif	/* __ASM_ARM_IO_H */
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
