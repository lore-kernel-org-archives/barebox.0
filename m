Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyiqG-00047d-Iw
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 10:15:53 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 12:14:24 +0200
Message-Id: <1285236866-3674-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285236866-3674-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285236866-3674-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] host: introduce compiler.h to handle host include
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/compiler.h |  107 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/mkimage.c  |   38 +------------------
 2 files changed, 108 insertions(+), 37 deletions(-)
 create mode 100644 scripts/compiler.h

diff --git a/scripts/compiler.h b/scripts/compiler.h
new file mode 100644
index 0000000..f4b1432
--- /dev/null
+++ b/scripts/compiler.h
@@ -0,0 +1,107 @@
+/*
+ * Keep all the ugly #ifdef for system stuff here
+ */
+
+#ifndef __COMPILER_H__
+#define __COMPILER_H__
+
+#include <stddef.h>
+
+#if defined(__BEOS__)	 || \
+    defined(__NetBSD__)  || \
+    defined(__FreeBSD__) || \
+    defined(__sun__)	 || \
+    defined(__APPLE__)
+# include <inttypes.h>
+#elif defined(__linux__) || defined(__WIN32__) || defined(__MINGW32__)
+# include <stdint.h>
+#endif
+
+#include <errno.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <string.h>
+
+#if !defined(__WIN32__) && !defined(__MINGW32__)
+#include <sys/mman.h>
+#include <netinet/in.h>		/* for host / network byte order conversions	*/
+#endif
+
+/* Not all systems (like Windows) has this define, and yes
+ * we do replace/emulate mmap() on those systems ...
+ */
+#ifndef MAP_FAILED
+# define MAP_FAILED ((void *)-1)
+#endif
+
+#include <fcntl.h>
+#ifndef O_BINARY		/* should be define'd on __WIN32__ */
+#define O_BINARY	0
+#endif
+
+#ifdef __linux__
+# include <endian.h>
+# include <byteswap.h>
+#elif defined(__MACH__)
+# include <machine/endian.h>
+typedef unsigned long ulong;
+typedef unsigned int  uint;
+#endif
+
+typedef uint8_t __u8;
+typedef uint16_t __u16;
+typedef uint32_t __u32;
+
+#define uswap_16(x) \
+	((((x) & 0xff00) >> 8) | \
+	 (((x) & 0x00ff) << 8))
+#define uswap_32(x) \
+	((((x) & 0xff000000) >> 24) | \
+	 (((x) & 0x00ff0000) >>  8) | \
+	 (((x) & 0x0000ff00) <<  8) | \
+	 (((x) & 0x000000ff) << 24))
+#define _uswap_64(x, sfx) \
+	((((x) & 0xff00000000000000##sfx) >> 56) | \
+	 (((x) & 0x00ff000000000000##sfx) >> 40) | \
+	 (((x) & 0x0000ff0000000000##sfx) >> 24) | \
+	 (((x) & 0x000000ff00000000##sfx) >>  8) | \
+	 (((x) & 0x00000000ff000000##sfx) <<  8) | \
+	 (((x) & 0x0000000000ff0000##sfx) << 24) | \
+	 (((x) & 0x000000000000ff00##sfx) << 40) | \
+	 (((x) & 0x00000000000000ff##sfx) << 56))
+#if defined(__GNUC__)
+# define uswap_64(x) _uswap_64(x, ull)
+#else
+# define uswap_64(x) _uswap_64(x, )
+#endif
+
+#if __BYTE_ORDER == __LITTLE_ENDIAN
+# define cpu_to_le16(x)		(x)
+# define cpu_to_le32(x)		(x)
+# define cpu_to_le64(x)		(x)
+# define le16_to_cpu(x)		(x)
+# define le32_to_cpu(x)		(x)
+# define le64_to_cpu(x)		(x)
+# define cpu_to_be16(x)		uswap_16(x)
+# define cpu_to_be32(x)		uswap_32(x)
+# define cpu_to_be64(x)		uswap_64(x)
+# define be16_to_cpu(x)		uswap_16(x)
+# define be32_to_cpu(x)		uswap_32(x)
+# define be64_to_cpu(x)		uswap_64(x)
+#else
+# define cpu_to_le16(x)		uswap_16(x)
+# define cpu_to_le32(x)		uswap_32(x)
+# define cpu_to_le64(x)		uswap_64(x)
+# define le16_to_cpu(x)		uswap_16(x)
+# define le32_to_cpu(x)		uswap_32(x)
+# define le64_to_cpu(x)		uswap_64(x)
+# define cpu_to_be16(x)		(x)
+# define cpu_to_be32(x)		(x)
+# define cpu_to_be64(x)		(x)
+# define be16_to_cpu(x)		(x)
+# define be32_to_cpu(x)		(x)
+# define be64_to_cpu(x)		(x)
+#endif
+
+#endif
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index 15812e5..8abd3ac 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -20,51 +20,15 @@
  * MA 02111-1307 USA
  */
 
-#include <errno.h>
-#include <fcntl.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-#ifndef __WIN32__
-#include <netinet/in.h>		/* for host / network byte order conversions	*/
-#endif
-#include <sys/mman.h>
 #include <sys/stat.h>
 #include <time.h>
 #include <unistd.h>
 
-#if defined(__BEOS__) || defined(__NetBSD__) || defined(__APPLE__)
-#include <inttypes.h>
-#endif
-
-#ifdef __WIN32__
-typedef unsigned int __u32;
-
-#define SWAP_LONG(x) \
-	((__u32)( \
-		(((__u32)(x) & (__u32)0x000000ffUL) << 24) | \
-		(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) | \
-		(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) | \
-		(((__u32)(x) & (__u32)0xff000000UL) >> 24) ))
-typedef		unsigned char	uint8_t;
-typedef		unsigned short	uint16_t;
-typedef		unsigned int	uint32_t;
-
-#define     ntohl(a)	SWAP_LONG(a)
-#define     htonl(a)	SWAP_LONG(a)
-#endif	/* __WIN32__ */
-
-#ifndef	O_BINARY		/* should be define'd on __WIN32__ */
-#define O_BINARY	0
-#endif
+#include "compiler.h"
 
 #include "../include/image.h"
 #include "../common/image.c"
 
-#ifndef MAP_FAILED
-#define MAP_FAILED (-1)
-#endif
-
 char *cmdname;
 
 #include "../include/zlib.h"
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
