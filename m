Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2kz-0008R4-46
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:22 +0200
Message-Id: <20200511072140.29610-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/23] ARM: asm/io.h: fall back to asm-generic out_be32 and
 friends
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the generic implementations in place in asm-generic/io.h, we can
drop the now-duplicate ARM definitions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/io.h | 57 ---------------------------------------
 1 file changed, 57 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 56db5463410e..2d28f018524a 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -12,63 +12,6 @@ extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
 extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
 extern void memset_io(volatile void __iomem *, int, size_t);
 
-/*
- * Clear and set bits in one shot. These macros can be used to clear and
- * set multiple bits in a register using a single call. These macros can
- * also be used to set a multiple-bit bit pattern using a mask, by
- * specifying the mask in the 'clear' parameter and the new bit pattern
- * in the 'set' parameter.
- */
-
-#define out_arch(type,endian,a,v)	__raw_write##type(cpu_to_##endian(v),a)
-#define in_arch(type,endian,a)		endian##_to_cpu(__raw_read##type(a))
-
-#define out_le64(a,v)	out_arch(q,le64,a,v)
-#define out_le32(a,v)	out_arch(l,le32,a,v)
-#define out_le16(a,v)	out_arch(w,le16,a,v)
-
-#define in_le64(a)	in_arch(q,le64,a)
-#define in_le32(a)	in_arch(l,le32,a)
-#define in_le16(a)	in_arch(w,le16,a)
-
-#define out_be32(a,v)	out_arch(l,be32,a,v)
-#define out_be16(a,v)	out_arch(w,be16,a,v)
-
-#define in_be32(a)	in_arch(l,be32,a)
-#define in_be16(a)	in_arch(w,be16,a)
-
-#define out_8(a,v)	__raw_writeb(v,a)
-#define in_8(a)		__raw_readb(a)
-
-#define clrbits(type, addr, clear) \
-	out_##type((addr), in_##type(addr) & ~(clear))
-
-#define setbits(type, addr, set) \
-	out_##type((addr), in_##type(addr) | (set))
-
-#define clrsetbits(type, addr, clear, set) \
-	out_##type((addr), (in_##type(addr) & ~(clear)) | (set))
-
-#define clrbits_be32(addr, clear) clrbits(be32, addr, clear)
-#define setbits_be32(addr, set) setbits(be32, addr, set)
-#define clrsetbits_be32(addr, clear, set) clrsetbits(be32, addr, clear, set)
-
-#define clrbits_le32(addr, clear) clrbits(le32, addr, clear)
-#define setbits_le32(addr, set) setbits(le32, addr, set)
-#define clrsetbits_le32(addr, clear, set) clrsetbits(le32, addr, clear, set)
-
-#define clrbits_be16(addr, clear) clrbits(be16, addr, clear)
-#define setbits_be16(addr, set) setbits(be16, addr, set)
-#define clrsetbits_be16(addr, clear, set) clrsetbits(be16, addr, clear, set)
-
-#define clrbits_le16(addr, clear) clrbits(le16, addr, clear)
-#define setbits_le16(addr, set) setbits(le16, addr, set)
-#define clrsetbits_le16(addr, clear, set) clrsetbits(le16, addr, clear, set)
-
-#define clrbits_8(addr, clear) clrbits(8, addr, clear)
-#define setbits_8(addr, set) setbits(8, addr, set)
-#define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
-
 static inline void *phys_to_virt(unsigned long phys)
 {
 	return (void *)phys;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
