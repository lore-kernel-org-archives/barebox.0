Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l71Y6-0004VD-CU
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:41:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Feb 2021 20:40:55 +0100
Message-Id: <20210202194059.9466-3-a.fatoum@pengutronix.de>
In-Reply-To: <20210202194059.9466-1-a.fatoum@pengutronix.de>
References: <20210202194059.9466-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/7] asm-generic: define fallback memcpy and memset for device
 I/O
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The Atmel quadspi driver makes use of the memcpy_(to|from)io,
but we don't define them on all platforms. Fix this to allow
for easier porting of kernel code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - squash commit in v1 series that changed same file (Sascha)
---
 include/asm-generic/io.h | 55 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 76e6d0dc1112..a4b0dc4b4337 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -11,6 +11,7 @@
 #ifndef __ASM_GENERIC_IO_H
 #define __ASM_GENERIC_IO_H
 
+#include <linux/string.h> /* for memset() and memcpy() */
 #include <linux/types.h>
 #include <asm/byteorder.h>
 
@@ -424,4 +425,58 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
 
+#define __io_virt(x) ((void __force *)(x))
+
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
+	memset(__io_virt(addr), value, size);
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
+	memcpy(buffer, __io_virt(addr), size);
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
+	memcpy(__io_virt(addr), buffer, size);
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
