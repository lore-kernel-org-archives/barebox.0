Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-0007zD-JI
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:34 +0200
Message-Id: <1276508921-3264-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] include support for a simple pseudo number generator
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/random.h |    7 +++++++
 lib/Makefile     |    1 +
 lib/random.c     |   22 ++++++++++++++++++++++
 3 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 include/random.h
 create mode 100644 lib/random.c

diff --git a/include/random.h b/include/random.h
new file mode 100644
index 0000000..29911d8
--- /dev/null
+++ b/include/random.h
@@ -0,0 +1,7 @@
+#ifndef __RANDOM_H
+#define __RANDOM_H
+
+void get_random_bytes(char *buf, int len);
+void srand(unsigned int);
+
+#endif /* __RANDOM_H */
diff --git a/lib/Makefile b/lib/Makefile
index b072fb6..4a33aaa 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
 obj-y			+= glob.o
 obj-y			+= notifier.o
 obj-y			+= copy_file.o
+obj-y			+= random.o
 obj-y			+= lzo/
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
diff --git a/lib/random.c b/lib/random.c
new file mode 100644
index 0000000..25315e7
--- /dev/null
+++ b/lib/random.c
@@ -0,0 +1,22 @@
+#include <common.h>
+#include <random.h>
+
+static int random_seed;
+
+static unsigned char rand(void)
+{
+	random_seed = random_seed * 1103515245 + 12345;
+	return (unsigned char)(random_seed / 65536) % 256;
+}
+
+void srand(unsigned int seed)
+{
+	random_seed = seed;
+}
+
+void get_random_bytes(char *buf, int len)
+{
+	while (len--)
+		*buf++ = rand();
+}
+
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
