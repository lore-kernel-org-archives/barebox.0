Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qL-0000MJ-MT
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:36 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D8330DC37B6
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:28 +0100
Message-Id: <1325344898-7076-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 02/12] ARM: import memcpy_from/toio and memset_io from linux
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/io.h |    7 ++++++
 arch/arm/lib/Makefile     |    1 +
 arch/arm/lib/io.c         |   50 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 58 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/lib/io.c

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index ab78be3..e0630eb 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -3,4 +3,11 @@
 
 #include <asm-generic/io.h>
 
+/*
+ * String version of IO memory access ops:
+ */
+extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
+extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
+extern void memset_io(volatile void __iomem *, int, size_t);
+
 #endif	/* __ASM_ARM_IO_H */
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 9383ae1..27a4b88 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= arm.o
+obj-y	+= io.o
 obj-y	+= io-readsb.o
 obj-y	+= io-readsw-armv4.o
 obj-y	+= io-readsl.o
diff --git a/arch/arm/lib/io.c b/arch/arm/lib/io.c
new file mode 100644
index 0000000..abfd887
--- /dev/null
+++ b/arch/arm/lib/io.c
@@ -0,0 +1,50 @@
+#include <module.h>
+#include <linux/types.h>
+#include <io.h>
+
+/*
+ * Copy data from IO memory space to "real" memory space.
+ * This needs to be optimized.
+ */
+void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
+{
+	unsigned char *t = to;
+	while (count) {
+		count--;
+		*t = readb(from);
+		t++;
+		from++;
+	}
+}
+
+/*
+ * Copy data from "real" memory space to IO memory space.
+ * This needs to be optimized.
+ */
+void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
+{
+	const unsigned char *f = from;
+	while (count) {
+		count--;
+		writeb(*f, to);
+		f++;
+		to++;
+	}
+}
+
+/*
+ * "memset" on IO memory space.
+ * This needs to be optimized.
+ */
+void memset_io(volatile void __iomem *dst, int c, size_t count)
+{
+	while (count) {
+		count--;
+		writeb(c, dst);
+		dst++;
+	}
+}
+
+EXPORT_SYMBOL(memcpy_fromio);
+EXPORT_SYMBOL(memcpy_toio);
+EXPORT_SYMBOL(memset_io);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
