Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTgSo-0002Mf-4F
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 21:04:10 +0000
Received: by mail-fx0-f49.google.com with SMTP id s1so997225fab.36
 for <barebox@lists.infradead.org>; Thu, 24 Nov 2011 13:04:09 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu, 24 Nov 2011 21:46:32 +0100
Message-Id: <1322167594-22499-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1322167594-22499-1-git-send-email-franck.jullien@gmail.com>
References: <1322167594-22499-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/3] crypto: Add crc7 function
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

This function in used by the MCI over SPI driver.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 crypto/Kconfig  |    3 ++
 crypto/Makefile |    1 +
 crypto/crc7.c   |   63 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/crc7.h  |   14 ++++++++++++
 4 files changed, 81 insertions(+), 0 deletions(-)
 create mode 100644 crypto/crc7.c
 create mode 100644 include/crc7.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index a391ae6..a6fc1b8 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -4,6 +4,9 @@ config CRC32
 config CRC16
 	bool
 
+config CRC7
+	bool
+
 menuconfig DIGEST
 	bool "Digest                        "
 
diff --git a/crypto/Makefile b/crypto/Makefile
index 955a66d..7c5b035 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_CRC32)	+= crc32.o
 obj-$(CONFIG_CRC16)	+= crc16.o
+obj-$(CONFIG_CRC7)	+= crc7.o
 obj-$(CONFIG_MD5)	+= md5.o
 obj-$(CONFIG_SHA1)	+= sha1.o
 obj-$(CONFIG_SHA224)	+= sha2.o
diff --git a/crypto/crc7.c b/crypto/crc7.c
new file mode 100644
index 0000000..8022199
--- /dev/null
+++ b/crypto/crc7.c
@@ -0,0 +1,63 @@
+/*
+ *      crc7.c
+ *
+ * This source code is licensed under the GNU General Public License,
+ * Version 2. See the file COPYING for more details.
+ */
+
+#include <common.h>
+#include <crc7.h>
+
+
+/* Table for CRC-7 (polynomial x^7 + x^3 + 1) */
+const u8 crc7_syndrome_table[256] = {
+	0x00, 0x09, 0x12, 0x1b, 0x24, 0x2d, 0x36, 0x3f,
+	0x48, 0x41, 0x5a, 0x53, 0x6c, 0x65, 0x7e, 0x77,
+	0x19, 0x10, 0x0b, 0x02, 0x3d, 0x34, 0x2f, 0x26,
+	0x51, 0x58, 0x43, 0x4a, 0x75, 0x7c, 0x67, 0x6e,
+	0x32, 0x3b, 0x20, 0x29, 0x16, 0x1f, 0x04, 0x0d,
+	0x7a, 0x73, 0x68, 0x61, 0x5e, 0x57, 0x4c, 0x45,
+	0x2b, 0x22, 0x39, 0x30, 0x0f, 0x06, 0x1d, 0x14,
+	0x63, 0x6a, 0x71, 0x78, 0x47, 0x4e, 0x55, 0x5c,
+	0x64, 0x6d, 0x76, 0x7f, 0x40, 0x49, 0x52, 0x5b,
+	0x2c, 0x25, 0x3e, 0x37, 0x08, 0x01, 0x1a, 0x13,
+	0x7d, 0x74, 0x6f, 0x66, 0x59, 0x50, 0x4b, 0x42,
+	0x35, 0x3c, 0x27, 0x2e, 0x11, 0x18, 0x03, 0x0a,
+	0x56, 0x5f, 0x44, 0x4d, 0x72, 0x7b, 0x60, 0x69,
+	0x1e, 0x17, 0x0c, 0x05, 0x3a, 0x33, 0x28, 0x21,
+	0x4f, 0x46, 0x5d, 0x54, 0x6b, 0x62, 0x79, 0x70,
+	0x07, 0x0e, 0x15, 0x1c, 0x23, 0x2a, 0x31, 0x38,
+	0x41, 0x48, 0x53, 0x5a, 0x65, 0x6c, 0x77, 0x7e,
+	0x09, 0x00, 0x1b, 0x12, 0x2d, 0x24, 0x3f, 0x36,
+	0x58, 0x51, 0x4a, 0x43, 0x7c, 0x75, 0x6e, 0x67,
+	0x10, 0x19, 0x02, 0x0b, 0x34, 0x3d, 0x26, 0x2f,
+	0x73, 0x7a, 0x61, 0x68, 0x57, 0x5e, 0x45, 0x4c,
+	0x3b, 0x32, 0x29, 0x20, 0x1f, 0x16, 0x0d, 0x04,
+	0x6a, 0x63, 0x78, 0x71, 0x4e, 0x47, 0x5c, 0x55,
+	0x22, 0x2b, 0x30, 0x39, 0x06, 0x0f, 0x14, 0x1d,
+	0x25, 0x2c, 0x37, 0x3e, 0x01, 0x08, 0x13, 0x1a,
+	0x6d, 0x64, 0x7f, 0x76, 0x49, 0x40, 0x5b, 0x52,
+	0x3c, 0x35, 0x2e, 0x27, 0x18, 0x11, 0x0a, 0x03,
+	0x74, 0x7d, 0x66, 0x6f, 0x50, 0x59, 0x42, 0x4b,
+	0x17, 0x1e, 0x05, 0x0c, 0x33, 0x3a, 0x21, 0x28,
+	0x5f, 0x56, 0x4d, 0x44, 0x7b, 0x72, 0x69, 0x60,
+	0x0e, 0x07, 0x1c, 0x15, 0x2a, 0x23, 0x38, 0x31,
+	0x46, 0x4f, 0x54, 0x5d, 0x62, 0x6b, 0x70, 0x79
+};
+
+/**
+ * crc7 - update the CRC7 for the data buffer
+ * @crc:     previous CRC7 value
+ * @buffer:  data pointer
+ * @len:     number of bytes in the buffer
+ * Context: any
+ *
+ * Returns the updated CRC7 value.
+ */
+u8 crc7(u8 crc, const u8 *buffer, size_t len)
+{
+	while (len--)
+		crc = crc7_byte(crc, *buffer++);
+	return crc;
+}
+EXPORT_SYMBOL(crc7);
diff --git a/include/crc7.h b/include/crc7.h
new file mode 100644
index 0000000..0c41cc3
--- /dev/null
+++ b/include/crc7.h
@@ -0,0 +1,14 @@
+#ifndef _LINUX_CRC7_H
+#define _LINUX_CRC7_H
+#include <common.h>
+
+extern const u8 crc7_syndrome_table[256];
+
+static inline u8 crc7_byte(u8 crc, u8 data)
+{
+	return crc7_syndrome_table[(crc << 1) ^ data];
+}
+
+extern u8 crc7(u8 crc, const u8 *buffer, size_t len);
+
+#endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
