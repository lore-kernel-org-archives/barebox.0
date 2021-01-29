Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5WOv-0003Nc-Qu
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 16:13:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 17:11:10 +0100
Message-Id: <20210129161116.9971-2-a.fatoum@pengutronix.de>
In-Reply-To: <20210129161116.9971-1-a.fatoum@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/8] asm-generic: define fallback memcpy and memset for device
 I/O
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The Atmel quadspi driver makes use of the memcpy_(to|from)io,
but we don't define them on all platforms. Fix this to allow
for easier porting of kernel code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/io.h | 53 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 76e6d0dc1112..150a97645b6b 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -11,6 +11,7 @@
 #ifndef __ASM_GENERIC_IO_H
 #define __ASM_GENERIC_IO_H
 
+#include <linux/string.h> /* for memset() and memcpy() */
 #include <linux/types.h>
 #include <asm/byteorder.h>
 
@@ -424,4 +425,56 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
 
+#ifndef memset_io
+#define memset_io memset_io
+/**
+ * memset_io	Set a range of I/O memory to a constant value
+ * @addr:	The beginning of the I/O-memory range to set
+ * @val:	The value to set the memory to
+ * @count:	The number of bytes to set
+ *
+ * Set a range of I/O memory to a given value.
+ */
+static inline void memset_io(volatile void __iomem *addr, int value,
+			     size_t size)
+{
+	memset(IOMEM(addr), value, size);
+}
+#endif
+
+#ifndef memcpy_fromio
+#define memcpy_fromio memcpy_fromio
+/**
+ * memcpy_fromio	Copy a block of data from I/O memory
+ * @dst:		The (RAM) destination for the copy
+ * @src:		The (I/O memory) source for the data
+ * @count:		The number of bytes to copy
+ *
+ * Copy a block of data from I/O memory.
+ */
+static inline void memcpy_fromio(void *buffer,
+				 const volatile void __iomem *addr,
+				 size_t size)
+{
+	memcpy(buffer, IOMEM(addr), size);
+}
+#endif
+
+#ifndef memcpy_toio
+#define memcpy_toio memcpy_toio
+/**
+ * memcpy_toio		Copy a block of data into I/O memory
+ * @dst:		The (I/O memory) destination for the copy
+ * @src:		The (RAM) source for the data
+ * @count:		The number of bytes to copy
+ *
+ * Copy a block of data to I/O memory.
+ */
+static inline void memcpy_toio(volatile void __iomem *addr, const void *buffer,
+			       size_t size)
+{
+	memcpy(IOMEM(addr), buffer, size);
+}
+#endif
+
 #endif /* __ASM_GENERIC_IO_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
